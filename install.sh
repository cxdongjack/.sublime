#/bin/bash

# inspired by https://packagecontrol.io/docs/syncing#git

sublime=`dirname $0`
sublime_abs=`cd $sublime;pwd;`
pkgs=''

for pkg in `find $sublime -not -path '*/.*' -maxdepth 1 -type d | grep -v '^\.$'`
do
    pkg=`cd $pkg;pwd;`
    pkgs="$pkgs $pkg"
done

# 进入Sublime目录
cd ~/Library/Application\ Support/Sublime\ Text\ 3/

# 准备包管理器
cd Installed\ Packages/

# 首次安装的时候，会把配置文件清空，因此此处休眠1s, 等待初始化完成
! [[ -f 'Package Control.sublime-package' ]] \
    && /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl \
    && cp $sublime_abs/Package\ Control.sublime-package . \
    && sleep 1

# 准备配置文件
cd ../Packages/

for pkg in $pkgs
do
    basename=${pkg##*/}
    rm -rf $basename
    ln -s $pkg $basename
done

echo '配置完成，请重新启动sublime'
