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
#include "stm32f4xx_hal.h"

short int count=-1;
void setup();
void loop();

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin){
	count++;
	GPIOD->ODR=count<<12;
	if(count==15)
		count=-1;
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

	HAL_PWR_EnterSLEEPMode (PWR_MAINREGULATOR_ON, PWR_SLEEPENTRY_WFI);

}

