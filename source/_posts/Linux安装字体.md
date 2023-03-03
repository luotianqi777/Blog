---
title: Linux安装字体
date: 2020-05-10 22:49:22
tags:
  - Linux
---

## 安装 MS 字体

### 说明

写论文时要求英文字体为`Times New Roman`和`Arial`，
这两种字体为 MS 字体，
Linux 系统并没有自带，
需要自己安装。

> 注意：Microsoft 已免费发布其核心字体，但**请注意 Minrosoft 字体是禁止使用在其他操作系统中**。  
> 在任何 Linux 操作系统中安装 MS 字体之前请仔细阅读 EULA。

### 安装

`sudo apt install ttf-mscorefonts-installer`

会有较为良好的安装引导界面。
安装完成后更新字体缓存：

`sudo fc-cache -f -v`

## 安装 Monaco 字体

### 说明

写论文时希望给附录代码安排个美观的字体，
搜了一下也就 Mac 的 Monaco 字体看着顺眼。

### 下载

[Monaco 下载](/download/Monaco.zip)
[Monaco Nerd Font 下载](/download/Monaco Nerd Font.zip)
