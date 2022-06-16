---
title: git跟踪fork
date: 2022-06-16 11:10:47
tags:
  - Git
---

## 说明

`git fork` 远程仓库时的操作。

被`fork`仓库: `user_dalao/repo.git`
`fork`仓库: `user_me/repo.git`

## Git 跟踪远程

拉取远程仓库代码

```git
git clone user_me/repo.git
```

添加`fork`仓库为远程仓库(从自己的仓库拉取下来默认是远程仓库，一般会用于推送到远程空仓库)

```git
git remote add origin user_me/repo.git
```

指定本地`branch-name`分支跟踪远程`branch-name`分支(一般用于创建新分支时，推送到远程分支后同步更改)

```git
git branch --set-upstream branch-name origin/branch-name
```

## Git 跟踪上游

```git
git remote add upstream user_dalao/repo.git
// 同步上游内容
git fetch upstream
```
