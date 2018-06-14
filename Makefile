CC      = gcc
CC2			= arm-none-eabi-gcc
CFLAGS  = -g -Wall -Wextra -pedantic -march=x86-64
CFLAGSARM  = -specs=nosys.specs -Wall -Wextra 
RM      = rm -f


default: all

all: hello

hello: hello.c
	$(CC) $(CFLAGS) -o hello hello.c

helloarm: hello.c
	$(CC2) $(CFLAGSARM) -o helloarm hello.c

clean veryclean:
	$(RM) hello helloarm
