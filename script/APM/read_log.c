#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define BRAM2_ADDR_OFFSET 0xB0030000UL //Starting address intended to be dumped
#define BRAM2_SIZE 0x10000UL   //64KB
typedef unsigned __int128 uint128_t;



int main(int argc, char *argv[]){

  uint128_t *bram;
  int fd = open("/dev/mem",O_RDWR|O_SYNC);
  
  if(fd < 0)
    {
      printf("Can't open /dev/mem\n");
      return 1;
    }
  printf("Successfully Opened /dev/mem \n");

  bram = (uint128_t *) mmap(0, BRAM2_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, BRAM2_ADDR_OFFSET);
  if (bram == NULL)
    {
      fprintf(stderr, "Can't mmap BRAM\n");
      return EXIT_FAILURE;
    }

  for(i=0; i<MEM_SPACE / sizeof(uint128_t); i += 128)
    {
      printf("%02d  %04X \n", i/128, (bram[i]));
      printf("%02d  %04X \n", (i/128)+1, (bram[i]));
    }
  

  return 0;
}
