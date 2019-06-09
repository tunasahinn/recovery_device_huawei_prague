#!/sbin/sh

    ln -sf /dev/block/platform/hi_mci.0 /dev/block/bootdevice

# Creates new symlinks without the _a in them since this device does
# not really have boot slots (silly Huawei...)

for f in /dev/block/bootdevice/by-name/*_a
do
	ln -sf $f ${f%??}
done