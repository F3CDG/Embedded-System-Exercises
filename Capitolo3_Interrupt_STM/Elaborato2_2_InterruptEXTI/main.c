/**
  ******************************************************************************
  * @file    	main.c
  * @company	Group IV - Sistemi Embedded 2016-2017
  * @authors	Colella Gianni - Guida Ciro - Lombardi Daniele
  * @version 	V1.0
  * @date    	19-June-2017
  * @brief   	default main.c
  ******************************************************************************
*/

#include "stm32f4xx.h"
#include "stm32f4_discovery.h"
#include "header.h"

void setup();
void loop();

short int count=-1;

void EXTI1_IRQHandler(){
	count++;
	GPIOD->ODR=count<<12;
	if(count==15)
		count=-1;
	NVIC_ClearPendingIRQ(EXTI1_IRQn);
	__HAL_GPIO_EXTI_CLEAR_IT(GPIO_PIN_1);
}

int main(void)
{

	setup();
	for(;;)loop();
}

void setup(){

	init_pin1C();
	BSP_LED_Init(LED3);
	BSP_LED_Init(LED4);
	BSP_LED_Init(LED5);
	BSP_LED_Init(LED6);

}

void loop(){}
