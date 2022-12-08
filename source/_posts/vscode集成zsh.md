---
title: vscode集成zsh
date: 2022-12-08 11:29:54
tags:
- VSCode
- zsh
---

## windows安装zsh

windows无法直接安装`zsh`，需要借助其他环境安装。
安装[`git-sdk`](https://github.com/git-for-windows/build-extra/releases/latest)，理由是带有`pacman`包管理器，可以安装`zsh`。

在`git-sdk`安装目录下启动`git-bash.exe`执行下列命令安装`zsh`和`oh-my-zsh`。

```bash
pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## vscode集成zsh

在配置文件`setting.json`中添加下列配置：

```json
"terminal.integrated.defaultProfile.windows": "zsh",
"terminal.integrated.profiles.windows": {
    "zsh": {
        "overrideName": true, // 用zsh覆盖终端名称
        "path": "C:\\git-sdk-64\\msys2_shell.cmd", // 此处路径为git-sdk安装的路径
        "args": [
            "-defterm",
            "-mingw64",
            "-no-start",
            "-here",
            "-lic",
            "cd $PWD; exec zsh" // 启动终端后直接进入zsh环境
        ]
    }
}
```
