---
title: VitrualBox Vagrant Homestead 的关系
date: 2020-01-21 10:31:36
permalink: /pages/d33c3a/
sidebar: auto
categories:
  - 随笔
tags:
  - Vagrant
  - Homestead
author: 
  name: whcoding
  link: https://github.com/whcoding
---

## VitrualBox
VitrualBox 是一款非常强大的免费虚拟机软件，使用者可以在 VitrualBox 上安装并运行 Linux、Windows、Mac OS X 等操作系统，类似的软件还有 VMware
## Vagrant
Vagrant 是一个用于创建和部署虚拟化开发环境的工具，其依赖于 VirtualBox 虚拟机，致力于帮助开发者快速构建一个环境统一的虚拟系统。

Vagrant 可以将一整套虚拟环境封装在一个box 内，这样只要所有人都使用这个 box，大家的开发环境就实现统一了！而 Homestead 就是这样一个 Laravel 官方预装的适合 Laravel 开发的 Vagrant box 。

## 理解
其实可以这样理解，你有了虚拟机（VirtualBox）,有了集成环境（homestead环境也就是vagrant box）,那么你总需要把集成环境放到虚拟机上是吧。那么谁来做这个事情呢？必须要有人来做才行啊，不然的话，虚拟机是不会自己装环境的。vagrant 就是做这个事情的

## 总结
VirtualBox 是虚拟机软件
vagrant 是管理虚拟机的工具，主要作用是提供一个可配置、可移植和复用的软件环境
Homestead 里面包含了 Nginx Web 服务器、PHP 7、MySQL、Postgres、Redis、Memcached、Node，以及所有你在使用 Laravel 开发时需要用到的各种软件（Homestead Box 虚拟机盒子），它一套可配置的 Laravel 开发环境（Homestead 管理脚本）