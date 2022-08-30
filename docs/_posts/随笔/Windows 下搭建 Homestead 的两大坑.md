---
title: Windows 下搭建 Homestead 的两大坑
date: 2020-01-21 11:38:38
permalink: /pages/f0e4df/
sidebar: auto
categories:
  - 随笔
tags:
  - Homestead
author: 
  name: whcoding
  link: https://github.com/whcoding
---

[vagrant](https://www.vagrantup.com/)版本 2.2.6 
[virtualbox](https://www.virtualbox.org/) 版本 6.1

## 1. 第一大坑 

![33783-o38k07bwocm.png](https://images.whcoding.com/33783-o38k07bwocm.png)

上面的报错意思就是,  vagrant 不支持 安装版本的 virtualbox

然后我就想 不应该啊 我都去官网 安装的最新版本 为什么会出这样的错误呢?
最终经过 百度 找到了 Vagrant 在 GitHub 上的仓库 查看了 issue 果然 已经有大神解决了

### 解决办法
[issues](https://github.com/oracle/vagrant-boxes/issues/178?utm_source=hacpai.com)
链接里讲的很明白, 只需要手动修复一下 跟着操作就可以了.

### 第二个解决办法
如果你懒的手动去改这些文件, 那么你只需要去下载旧版本的  [virtualbox](https://www.virtualbox.org/wiki/Download_Old_Builds_6_0) 重新安装就可以了.

## 2. 第二大坑

![34723-z258sibvld8.png](https://images.whcoding.com/34723-z258sibvld8.png)这里的报错意思就是,  电脑没有开启 vt虚拟化

打开任务管理器, 然后到 性能 选项页, 在右下角虚拟化中我们就可以看到了

![09599-4b2f27edj5l.png](https://images.whcoding.com/09599-4b2f27edj5l.png)
知道了问题, 去百度自己的 主板 怎么开启虚拟化就可以了, 我的是 [华硕主板](https://zhidao.baidu.com/question/1962404983578552180.html)

### 最后还是想说一句 还是 Mac 下开发省心啊! 