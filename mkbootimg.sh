#!/bin/sh

MKBOOTIMG="`dirname $0`/mkbootimg/mkbootimg.py"
#MKBOOTIMG_ARGS="--header_version 0 --os_version 10.0.0 --os_patch_level 2022-05 --pagesize 0x00000800 --base 0x00000000 --kernel_offset 0x10008000 --ramdisk_offset 0x11000000 --second_offset 0x10f00000 --tags_offset 0x10000100 --board nexus10-manta --cmdline buildvariant=userdebug"
MKBOOTIMG_ARGS="--header_version 0 --os_version 10.0.0 --os_patch_level 2022-05 --pagesize 0x00000800 --base 0x00000000 --kernel_offset 0x10008000 --ramdisk_offset 0x11000000 --tags_offset 0x10000100 --cmdline buildvariant=userdebug"

KERNEL_SRC="`pwd`"
RAMDISK="`dirname $0`/ramdisk/$1.img"

rm zImage-dtb boot.img
cat $KERNEL_SRC/arch/arm/boot/zImage $KERNEL_SRC/arch/arm/boot/dts/exynos5250-manta.dtb > zImage-dtb
$MKBOOTIMG $MKBOOTIMG_ARGS --kernel zImage-dtb --ramdisk $RAMDISK --output boot.img