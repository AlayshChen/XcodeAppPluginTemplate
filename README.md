# XcodeAppPluginTemplate
App Plugin Project Template For iOS App and Mac App.

Note: I use this xcode template in articles: [我是如何利用Xcode调试开发微信消息预览插件的](http://alayshchen.github.io/2016/02/26/我是如何利用Xcode调试开发微信消息预览插件的/) [如何愉快地在Mac上刷朋友圈](http://alayshchen.github.io/2017/03/07/如何愉快地在Mac上刷朋友圈/)

## Prerequisite
insert_dylib

## How to install

* Download or clone the repository  
* Copy `App Plugin` folder into `~/Library/Developer/Xcode/Templates/Project Templates`

## How to uninstall

Delete the following directory:`~/Library/Developer/Xcode/Templates/Project Templates/App Plugin`

## How to use - iOS

* Open Xcode and choose `App Plugin` under the iOS section.

![](./Screenshots/0.png)

* Write the project option to create project.   
(Hint: Target app name is the name of the ios app that you will provide to patch plugin. And Script will change the app bundle id to target app bundle id. )

![](./Screenshots/2.png)

* Copy the ipa file into project directory, run `pod install` in terminal.

![](./Screenshots/4.png)

![](./Screenshots/6.png)  

## How to use - MacOS

* Open Xcode and choose `Mac App Plugin` under macOS section.

![](./Screenshots/1.png)

* Write the project option to create project.  
(Hint: Target app name is the name of the mac app that you will provide to patch plugin)

![](./Screenshots/3.png)

* Copy the mac app into project directory, run `pod install` in terminal.

![](./Screenshots/5.png)
![](./Screenshots/7.png)