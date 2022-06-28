#!/bin/sh
# make exynos_defconfig android-base.config android-recommended.config
KERNEL_SRC="`pwd`"
CONFIG_DIR="`dirname $0`/configs"

# ANDROID_CONFIG="$KERNEL_SRC/kernel/configs/android-base.config $KERNEL_SRC/kernel/configs/android-recommended.config"

#CONFIG_FILES="$KERNEL_SRC/arch/arm/configs/exynos_defconfig"
CONFIG_FILES="$CONFIG_DIR//manta_defconfig"
#CONFIG_FILES="$CONFIG_FILES $CONFIG_DIR/manta.config"
CONFIG_FILES="$CONFIG_FILES $CONFIG_DIR/custom.config"

rm .config
"$KERNEL_SRC/scripts/kconfig/merge_config.sh" $CONFIG_FILES
