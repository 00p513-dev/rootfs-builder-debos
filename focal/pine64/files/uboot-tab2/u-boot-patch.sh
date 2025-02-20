#!/bin/bash

bootpoint=$(df | grep /boot | tail -n1 | awk '{print $1}')
if [[ ${bootpoint} == /dev/mmcblk* ]]; then
dd if=/boot/u-boot-rockchip.bin of="${bootpoint/p[0-9]/}" bs=32k seek=1 conv=fsync;
else
dd if=/boot/u-boot-rockchip.bin of="${bootpoint/[0-9]/}" bs=32k seek=1 conv=fsync;
fi
