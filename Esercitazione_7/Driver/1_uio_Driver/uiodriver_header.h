/**
  ******************************************************************************
  * @file    	uiodriver.h
  * @author	Colella Gianni - Guida Ciro - Lombardi Daniele
  *		Group IV - Sistemi Embedded 2016-2017
  * @version 	V1.0
  * @date    	24-June-2017
  * @brief   	library 'uiodriver' for GPIO
  ******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <errno.h>

/* Colour MACRO --------------------------------------------------------------*/
#define RESET		"\033[0m"		/*!< Reset colour */
#define GREEN   	"\033[32m"     		/*!< Green colour */
#define BOLDWHITE	"\033[1m\033[37m"	/*!< Bold White colour */

/* GPIO operation MACRO ------------------------------------------------------*/
#define READ 		0
#define WRITE		1

/* GPIO page MACRO ------------------------------------------------------*/
#define GPIO_MAP_SIZE 		0x10000		/*!< Bit mask to extract page address, without offset */
#define GPIO_DATA_OFFSET	0x00		/*!< Offset of GPIO_DATA register */
#define GPIO_TRI_OFFSET 	0x04		/*!< Offset of GPIO_TRI register */
#define GPIO2_DATA_OFFSET 	0x00		/*!< Offset of GPIO2_DATA register */
#define GPIO2_TRI_OFFSET 	0x04		/*!< Offset of GPIO2_TRI register */

/* Function prototypes -------------------------------------------------------*/
void usage(char *name);
int parse_command(int argc,char **argv,char** uiod,int* r_w,int* value);
int open_device(char* uiod, void** virtual_address);
void read_gpio(int* value,void* virtual_address);
void write_gpio(int value,char* uiod,void* virtual_address);
void close_device(void* virtual_address);
