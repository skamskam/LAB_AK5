ifneq ($(KERNELRELEASE),)

ccflags-y := -I$(src)/inc

obj-m := hello1.o hello2.o
else

KDIR ?= /lib/modules/$(shell uname -r)/build

default:
	$(MAKE) -C $(KDIR) M=$(PWD)
clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
endif
