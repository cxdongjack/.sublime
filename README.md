# 原理

## 通过同步/Packages/User/Package Control.sublime-settings，每次重启后自动安装包

## 版本库自带，通过软链接到/Packages/目录下


# 安装方法

## 下载版本库
```
git clone http://git.n.xiaomi.com/chenxiaodong/sublime.git
```

## 打开sublime

## 运行install.sh 


# Q&A

## 包没装上？
多重启几次
由于sublime的Package Control有时通过https通信，因此有时会校验失败

## 彻底重置办法
 删除 ~/Library/Application\ Support/Sublime\ Text\ 3 目录
 重新打开sublime，会生成配置文件夹

