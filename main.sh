#! /bin/bash

# Get logos
wget https://github.com/PikaOS-Linux/pika-branding/raw/main/logos/pika-logo-nv.png -O ./pika-refind-theme/usr/share/pika-refind/theme/refind-dark/icons/os_pika.png
cp ./pika-refind-theme/usr/share/pika-refind/theme/refind-dark/icons/os_pika.png ./pika-refind-theme/usr/share/pika-refind/theme/refind-dark/icons/os_linux.png
DEBIAN_FRONTEND=noninteractive

# Clone Upstream
cd ./pika-refind-theme

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
