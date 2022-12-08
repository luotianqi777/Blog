---
title: vscode集成zsh
date: 2022-12-08 11:29:54
tags:
- VSCode
- zsh
---

## windows安装zsh

windows无法直接安装`zsh`，需要借助其他环境安装。
本篇文章借助[`git-bash`](https://git-scm.com/downloads)安装`zsh`。
下载[zsh安装文件](https://packages.msys2.org/package/zsh?repo=msys&variant=x86_64)，下载的压缩文件可以使用[解压工具](https://peazip.github.io/)解压。
将解压后的文件放到`git`根目录。
现在可以在`git-bash`终端下执行`zsh`进入`zsh`。
接下来安装`oh-my-zsh`：

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## vscode集成zsh

在配置文件`setting.json`中添加下列配置：

```json
"terminal.integrated.defaultProfile.windows": "zsh",
"terminal.integrated.profiles.windows": {
    "zsh": {
        "overrideName": true, // 用zsh覆盖终端名称(可选)
        "path": "D:\\Program Files\\Git\\bin\\bash.exe", // 此处为bash的路径
        "args": [
            "-c",
            "zsh"
        ]
    }
}
```
