/* ----------------------------------------------------------------------------
 *  Lab 06 - 7-segment and LED driver
 *    SEG7 driver @ 0x44A00000 (APB)
 *    LED  driver @ 0x44A10000 (AHB)
 * ------------------------------------------------------------------------- */

#include "xil_io.h"
#include "xil_types.h"
#include "sleep.h"

/* 7-segment driver (seg7_top.sv) */
#define SEG7_CTL   0x44A00000  /* [0]    enable                        */
#define SEG7_VAL   0x44A00004  /* [15:0] 4 BCD digits, digit 0 = right */
#define SEG7_DIM   0x44A00008  /* [3:0]  0 = off ... 15 = full         */

/* LED driver (ledcntrl_top.sv) */
#define LED_CTL    0x44A10010  /* [15:0] LED enable mask               */
#define LED_CFG    0x44A10014  /* [7:0] duty/256, [23:8] f = 1MHz/freq */

/* 4.1 Display content: decimal number 0..9999 */
static void seg7_show(u32 number)
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

int main(void)
{
    Xil_Out32(SEG7_DIM, 15);
    Xil_Out32(SEG7_CTL, 1u);

    while (1) {
        for(int counter = 0; counter < 255; counter = counter + 25)
        {
        u32 rnd = random_next() % 10000;
        seg7_show(0000);                       /* random number on display */
        led_dim(0x0000BEEF, (u8)(255));
        seg7_show(1111);                       /* random number on display */
        led_dim(0x00000000, (u8)(00));
        seg7_show(1234);                       /* random number on display */
        led_dim(0x0000DEAd, (u8)(127));
        seg7_show(9999);                       /* random number on display */
        led_dim(0x0000FAB1, (u8)(128));
        seg7_show(rnd);                       /* random number on display */
        led_dim(0x0000FFFF, (u8)(counter));  /* LED brightness follows it */
        usleep(10000);
        }
    }
}
