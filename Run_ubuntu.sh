#!/data/data/com.termux/files/usr/bin/bash

if ! command -v proot-distro &> /dev/null; then
    echo "Proot-distro is not installed. Installing it now..."
    pkg update && pkg upgrade -y
    pkg install proot-distro -y
fi

if [ ! -d "$HOME/.proot-distro/installed-rootfs/ubuntu" ]; then
    echo "Ubuntu is not installed. Installing it now..."
    proot-distro install ubuntu
fi

proot-distro login ubuntu
