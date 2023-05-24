#! /bin/bash

grep -qxF 'include refind-dark/refind-dark.conf' /boot/efi/EFI/refind/refind.conf || sudo echo 'include refind-dark/refind-dark.conf' >> /boot/efi/EFI/refind/refind.conf

sudo cp -R /usr/share/pika-refind/theme/* /boot/efi/EFI/refind/*
