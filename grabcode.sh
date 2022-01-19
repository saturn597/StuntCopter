#!/bin/bash

# Doing development in Mini vMac, so the files are on an HFS disk image.
mount -t hfs stuntcopter.dsk mnt

if [ $? -ne 0 ]; then
  echo "Script failed."
  echo "We probably need superuser privileges to mount the disk image."
  exit 1
fi

# Classic Macs used carriage returns as line breaks. Switch to \n.
sed 's/\r/\n/g' mnt/StuntCopter/StuntCopter.pas > ./StuntCopter.pas

chmod 666 ./StuntCopter.pas

# Clean up
umount mnt
