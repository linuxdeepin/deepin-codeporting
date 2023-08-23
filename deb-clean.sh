#/bin/bash
script_dir=$(dirname "$(readlink -f "$0")")
rm -rf $script_dir/deepin-codeporting*
rm -rf $script_dir/DEBIAN/changelog
rm -rf $script_dir/usr/
rm -rf $script_dir/porting-script/deepin-codeporting.spec
rm -rf $script_dir/porting-script/build/