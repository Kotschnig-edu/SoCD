/* ----------------------------------------------------------------------------
 *  Lab 06 - 7-segment and LED driver
 *    SEG7 driver @ 0x44A00000 (APB)
 *    LED  driver @ 0x44A10000 (AHB)
 * ------------------------------------------------------------------------- */

#include "xil_io.h"
#include "xil_types.h"
#include "sleep.h"

/* 7-segment driver (seg7_top.sv) */
#define SEG7_CTL   0x44A00000u  /* [0]    enable                        */
#define SEG7_VAL   0x44A00004u  /* [15:0] 4 BCD digits, digit 0 = right */
#define SEG7_DIM   0x44A00008u  /* [3:0]  0 = off ... 15 = full         */

/* LED driver (ledcntrl_top.sv) */
#define LED_CTL    0x44A10010u  /* [15:0] LED enable mask               */
#define LED_CFG    0x44A10014u  /* [7:0] duty/256, [23:8] f = 1MHz/freq */

/* 4.1 Display content: decimal number 0..9999 */
static void seg7_show(u32 number)
{
    u32 val = 0;

    for (u32 i = 0; i < 4; i++) {
        val |= (number % 10u) << (4u * i);
        number /= 10u;
    }
    Xil_Out32(SEG7_VAL, val);
}

/* 4.2 LED dimming: brightness 0..255 of the LEDs in mask */
static void led_dim(u16 mask, u8 duty)
{
    Xil_Out32(LED_CFG, (1000u << 8) | duty);  /* 1 kHz PWM */
    Xil_Out32(LED_CTL, mask);
}

/* 4.3 Random number (xorshift32) */
static u32 rng_state = 0x12345678u;

static u32 random_next(void)
{
    rng_state ^= rng_state << 13;
    rng_state ^= rng_state >> 17;
    rng_state ^= rng_state << 5;
    return rng_state;
}

int main(void)
{
    Xil_Out32(SEG7_DIM, 15u);
    Xil_Out32(SEG7_CTL, 1u);

    while (1) {
        u32 rnd = random_next() % 10000u;

        seg7_show(rnd);                       /* random number on display */
        led_dim(0xFFFFu, (u8)(rnd & 0xFFu));  /* LED brightness follows it */
        sleep(1);
    }
}
