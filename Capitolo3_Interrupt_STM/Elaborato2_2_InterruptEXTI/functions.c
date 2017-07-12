/**
  ******************************************************************************
  * @file    	functions.c
  * @company	Group IV - Sistemi Embedded 2016-2017
  * @authors	Colella Gianni - Guida Ciro - Lombardi Daniele
  * @version 	V1.0
  * @date    	19-June-2017
  * @brief   	function interrupt PIN PC1.
  ******************************************************************************
*/




#include "header.h"
/*
 *
 * @brief	Con questa funzione si da un'interruzione EXT1 da pin PC1 in BARE METAL
 *
 * */
void init_pin1C(){

	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;

	//Si indica che da GPIOB, PB1, arriva un interrupt
	SYSCFG->EXTICR[0] &= 0xFF0F;
	SYSCFG->EXTICR[0] = SYSCFG_EXTICR1_EXTI1_PC;
	//Interupt da GPIOB non mascherato
	EXTI->IMR = (1<<1);

	EXTI->RTSR=(1<<1);
	//__enable_irq();
	NVIC_SetPriority(EXTI1_IRQn,15);
	NVIC_EnableIRQ(EXTI1_IRQn);
}
