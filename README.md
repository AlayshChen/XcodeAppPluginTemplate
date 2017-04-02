# XcodeAppPluginTemplate

![](http://ofg6kncyv.bkt.clouddn.com/Icon.png)  
App Plugin Project Template For iOS App and Mac App.

说明：我将过去文章中涉及到的工程整理出工程模版，方便对第三方app进行hook.   
文章链接：[我是如何利用Xcode调试开发微信消息预览插件的](http://alayshchen.github.io/2016/02/26/我是如何利用Xcode调试开发微信消息预览插件的/) 

## 前提

[insert_dylib](https://github.com/Tyilo/insert_dylib)


## 如何安装

* 将 `App Plugin` 文件夹拷贝到 `~/Library/Developer/Xcode/Templates/Project Templates`.

## 如何卸载

* 删除文件夹:`~/Library/Developer/Xcode/Templates/Project Templates/App Plugin`.

## 如何使用

* 在Xcode中选择新建工程，选择iOS中的`App Plugin`或者macOS中的`Mac App Plugin`工程模版.

![](http://ofg6kncyv.bkt.clouddn.com/0.png)  

* 填写工程选项.（Target app name 是要hook的第三方app名称，Target app bundle id打包后的app bundle id， 脚本会自动修改原app bundle id为此值）

![](http://ofg6kncyv.bkt.clouddn.com/2.png)

* 最后，将要hook的app放在工程文件夹中，注意这里的文件名要与上一步中的Target app name一致，并执行命令`pod install`.

![](http://ofg6kncyv.bkt.clouddn.com/4.png)  


## 原理
使用模版创建工程后，会有一个动态库target和空app target. 选择app scheme进行build，Xcode首先会build 动态库，然后执行脚本，将动态库注入app中，生成新的app，放在product目录。接着Xcode会进行签名等一系列操作，启动app，连接调试器，这样，我们就可以debug插件和原app了。 

* 注入动态库
![](http://ofg6kncyv.bkt.clouddn.com/5.png)
* Xcode Build流程
![](http://ofg6kncyv.bkt.clouddn.com/6.png)
* 效果图
![](http://ofg6kncyv.bkt.clouddn.com/7.png)
