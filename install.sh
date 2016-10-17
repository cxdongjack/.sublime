#/bin/bash

# inspired by https://packagecontrol.io/docs/syncing#git

sublime=`dirname $0`
#sublime=`cd $sublime;pwd;`
#echo $sublime
pkgs=''

for pkg in `find $sublime -not -path '*/.*' -maxdepth 1 -type d | grep -v '^\.$'`
do
    pkg=`cd $pkg;pwd;`
    pkgs="$pkgs $pkg"
done

cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/

for pkg in $pkgs
do
    basename=${pkg##*/}
    rm -rf $basename
    ln -s $pkg $basename
done

# 准备tpl的工具
#./subl-build-tpl-plugin/install.sh

# find . -not -path '*/\.*' -maxdepth 1 -type d
# User
#cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
#mv User User_back
#ln -s ~/.config/sublime/User User

#for pkg in `find $sublime -not -path '*/.*' -maxdepth 1 -type d | grep -v '^\.$'`
#do
    #pkg=`cd $pkg;pwd;`
    #echo $pkg
#done
# packages

#rm -rf subl-build-tpl-plugin
#ln -s ~/.config/sublime/packages/subl-build-tpl-plugin subl-build-tpl-plugin 

#rm -rf termX
#ln -s ~/.config/sublime/packages/termX termX

#rm -rf viper
#ln -s ~/.config/sublime/packages/viper viper


