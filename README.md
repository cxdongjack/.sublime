# 原理

通过同步/Packages/User/Package Control.sublime-settings，每次重启后自动安装包

版本库自带，通过软链接到/Packages/目录下

# 安装方法

```
curl -sL https://raw.githubusercontent.com/cxdongjack/.sublime/master/install.sh | bash
```

## Q&A

### 只支持macOS?
是的, 如有需要可以fork后修改init.sh

### 包没装上？
多重启几次
由于sublime的Package Control有时通过https通信，因此有时会校验失败

### 彻底重置办法
删除 ~/Library/Application\ Support/Sublime\ Text\ 3 目录
重新打开sublime，会生成配置文件夹

