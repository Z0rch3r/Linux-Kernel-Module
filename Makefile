ifneq ($(KERNELRELEASE),)
	obj-m := LKM.o

else
	KERNELDIR ?= /lib/modules/$(shell uname -r)/build
 	PWD := $(shell pwd)
default:
	make -C $(KERNELDIR) M=$(PWD) modules
endif
