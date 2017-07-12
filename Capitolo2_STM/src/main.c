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
#include "my_led_button_bsp.h"

#define TOGGLEALL 0
#define COUNTER 1
#define SUPERCAR 2

void loop(short int);

int main(void)
{
	init();
	for(;;) loop(SUPERCAR);
	return 1;
}


void loop(short int f){

	switch(f){

		case TOGGLEALL:
			toggleAll();
			break;

		case COUNTER:
			counter();
			break;

		case SUPERCAR:
			supercar();
			break;

		default:
			break;
	}

}
