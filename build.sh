#!/bin/bash
# (c) 2015, Leo Xu <otakunekop@banana-pi.org.cn>
# Build script for BPI-Kernel4.1.X

echo "=========================================="
echo -e "\033[41;37m     BPI Image Build Tool  2015.07.24     \033[0m"
echo "=========================================="
echo
echo "This tool support following BPI board(s):"
echo "------------------------------------------"
echo "	1. BPI-M1"
echo "	2. BPI-M1-Plus"
echo "	3. BPI-M2"
echo "------------------------------------------"
read -p "Please choose a target(1-3): " choice
echo

echo -e "\033[31m Now building u-boot...\033[0m"
echo
cd ./u-boot-2015.04
case $choice in
	1) ./bpi-m1.sh;;
	2) ./bpi-m1-plus.sh;;
	3) ./bpi-m2.sh;;
esac
echo
echo -e "\033[31m Building u-boot success!\033[0m"
echo

echo
echo -e "\033[31m Now building linux...\033[0m"
echo
cd ../linux-stable
./build.sh
echo -e "\033[31m Building linux success!\033[0m"

cd ./output/bpi
ls
