/**
  ******************************************************************************
  * @file    	uiodriver_function.c
  * @authors	Colella Gianni - Guida Ciro - Lombardi Daniele / Group IV - Sistemi Embedded 2016-2017
  * @version 	V1.0
  * @date    	24-June-2017
  * @brief   	Functions used for 'uiodriver' GPIO
  ******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "uiodriver_header.h"

/**
  * @brief  Describes how 'uiodriver' must be used, specifing all supported options.
  * @param  name: Specifies uiodriver name.
  * @retval None.
  */
void usage(char *name){
	printf("The right way to use this driver is\n");
	printf(BOLDWHITE"%s -d <UIO_DEV_FILE> -i|-o <VALUE>\n"RESET,name);
	printf("Please, pay attention:\n");
	printf(BOLDWHITE"\t-d"RESET GREEN"\t<UIO_DEV_FILE>"RESET"\n\t\tThe mandatory parameter <UIO_DEV_FILE>\n\t\tspecifies the uio device file corrisponding\n\t\t to GPIO, for example /dev/uio0.\n");
	printf(BOLDWHITE"\n\t-i"RESET"\n\t\tSpecifies the input value of GPIO \n\t\tcorrisponding to <UIO_DEV_FILE> \n");
	printf(BOLDWHITE"\n\t-o"RESET GREEN"\t<VALUE>"RESET"\n\t\tThe mandatory parameter <VALUE> specify\n\t\tthe value must be write on GPIO output \n");
	return;
}

/**
  * @brief  Parses uiodriver arguments.
  * @param  argc: 	number of parameters, passed to main function.
  * @param  argv: 	parameters passed to main function
  * @param  uiod: 	uio device file corrisponding to GPIO
  * @param  r_w: 	specifies if the operation on GPIO is a read or a write
  * @param  value: 	contains the read value (if the operation on GPIO is a read) 
  *		  	 or the value to write (if the operation on GPIO is a write)
  * @retval Integer status.
  *         -1		An error occurred.
  *	     1		Help function is called.		
  * 	     0		Everything is ok.
  */
int parse_command(int argc,char **argv,char** uiod,int* r_w,int* value){
	int index=0;
	int mandatory_opt=-1; 	/*!< Keep track if the mandatory option 'g' is parsed */
	int i_or_o=0;		/*!< Keep track if an i|o operation is requested */
	static char *optstring = ":d:io:h";

		while((index = getopt(argc, argv, optstring)) != -1) {
				switch(index) {
				case 'd':
					mandatory_opt=atoi(optarg);	/*!< Change mandatory_opt value to memorize that the mandatory option is parsed */
					*uiod=optarg;						
					break;
				case 'i':
					/* Check if before 'i' option was passed the mandatory option 'g' */
					if(mandatory_opt!=-1){
						*r_w=READ; /*!< Set READ operation for GPIO */
						i_or_o=1;
					}
					else{
						printf("Missing mandatory parameter 'g'\n");
						usage(argv[0]);
						return -1;
					}
					break;
				case 'o':
					/*! Check if before 'o' option was passed the mandatory option 'g' */
					if(mandatory_opt!=-1){
						*r_w=WRITE; /*!< Set WRITE operation for GPIO */
						*value=strtoul(optarg, NULL, 0);
						i_or_o=1;
					}
					else{
						printf("Missing mandatory parameter 'g'\n");
						usage(argv[0]);
						return -1;
					}
					break;
				case 'h':
					usage(argv[0]);
					return 1;
					break;
				case ':':
					printf("Missing argument for '%c' option\n", optopt);
					usage(argv[0]);
					return -1;
					break;
				case '?':
					printf("Option '%c' not recognized\n", optopt);
					usage(argv[0]);
					return -1;
					break;
				default:
					usage(argv[0]);
					return -1;
					break;
				}
		
			}
	/*! Check if an i|o operation is requested */	
	if(i_or_o==0){
		printf("Can't use "BOLDWHITE"uiodriver "RESET"without specify i|o option\n");
		usage(argv[0]);
		return -1;
	}
	return 0;
}

/**
  * @brief  Opens uio device file in order to access to it by its virtual address.
  * @param  uiod: 		uio device file corrisponding to GPIO
  * @param  virtual_address: 	uio device file's virtual address.
  * @retval Integer status.
  *         -1		An error occurred.
  */
int open_device(char* uiod, void** virtual_address){
	int fd = open (uiod, O_RDWR);
		if (fd < 1) {
			perror("Error to open uio device file");
			return -1;
		}
		/*! mmap system call returns virtual address of <uiod> file */
		*virtual_address = mmap(NULL, GPIO_MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	return 0;
}

/**
  * @brief  Reads the <value> in input to GPIO port.
  * @param  value: 		read value.
  * @param  virtual_address: 	uio device file's virtual address.
  * @retval None.
  */
void read_gpio(int* value,void* virtual_address){
	/*! Set GPIO_TRI register values to configure the GPIO port as input */
	*((unsigned *)(virtual_address + GPIO_TRI_OFFSET)) = 255;
	*value = *((unsigned *)(virtual_address + GPIO_DATA_OFFSET));
	printf("The value on GPIO input is: %08x\n",*value);
}

/**
  * @brief  Writes <value> in output to GPIO port.
  * @param  value: 		write value.
  * @param  uiod: 		uio device file corrisponding to GPIO
  * @param  virtual_address: 	uio device file's virtual address.
  * @retval None.
  */
void write_gpio(int value,char* uiod,void* virtual_address){
	/*! Set GPIO_TRI register values to configure the GPIO port as output */
	*((unsigned *)(virtual_address + GPIO_TRI_OFFSET)) = 0;
	printf("Going to write onto %s the value %08x\n", uiod, value );
	*((unsigned *)(virtual_address + GPIO_DATA_OFFSET)) = value;
}

/**
  * @brief  Closes uio device file.
  * @param  virtual_address: 	GPIO's virtual address.
  * @retval None.
  */
void close_device(void* virtual_address){
	munmap(virtual_address,GPIO_MAP_SIZE);
}

