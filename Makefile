

# If KERNELRELEASE is defined, we've been invoked from the
# kernel build system and can use its language.
ifneq ($(KERNELRELEASE),)
	obj-m := LKM.o

# Otherwise we were called directly from the command
# line; invoke the kernel build system.
else
	KERNELDIR ?= /lib/modules/$(shell uname -r)/build
 	PWD := "/home/zorcher/all/projects/linuxkernelmodule" 
default:
	make -C $(KERNELDIR) M=$(PWD) modules
endif
