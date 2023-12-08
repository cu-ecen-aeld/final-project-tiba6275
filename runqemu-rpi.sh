# Shell script to start Raspberry Pi zero 2w (64-bit) on QEMU
#!/bin/sh

KERNEL="buildroot/output/images/zImage"
DTB="buildroot/output/images/bcm2710-rpi-zero-2-w.dtb" 
ROOTFS="buildroot/output/images/rootfs.ext2"

if [ ! -e $KERNEL ]
then
	echo "$KERNEL does not exist"
	exit 1
fi

if [ ! -e $DTB ]
then
	echo "$DTB does not exist"
	exit 1
fi

if [ ! -e $ROOTFS ]
then
	echo "$ROOTFS does not exist"
	exit 1
fi

qemu-system-arm \
	-M raspi0 \
	-kernel $KERNEL \
	-dtb $DTB \
	-m 1024 -nographic \
	-append "rw console=ttyAMA0,115200 root=/dev/mmcblk0 fsck.repair=yes rootwait" \
    -device sd-card,drive=mycard -drive if=none,file=$ROOTFS,format=raw,id=mycard
