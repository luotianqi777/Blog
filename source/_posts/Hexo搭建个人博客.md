---
title: Hexo 搭建个人博客
date: 2020-04-10 16:18:29
tags:
  - Hexo
---

## 安装 nodejs, npm

- 建议通过[官网](https://nodejs.org/en/)安装

  (通过 apt 安装`sudo apt install nodejs npm`有可能版本过低)

- 使用`ln -s [src] [obj]`将 nodejs 和 npm 软链接到`/usr/local/bin/`下

## 创建 Github 仓库

- 见另一篇博客 **Github 添加 SSH Key**

- 在 Github 中创建名为*user_name*.github.io 的 public 仓库

## 安装 hexo

- hexo 本体安装

  `npm install -g hexo-cli`

  - 速度慢或无法下载建议换源

    - 淘宝源:

      `npm config set registry https://registry.npm.taobao.org`

    - cnpmjs 源:

      `npm config set registry http://r.cnpmjs.org`

  - 或者用 cnpm

    `npm install -g cnpm --registry=https://registry.npm.taobao.org`

    之后用 cnpm 安装

    `cnpm install hexo`

  - 还有可能是代理的问题

    `npm config set proxy null`  
    `npm config set https-proxy null`

  - windows 还有可能是系统环境变量的问题

    检查环境变量`HTTP_PROXY`和`HTTPS_PROXY`

- 使用 git 远程部署需要安装

  `npm install hexo-deployer-git --save`

## Hexo 设置

- 初始化 hexo

  `hexo init <filename>`

  会从 github 上 clone 一个 blog 模版到 _filename_

- 远程部署设置

  打开 _filename_ 的\_config.yml 文件  
  找到

  ```
  deploy:
    type:
    repo:
    branch:
  ```

  将其填写为

  ```
  deploy:
    type: git
    repo:  git@github.com:user_name/user_name.github.com.git
    branch: master
  ```

  repo 的写法不唯一  
   根据部署位置的协议而定

## hexo 常用操作

- 生成新网页

  `hexo n [location]<filename>`

  会在*source*的*location*(默认为 post)中生成`filename.md`文件

- 生成新页面

  `hexo n page <pagename>`

  会在*source*中创建*pagename*文件夹

- 生成静态网页

  `hexo g`

- 部署博客到 远程

  `hexo d`

- 本地预览博客

  `hexo s`

  可以在<http://localhost:4000/>中预览博客
