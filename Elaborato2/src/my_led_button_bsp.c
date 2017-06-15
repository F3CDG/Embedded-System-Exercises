/*
 * led_pb.c
 *
 *  Created on: 11 giu 2017
 *      Author: ciro
 */
#include "my_led_button_bsp.h"
#include <unistd.h>

short int on=0;
short int first_exe=1;
short int count=0;

void init(short int function){

	//Abilitazione a GPIOA e GPIOD
	RCC->AHB1ENR |= 1 | (1<<3);

	//Abilitazione al Timer2
	RCC->APB1ENR|=1;

	//Si indica al Timer2 che solo un overflow/underflow può generare l'interruzione
	TIM2->CR1|=(1<<2);

	//Conteggio da effettuare (0.5 secondi)
	TIM2->ARR=8000000;

	//Non si utilizza il prescaler (divisione per 1)
	TIM2->PSC=0;

	//Azzeramento conteggio
	TIM2->CNT=0;

	//Valore di reset al moder di GPIOA, si indica a PA0 di funzionare da input
	GPIOA->MODER=0xA8000000;

	//Si indica ai pin 15-14-13-12 di PD di funzionare come output
	GPIOD->MODER|=(0x55<<24);

	//Si spengono eventualmente i led accesi da un programma eseguito in precedenza
	GPIOD->ODR=0x0;


}

void toggleAll(){

	if((GPIOA->IDR&1)==1){
		while((GPIOA->IDR&1)==1);
		if(!on){
			GPIOD->ODR|=(0xF<<15);
			on=1;
		}
		else{
			GPIOD->ODR=0x0;
			on=0;
		}
	}

}

void counter(){
	if((GPIOA->IDR&1)==1){
		while((GPIOA->IDR&1)==1);
		count++;
		GPIOD->ODR=count<<12;
		if(count==16)
			GPIOD->ODR=0;
	}

}

void supercar(){
	TIM2->CR1=1; //Start conteggio a timer2
	if((TIM2->SR&1)==1){//Se l'ultimo bit dello status register è pari a 1 allora il conteggio è terminato
		TIM2->SR=0; //Si resetta l'ultimo bit per il prossimo conteggio
		if(!on){
			if(first_exe){
				GPIOD->ODR=(1<<12);
				first_exe=0;
			}
			else
				GPIOD->ODR=GPIOD->ODR<<1;
			if(GPIOD->ODR==0x8000)
				on=1;
		}
		else{
			GPIOD->ODR=GPIOD->ODR>>1;
			if(GPIOD->ODR==0x1000)
				on=0;
		}
	}


}

