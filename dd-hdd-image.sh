## Use this to backup entire hdd images

# To save a copy
dd if=/dev/mmcblk0 conv=sync,noerror bs=64K | gzip -c | split -a3 -b2G - backup.img.gz

# To Restore
cat backup.img.gz* | gunzip -c | dd of=/dev/mmcblk0