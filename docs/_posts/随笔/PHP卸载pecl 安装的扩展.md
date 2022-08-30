---
title: PHP卸载pecl 安装的扩展
date: 2018-06-29 09:21:10
permalink: /pages/9f850b/
categories: 
  - 随笔
tags: 
  - pecl
author: 
  name: whcoding
  link: https://github.com/whcoding
sidebar: auto
---

## PHP卸载pecl 安装的扩展

php.ini 中删除 extension=swoole.so

卸载,切换到PHP安装目录下的bin

./pecl uninstall swoole(已swoole为例)