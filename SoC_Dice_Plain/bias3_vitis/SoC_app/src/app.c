/* ----------------------------------------------------------------------------
 *  Lab 06 - 7-segment and LED driver (Vitis application)
 *
 *  Hardware (see basys3_top.sv / soc_top.bd):
 *    SEG7 driver  @ 0x44A00000 (APB, apb_0)
 *    LED  driver  @ 0x44A10000 (AHB, ahb_0)
 *    AXI GPIO     @ XPAR_AXI_GPIO_0_BASEADDR  (inputs only)
 *                   [15:8] = sw[7:0], [16] = btnU, [17] = btnD (debounced)
 *    AXI Timer    @ XPAR_AXI_TIMER_0_BASEADDR (free running, 100 MHz)
 *
 *  Operation:
 *    btnU      roll the dice (short animation, then the result 1..6)
 *    btnD      reset the roll counter
 *    sw[3:0]   brightness of the 7-segment display (0 = default/full)
 *    sw[7:4]   brightness of the LEDs              (0 = default/full)
 *
 *    Display:  digits 3..2 = roll counter (00..99), digit 0 = dice value
 *    LEDs:     dice value as a bar (value = number of LEDs on)
 * ------------------------------------------------------------------------- */

#include "xparameters.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xstatus.h"
#include "xgpio.h"
#include "xtmrctr.h"

/* ------------------------------------------------------------------------- */
/* Register map                                                              */
/* ------------------------------------------------------------------------- */

/* 7-segment driver (seg7_top.sv) */
#define SEG7_BASEADDR      0x44A00000u
#define SEG7_CTL           (SEG7_BASEADDR + 0x0u) /* [0]    enable              */
#define SEG7_VAL           (SEG7_BASEADDR + 0x4u) /* [15:0] 4 BCD digits,       */
                                                  /* DP3..0 at bit 28/24/20/16  */
#define SEG7_DIM           (SEG7_BASEADDR + 0x8u) /* [3:0]  0 = off, 15 = full  */

#define SEG7_DIGITS        4u
#define SEG7_BLANK         0xFu                   /* values > 9 are not lit     */
#define SEG7_DIM_MAX       15u

/* LED driver (ledcntrl_top.sv) */
#define LED_BASEADDR       0x44A10000u
#define LED_INT_CLR        (LED_BASEADDR + 0x00u)
#define LED_INT_MASK       (LED_BASEADDR + 0x04u)
#define LED_INT_STAT       (LED_BASEADDR + 0x08u)
#define LED_INT_MASKED     (LED_BASEADDR + 0x0Cu)
#define LED_CTL            (LED_BASEADDR + 0x10u) /* [15:0] LED enable mask     */
#define LED_CFG            (LED_BASEADDR + 0x14u) /* [7:0] duty, [23:8] freq    */

#define LED_PWM_FREQ_DIV   1000u                  /* 1 MHz / 1000 = 1 kHz PWM   */
#define LED_DUTY_MAX       255u

/* GPIO */
#define GPIO_CHANNEL       1
#define GPIO_DIR_ALL_IN    0xFFFFFFFFu
#define GPIO_SW_SHIFT      8
#define GPIO_BTN_U         (1u << 16)
#define GPIO_BTN_D         (1u << 17)

/* Timer */
#define TMR_CNT            0
#define TMR_TICKS_PER_US   (XPAR_AXI_TIMER_0_CLOCK_FREQUENCY / 1000000u)

/* ------------------------------------------------------------------------- */
/* Driver instances                                                          */
/* ------------------------------------------------------------------------- */
static XGpio   gpio;
static XTmrCtr timer;

/* ------------------------------------------------------------------------- */
/* Timer helpers                                                             */
/* ------------------------------------------------------------------------- */
static u32 timer_now(void)
{
    return XTmrCtr_GetValue(&timer, TMR_CNT);
}

static void delay_us(u32 us)
{
    u32 start = timer_now();
    u32 ticks = us * TMR_TICKS_PER_US;

    /* unsigned subtraction also works across the 32-bit wrap */
    while ((u32)(timer_now() - start) < ticks) {
    }
}

/* ------------------------------------------------------------------------- */
/* 4.1  Display content (7-segment driver)                                   */
/* ------------------------------------------------------------------------- */

/* Switch the display on or off */
static void seg7_enable(int on)
{
    Xil_Out32(SEG7_CTL, on ? 1u : 0u);
}

/* Set the brightness: 0 = off ... 15 = full */
static void seg7_set_dim(u32 level)
{
    if (level > SEG7_DIM_MAX) {
        level = SEG7_DIM_MAX;
    }
    Xil_Out32(SEG7_DIM, level);
}

/* Set the four digits directly: digit[0] is the rightmost one.
 * Each value 0..9 is shown, any other value blanks that digit.
 * dp_mask bit n switches on the decimal point of digit n.             */
static void seg7_set_digits(const u8 digit[SEG7_DIGITS], u8 dp_mask)
{
    u32 val = 0;

    for (u32 i = 0; i < SEG7_DIGITS; i++) {
        val |= (u32)(digit[i] & 0xFu) << (4u * i);
        if (dp_mask & (1u << i)) {
            val |= 1u << (16u + 4u * i);
        }
    }
    Xil_Out32(SEG7_VAL, val);
}

/* Show a decimal number 0..9999, leading zeros are blanked */
static void seg7_show_number(u32 number, u8 dp_mask)
{
    u8 digit[SEG7_DIGITS];

    if (number > 9999u) {
        number = 9999u;
    }
    for (u32 i = 0; i < SEG7_DIGITS; i++) {
        digit[i] = (u8)(number % 10u);
        number  /= 10u;
    }
    for (u32 i = SEG7_DIGITS - 1u; i > 0u; i--) {
        if (digit[i] != 0u) {
            break;
        }
        digit[i] = SEG7_BLANK;
    }
    seg7_set_digits(digit, dp_mask);
}

/* ------------------------------------------------------------------------- */
/* 4.2  LED dimming (LED driver)                                             */
/* ------------------------------------------------------------------------- */

/* Select which of the 16 LEDs are switched on */
static void led_set_mask(u16 mask)
{
    Xil_Out32(LED_CTL, mask);
}

/* Configure the PWM: brightness = duty / 256, f_PWM = 1 MHz / freq_div */
static void led_set_pwm(u8 duty, u16 freq_div)
{
    Xil_Out32(LED_CFG, ((u32)freq_div << 8) | duty);
}

/* Set only the brightness (0 = off ... 255 = full), fixed PWM frequency */
static void led_set_dim(u8 duty)
{
    led_set_pwm(duty, LED_PWM_FREQ_DIV);
}

/* Show a value 0..16 as an LED bar */
static void led_show_bar(u32 count)
{
    if (count > 16u) {
        count = 16u;
    }
    led_set_mask((u16)((1u << count) - 1u));
}

/* ------------------------------------------------------------------------- */
/* 4.3  Random number generation                                             */
/* ------------------------------------------------------------------------- */
static u32 rng_state = 0x1u;

/* Seed the generator; the state must never be 0 */
static void rng_seed(u32 seed)
{
    rng_state = (seed != 0u) ? seed : 0xA5A5A5A5u;
}

/* xorshift32 pseudo random number generator */
static u32 rng_next(void)
{
    u32 x = rng_state;
    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    rng_state = x;
    return x;
}

/* Uniform random number in 1..6 (rejection sampling, no modulo bias) */
static u32 dice_roll(void)
{
    const u32 limit = 0xFFFFFFFFu - (0xFFFFFFFFu % 6u);
    u32 r;

    do {
        r = rng_next();
    } while (r >= limit);
    return (r % 6u) + 1u;
}

/* Show roll counter (digits 3..2) and dice value (digit 0) */
static void dice_display(u32 rolls, u32 value)
{
    u8 digit[SEG7_DIGITS];

    digit[0] = (u8)value;
    digit[1] = SEG7_BLANK;
    digit[2] = (u8)(rolls % 10u);
    digit[3] = (u8)((rolls / 10u) % 10u);
    seg7_set_digits(digit, 1u << 2);    /* DP after the counter */
    led_show_bar((value <= 6u) ? value : 0u);
}

/* Roll with a short animation; the timer is added to the seed so the
 * moment of the button press (human timing) adds entropy.             */
static u32 dice_roll_animated(u32 rolls)
{
    u32 value = 0;

    rng_seed(rng_state ^ timer_now());
    for (u32 step = 0; step < 12u; step++) {
        value = dice_roll();
        dice_display(rolls, value);
        delay_us(30000u + step * 8000u);   /* slows down like a real dice */
    }
    return value;
}

/* ------------------------------------------------------------------------- */
/* Main                                                                      */
/* ------------------------------------------------------------------------- */

/* Switch value 0 means "default", otherwise scale to the register range */
static u32 sw_to_seg7_dim(u32 sw4)
{
    return (sw4 == 0u) ? SEG7_DIM_MAX : sw4;
}

static u8 sw_to_led_duty(u32 sw4)
{
    return (sw4 == 0u) ? LED_DUTY_MAX : (u8)(sw4 * 17u);  /* 15 * 17 = 255 */
}

int main(void)
{
    u32 btn_old = 0;
    u32 sw_old  = 0xFFFFFFFFu;  /* force an initial update */
    u32 rolls   = 0;
    u32 value   = 0;

    if (XGpio_Initialize(&gpio, XPAR_AXI_GPIO_0_BASEADDR) != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XGpio_SetDataDirection(&gpio, GPIO_CHANNEL, GPIO_DIR_ALL_IN);

    if (XTmrCtr_Initialize(&timer, XPAR_AXI_TIMER_0_BASEADDR) != XST_SUCCESS) {
        return XST_FAILURE;
    }
    XTmrCtr_SetOptions(&timer, TMR_CNT, XTC_AUTO_RELOAD_OPTION);
    XTmrCtr_SetResetValue(&timer, TMR_CNT, 0u);
    XTmrCtr_Start(&timer, TMR_CNT);

    /* Initial state: display "8888" as a lamp test, then all off */
    led_set_dim(LED_DUTY_MAX);
    led_set_mask(0xFFFFu);
    seg7_set_dim(SEG7_DIM_MAX);
    seg7_show_number(8888u, 0xFu);
    seg7_enable(1);
    delay_us(500000u);
    led_set_mask(0x0000u);
    dice_display(rolls, SEG7_BLANK);

    while (1) {
        u32 in  = XGpio_DiscreteRead(&gpio, GPIO_CHANNEL);
        u32 sw  = (in >> GPIO_SW_SHIFT) & 0xFFu;
        u32 btn = in & (GPIO_BTN_U | GPIO_BTN_D);
        u32 pressed = btn & ~btn_old;          /* rising edge */
        btn_old = btn;

        /* Brightness: only write on a change, keeps the ILA capture readable */
        if (sw != sw_old) {
            seg7_set_dim(sw_to_seg7_dim(sw & 0xFu));
            led_set_dim(sw_to_led_duty(sw >> 4));
            sw_old = sw;
        }

        if (pressed & GPIO_BTN_U) {
            rolls = (rolls + 1u) % 100u;
            value = dice_roll_animated(rolls);
            dice_display(rolls, value);
        }

        if (pressed & GPIO_BTN_D) {
            rolls = 0;
            value = SEG7_BLANK;
            dice_display(rolls, value);
        }
    }
}
