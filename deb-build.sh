#!/bin/bash
if [ -z "$1" ];then
    echo "args1 need build version, for example: ./deb-build 1.10.1"
else
	#mkdir usr
	script_dir=$(dirname "$(readlink -f "$0")")
	cd $script_dir/porting-script
	pyinstaller -F --add-data "config:config" --distpath ../usr/bin deepin-codeporting.py
	cd ..
	archname=$(arch)
	name=$(basename "$(pwd)")
	sed -i "s/Version:.*/Version: $1/" DEBIAN/control
	dpkg -b "$(pwd)" "deepin-codeporting_$1_$archname.deb"
fi