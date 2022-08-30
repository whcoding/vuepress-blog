---
title: Mac终端中快速启动编辑器
date: 2019-11-27 14:13:27
permalink: /pages/13cbd5/
categories: 
  - 随笔
tags: 
  - vscode
author: 
  name: whcoding
  link: https://github.com/whcoding
sidebar: auto
---

## vscode 编辑器

1. 打开控制面板（⇧⌘P)
2. 输入 shell command  回车安装 
3. 在提示里看到 Shell Command: Install ‘code’ command in PATH， 就可以了


### 在命令行你需要打开的目录下运行
```code
code .
```

## sublime 编辑器

### 1. 找到sublime应用提供的命令行工具subl

下面是我的路径
```code
/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl
```

### 2. 找到自己用的bash 给里面写入(我使用的是 zshrc)

```code
alias sub="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
```

### 3. 命令行运行 

```code
source ~/.zshrc
```

完成以上步骤你就可以在命令行中运行

```code 
sub .    打开当前目录
sub xxx  打开指定文件夹 或 文件
```