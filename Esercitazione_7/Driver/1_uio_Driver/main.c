/**
  ******************************************************************************
  * @file    	uiodriver.c
  * @authors	Colella Gianni - Guida Ciro - Lombardi Daniele / Group IV - Sistemi Embedded 2016-2017
  * @version 	V1.0
  * @date    	24-June-2017
  * @brief   	driver "uiodriver" to control gpio
  ******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "uiodriver_header.h"

int main(int argc, char *argv[]){

	int r_w=READ;	/*!< Saves operation's type to do with GPIO */
	int r_or_w_value = 0;	/*!< Saves read/write value from/on GPIO */
	int ret_parse;	/*!< Returned value from parse_command function */

	char* uio_dev;		/*!< uio device file name */
	void *virt_addr;	/*!< Virtual address of <uio_dev> */

	/*! Check if parse_command function returns error */
	if((ret_parse=parse_command(argc,argv,&uio_dev,&r_w,&r_or_w_value))==1)
		return 0;
	else
		if(ret_parse==-1)
			return -1;
	
	/*! Check if open_device function returns error */
	if(open_device(uio_dev,&virt_addr)==-1){
		printf("nodriver aborted!\n");
		return -1;
	}
	
	/*! Calls conveniently read_gpio or write_gpio function */
	if (r_w == READ) read_gpio(&r_or_w_value,virt_addr);
	else write_gpio(r_or_w_value,uio_dev,virt_addr);
	
	close_device(virt_addr);

	return 0;
}
