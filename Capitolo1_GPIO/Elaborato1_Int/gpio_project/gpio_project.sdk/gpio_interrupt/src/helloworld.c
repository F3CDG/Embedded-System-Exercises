/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "gpio_custom.h"


int main()
{
    init_platform();
    uint32_t ret=0x0;
    gpio_custom_TypeDef gpio;

    gpio_custom_Init(&gpio, GPIO_BASE);
    while(1){
    gpio_custom_SetEnable(&gpio,0xF,HIGH);
    ret = gpio_custom_GetEnable(&gpio,0xF);

    if(ret!=0){
    	printf("OK");
    	ret=0;
    }

    gpio_custom_SetMode(&gpio, 0xF, HIGH);
    ret = gpio_custom_GetMode(&gpio,0xF);

    if(ret!=0){
        	printf("OK");
        	ret=0;
    }

    //gpio_custom_SetValue(&gpio, 0xA, HIGH);
    ret = gpio_custom_GetValue(&gpio,0xF);

    if(ret!=0){
        	printf("OK");
        	ret=0;
        }

    gpio_custom_SetGlobalInterrupt(&gpio);
    ret = gpio_custom_GetGlobalInterrupt(&gpio);


    if(ret!=0){
        	printf("OK");
        	ret=0;
        }

    gpio_custom_SetInterruptMask(&gpio, 0x2, HIGH);
    ret = gpio_custom_GetInterruptMask(&gpio,0xF);

    if(ret!=0){
        	printf("OK");
        	ret=0;
        }

    //gpio_custom_SetStatusInterrupt(&gpio, 0x2, HIGH);
    ret = gpio_custom_GetStatusInterrupt(&gpio, 0xF);

    if(ret!=0){
        	printf("OK");
        	ret=0;
        }
    gpio_custom_SetAckInterrupt(&gpio, 0x2, HIGH);
    }

    cleanup_platform();
    return 0;
}
