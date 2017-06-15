/*
 * led_pb.h
 *
 *  Created on: 11 giu 2017
 *      Author: ciro
 */

#ifndef MY_LED_BUTTON_BSP_H_
#define MY_LED_BUTTON_BSP_H_

#include "stm32f407xx.h"

void init();
void toggleAll();
void supercar();
void counter();
void button_debouncer();



#endif /* MY_LED_BUTTON_BSP_H_ */
