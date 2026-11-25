/* ----------------------------------------------------------------------------
 *  Lab 07 - SoC to UART
 *    SEG7 driver @ 0x44A00000 (APB)
 *    LED  driver @ 0x44A10000 (AHB)
 *    AXI GPIO    @ 0x40000000 (channel 1: version, channel 2: BTNU, SW3..SW0)
 *    AXI UART    @ 0x40600000 (9600 baud)
 * ------------------------------------------------------------------------- */

#include "xil_io.h"
#include "xil_types.h"
#include "xparameters.h"
#include "xuartlite_l.h"

/* 7-segment driver (seg7_top.sv) */
#define SEG7_CTL   0x44A00000  /* [0]    enable                        */
#define SEG7_VAL   0x44A00004  /* [15:0] 4 BCD digits, digit 0 = right */
#define SEG7_DIM   0x44A00008  /* [3:0]  0 = off ... 15 = full         */

/* LED driver (ledcntrl_top.sv) */
#define LED_CTL    0x44A10010  /* [15:0] LED enable mask               */
#define LED_CFG    0x44A10014  /* [7:0] duty/256, [23:8] f = 1MHz/freq */

/* GPIO (dual channel) */
#define GPIO_DATA  0x40000000  /* channel 1: HW version                */
#define GPIO2_DATA 0x40000008  /* channel 2: [4] BTNU, [3:0] SW3..SW0  */
#define BTNU       0x10

/* UART */
#define UART_BASE  XPAR_AXI_UARTLITE_0_BASEADDR

/* 4.1 Display content: decimal number 0..9999 */
void seg7_show(u32 number)
{
    u32 val = 0;

    for (u32 i = 0; i < 4; i++) {
        val |= (number % 10) << (4 * i);
        number /= 10;
    }
    Xil_Out32(SEG7_VAL, val);
}

/* 4.2 LED dimming: brightness 0..255 of the LEDs in mask */
static void led_dim(u32 mask, u8 duty)
{
    Xil_Out32(LED_CFG, 0x00000000 | (1000 << 8) | duty);  /* 1 kHz PWM */
    Xil_Out32(LED_CTL, mask);
}

/* 4.3 Random number (xorshift32) */
static u32 rng_state = 0x12345678;

static u32 random_next(void)
{
    rng_state ^= rng_state << 13;
    rng_state ^= rng_state >> 17;
    rng_state ^= rng_state << 5;
    return rng_state;
}

/* Lab 07: read the HW version (GPIO channel 1) */
u32 version_read(void)
{
    return Xil_In32(GPIO_DATA);
}

/* Lab 07: send a string from the SoC to the PC */
static void uart_print(const char *s)
{
    while (*s) {
        XUartLite_SendByte(UART_BASE, *s++);
    }
}

int main(void)
{
    u32 btn_old = 0;

    Xil_Out32(SEG7_DIM, 15);
    Xil_Out32(SEG7_CTL, 1);
    Xil_Out32(SEG7_VAL, 0xFFFF);               /* all digits dark */
    led_dim(0x0000FFFF, 128);
    xil_printf("Version: %08x \n ",version_read());
    while (1) {
        u32 in  = Xil_In32(GPIO2_DATA);
        u32 btn = in & BTNU;

        random_next();                         /* button timing makes it random */

        if (btn && !btn_old) {                 /* BTNU pressed */
            u32  val    = 0xFFFF;              /* 0xF = digit dark */
            char line[] = "Dice: ----\r\n";

            for (int i = 0; i < 4; i++) {
                if (in & (1 << i)) {           /* SWi on -> roll digit i */
                    u32 dice = random_next() % 6 + 1;
                    val &= ~(0xF << (4 * i));
                    val |= dice << (4 * i);
                    line[9 - i] = '0' + dice;
                }
            }

            Xil_Out32(SEG7_VAL, val);          /* dice result on display */
            uart_print(line);                  /* dice result to PC      */
        }
        btn_old = btn;
    }
}
