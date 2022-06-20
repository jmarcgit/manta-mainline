#!/bin/sh
# make exynos_defconfig android-base.config android-recommended.config
KERNEL_SRC=`pwd`

# ANDROID_CONFIG="$KERNEL_SRC/kernel/configs/android-base.config $KERNEL_SRC/kernel/configs/android-recommended.config"

MANTA_CONFIG="`dirname $0`/configs/manta.config"
CUSTOM_CONFIG="`dirname $0`/configs/custom.config"

"$KERNEL_SRC/scripts/kconfig/merge_config.sh" "$KERNEL_SRC/arch/arm/configs/exynos_defconfig" $MANTA_CONFIG $CUSTOM_CONFIG
