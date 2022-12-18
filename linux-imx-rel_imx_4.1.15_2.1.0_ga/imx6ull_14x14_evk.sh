#!/bin/sh
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- distclean
#默认配置文件路径 arch/arm/configs  暂时使用imx_v7_defconfig测试
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- imx_glx_emc_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- menuconfig
#all 编译所有  生成设备树在arch/arm/boot/dts  编译生成zImage 和 设备树
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- all  -j12




#添加自己的板级文件  1、添加arch/arm/boot/dts 下设备树  2、添加arch/arm/configs下配置文件