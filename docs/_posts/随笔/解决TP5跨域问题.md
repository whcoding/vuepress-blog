---
title: 解决TP5跨域问题
date: 2018-04-04 10:03:00
permalink: /pages/188f76/
sidebar: auto
categories:
  - 随笔
tags:
  - 
author: 
  name: whcoding
  link: https://github.com/whcoding
---

## 需求说明

近期由于项目需要POST跨域请求(get的话用jsonp 我就不写了)

## 问题总结

之前一直知道jsonp跨域但是只能get请求 现在要求PSOT 所以用到了cors这个协议

## 解决方案

cosr 协议 + tp5行为(具体参考TP5官方手册)

你需要在你的BaseController里注册钩子(TP5官方也叫做添加行为标签位)

```php
\think\Hook::listen('response_send'); // 响应发生标签位 还有其他行为具体参考TP5手册
```

### 行为定义

```php
<?php 
 
namespace app\api\behavior;
 
class Test 
{
    public function responseSend(&$params)
    {    // 响应头设置 我们就是通过设置header来跨域的 这就主要代码了 定义行为只是为了前台每次请求都能走这段代码
    	header('Access-Control-Allow-Origin:*');     
    	header('Access-Control-Allow-Methods:*');  
	header('Access-Control-Allow-Headers:*');
	header('Access-Control-Allow-Credentials:false');
    }    
}
```

定义完我们就需要去绑定行为 绑定完才会去执行

建议绑定行为写在application下面tags.php文件中统一管理

```php
 'response_send' => [
        'app\\api\\behavior\\Test'   
    ],

```

参考链接:

http://www.ruanyifeng.com/blog/2016/04/cors.html

https://zhuanlan.zhihu.com/p/24411090
