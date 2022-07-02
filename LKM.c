#include <linux/module.h>
#include <linux/init.h>


MODULE_DESCRIPTION("first module xD");
MODULE_AUTHOR("Z0rch3r");
MODULE_VERSION("1.0");
MODULE_LICENSE("GPL");

static int loadedEz(void){
  printk(KERN_ALERT "lbenj wld fatima loaded successfully.\n");
  return 0;
}

static void UnloadedEz(void){
  printk(KERN_ALERT "module unloaded successfully");
}

module_exit(UnloadedEz);
module_init(loadedEz);
