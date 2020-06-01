
/*********************************************************************/
/*      ACTIVATE TRAFFIC GENERATOR IN MASTER ONLY STREAM MODE        */
/*********************************************************************/

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <time.h>
#include <sys/time.h>
/*********************************************************************/
/*                       define mmap locations                       */
/*          consult the README for the exact memory layout           */
/*********************************************************************/

#define	AXI_TG_REGISTER_LOCATION          0xB0010000		//AXI DMA Register Address Map
#define	AXI_TG_REGISTERS_SIZE          0x10000               //64K

/*********************************************************************/
/*                   define all register locations                   */
/*               based on "LogiCORE IP Product Guide"                */
/*********************************************************************/
// Basic CONTROL
#define MASTER_CONTROL_REGISTER       0x0    // To control master logic.
#define ERROR_STATUS                  0x08    // Different errors reported during core operation.
#define ERROR_ENABLE                  0x0C    // Enable register to report intended error.
#define CONFIG_STATUS                 0x14    // Stores the current configuration of the core

// Streaming Mode Register Map
#define STREAMING_CONTROL             0x30
#define STREAMING_CONFIG              0x34
#define TRANSFER_LENGTH               0x38
#define TRANSFER_COUNT                0x3C
#define STREAMING_ERROR_STAT          0x70
#define STREAMING_ERROR_ENABLE        0x74





    int main() {

	unsigned int* axi_traffic_generator_register_mmap;


	int dh = open("/dev/mem", O_RDWR | O_SYNC); 
	axi_traffic_generator_register_mmap = mmap(NULL, AXI_TG_REGISTERS_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, dh, AXI_TG_REGISTER_LOCATION);
	int i;
	
	/* // fill control register memory with zeros --- not a good idea? */
	/* for (i = 0; i < AXI_TG_REGISTERS_SIZE; i++) { */
	/* 	char *p = (char *)axi_traffic_generator_register_mmap; */
	/* 	p[i] = 0x0; */
	/* } */


        
    	/*********************************************************************/
    	/*                 reset and halt all ATG operations                 */
    	/*********************************************************************/

    	/*********************************************************************/
    	/*           setting Master Control Register                         */
    	/*           bits [31:24] = 0x20 - default value                     */
	/*           bits [23:21] = 0x1  - MSTID, 0x1 Indicates 2-bit width  */
	/*           bits [20]    = 0x0  - MSTEN, when set, Master Begins    */
	/*           bits [19]    = 0x1  - Loop Enable                       */
	/*           bits [18:0]  = N/A  - RESERVED                          */
    	/*********************************************************************/


	
    	/*********************************************************************/
    	/*               STREAMING  Control Register                         */
    	/*           bits [31:24] = 0x20 - version value                     */
	/*           bits [23:2] =  N/A  - reserved                          */
	/*           bits [1]    =  N/A  - 1: Traffic Generation Completed   */
	/*           bits [0]    =  0x1  - Enable Traffic Generation         */
    	/*********************************************************************/

 
    	/*********************************************************************/
    	/*                       Error Enable Register                       */
    	/*   To enable allerrors, set Error Enable register to 0xFFFF_FFFF   */
    	/*********************************************************************/


    	/*********************************************************************/
    	/*                          start transfer                           */
    	/*                 (by setting MSTEDN bin in the MASTER              */
    	/*********************************************************************/

    	/*********************************************************************/
    	/*                 Config Status -  read only register               */
    	/*********************************************************************/

    	while (!controlregister_ok)
    {
    		s2mm_status = axi_dma_register_mmap[S2MM_STATUS_REGISTER >> 2];
    		controlregister_ok = ((s2mm_status & 0x00001000));
    	     	printf("Stream to memory-mapped status (0x%08x@0x%02x):\n", s2mm_status, S2MM_STATUS_REGISTER);
    		printf("S2MM_STATUS_REGISTER status register values:\n");
    		if (s2mm_status & 0x00000001) printf(" halted"); else printf(" running");
    		if (s2mm_status & 0x00000002) printf(" idle");
    		if (s2mm_status & 0x00000008) printf(" SGIncld");
    		if (s2mm_status & 0x00000010) printf(" DMAIntErr");
    		if (s2mm_status & 0x00000020) printf(" DMASlvErr");
    		if (s2mm_status & 0x00000040) printf(" DMADecErr");
    		if (s2mm_status & 0x00000100) printf(" SGIntErr");
    		if (s2mm_status & 0x00000200) printf(" SGSlvErr");
    		if (s2mm_status & 0x00000400) printf(" SGDecErr");
    		if (s2mm_status & 0x00001000) printf(" IOC_Irq");
    		if (s2mm_status & 0x00002000) printf(" Dly_Irq");
    		if (s2mm_status & 0x00004000) printf(" Err_Irq");
    		printf("\n");
    }
        

	return 0;
}
