#include "xparameters.h"
#include "xgpio.h"
#include "xstatus.h"

#define GPIO_CHANNEL   1
#define DIR_MASK       0xFFFFFF00u   /* 1 = Input, 0 = Output */
#define SW_SHIFT       8
#define LED_MASK       0x000000FFu

int main(void)
{
    XGpio gpio;

    if (XGpio_Initialize(&gpio, XPAR_AXI_GPIO_0_BASEADDR) != XST_SUCCESS) {
        return XST_FAILURE;
    }

    XGpio_SetDataDirection(&gpio, GPIO_CHANNEL, DIR_MASK);

    while (1) {
        u32 sw = (XGpio_DiscreteRead(&gpio, GPIO_CHANNEL) >> SW_SHIFT) & LED_MASK;
        XGpio_DiscreteWrite(&gpio, GPIO_CHANNEL, sw);
    }
}