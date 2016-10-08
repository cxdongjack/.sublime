#/bin/bash

# inspired by https://packagecontrol.io/docs/syncing#git

# 准备tpl的工具
./subl-build-tpl-plugin/install.sh

cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
mv User User_back
mv subl-build-tpl-plugin subl-build-tpl-plugin_back 
ln -s ~/.sublime User
ln -s ~/.sublime/subl-build-tpl-plugin subl-build-tpl-plugin 


