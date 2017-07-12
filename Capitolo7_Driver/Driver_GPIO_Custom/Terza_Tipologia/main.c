/**
  ******************************************************************************
  * @file    	main.c
  * @authors	Colella Gianni - Guida Ciro - Lombardi Daniele / Group IV - Sistemi Embedded 2016-2017
  * @version 	V1.0
  * @date    	5-July-2017
  * @brief   	driver "mygpio_uiointdriver" to control gpio
  ******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "mygpio_uiointdriver.h"

int main(int argc, char *argv[]){
	/*!< First step */
	/*! Structure and variable declaration */
	mygpio_TypeDef mygpio; /* Structure associated to GPIO custom peripheral */
	int ret_parse;		/* Returned value from mygpio_parse_command function */
	/*!< Second step */
	/*! mygpio_parse_command function is called to parse all argument passed to driver mygpio_nodriver */
	/* Check if parse_command function returns error */
	if((ret_parse=mygpio_parse_command(argc,argv,&mygpio))==1)
		return 0;
	else
		if(ret_parse==-1)
			return -1;
	
	/*!< Third step */
	/*! mygpio_open_memory function is called to achieve gpio virtual address */
	/* Check if mygpio_open_memory function returns error */
	if(mygpio_open_memory(&mygpio)==-1){
		printf("mygpio_uiointdriver aborted!\n");
		return -1;
	}
	//
	/*!< Fourth step*/
	/*! mygpio_read_gpio is called if r_w variable is READ, otherwise is called write_gpio function */
	if ((mygpio.r_w) == READ) {
		if(mygpio_read_gpio(&mygpio)==-1)
			return -1;
	}
	else mygpio_write_gpio(&mygpio);
	/*!< First step */
	/*! mygpio_close_memory function is called to close memory file and delete file descriptor */
	mygpio_close_memory(&mygpio);

	return 0;
}
