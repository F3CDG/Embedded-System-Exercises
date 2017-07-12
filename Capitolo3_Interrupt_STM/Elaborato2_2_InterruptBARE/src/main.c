/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/


#include "stm32f4xx.h"
#include "stm32f4_discovery.h"
#include "stm32f4xx_hal_gpio.h"

short int count=-1;
void setup();
void loop();

void EXTI0_IRQHandler(){
	NVIC_ClearPendingIRQ(EXTI0_IRQn);
	while(GPIOA->IDR&1);
	  count++;
	  GPIOD->ODR=count<<12;
	  if(count==15)
	    count=-1;

	__HAL_GPIO_EXTI_CLEAR_IT(GPIO_PIN_0);
}

int main(void)
{
	setup();
	for(;;) loop();
	return 1;
}

void setup(){
	HAL_Init();
	BSP_LED_Init(LED3);
	BSP_LED_Init(LED4);
	BSP_LED_Init(LED5);
	BSP_LED_Init(LED6);
	BSP_PB_Init(BUTTON_KEY, BUTTON_MODE_EXTI);
}

void loop(){

}

