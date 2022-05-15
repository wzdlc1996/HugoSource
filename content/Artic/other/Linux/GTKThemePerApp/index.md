---
title: "如何为特定应用指定GTK3主题"
date: 2018-11-15T13:13:29+08:00
draft: false
tags: ["os-setup", "manjaro"]
categories: ["Linux"]
toc: true
nomath: true
summary: "这个笔记记录如何为特定应用指定不同于系统主题的GTK3主题. 主要是为了解决在系统是用黑色主题时因为字体颜色为白色导致linuxqq中难以辨别的问题"
---

# linuxqq的颜色问题

当系统使用黑色主题时, 由于字体颜色跟随系统设置为白色, 使得一些原本强制使用白色背景的桌面应用中难以识别文字. 如[linuxqq](https://im.qq.com/linuxqq/download.html):

{{< center >}}<img name="preview" src="./Figs/img_02.png"/>{{< /center >}}

为了解决这个问题, 我们可以为linuxqq单独设置使用的GTK主题来实现.

# 单独设置GTK主题

根据回答 [askubuntu.com@Tsu Jan](https://askubuntu.com/questions/78088/can-i-apply-a-different-gtk3-theme-from-the-main-one-to-an-individual-applicatio/427440#427440), 我们可以是用如下的方式来"欺骗"GTK

1.  创建一个单独的文件夹, 如
    ```shell
    mkdir ~/.local/mythemes
    ```
2.  将一个白色的GTK3主题复制到该路径(按照原回答需要额外的一些路径结构, 但尝试使用里直接放在这个路径下也没有问题. 这里两种都记录下来)
    ```shell
    cp -r /usr/share/themes/Adwaita ~/.local/mythemes/CURRENT_THEME_NAME

    # original answer
    mkdir ~/.local/mythemes/share/themes
    cp -r /usr/share/themes/Adwaita ~/.local/mythemes/share/themes/CURRENT_THEME_NAME
    ```
    其中 `CURRENT_THEME_NAME` 为当前系统主题. 因此在更换系统主题之后也需要对应地修改这里的文件名
3.  以linuxqq为例, 我们需要编辑其`.desktop` entry来指定GTK3 themes的路径执行. 为此为了方便后续维护, 我们移除原本安装时在 `/usr/share/applications/` 下的entry, 在 `.local/share/applications/` 中做一个新的.
    ```shell
    sudo mv /usr/share/applications/qq.desktop /usr/share/applications/qq.desktop.bkup
    cp /usr/share/applications/qq.desktop.bkup ~/.local/share/applications/qq.desktop
    ```

    并做出如下修改:
    ```shell
    # ~/.local/share/applications/qq.desktop

    [Desktop Entry]
    Version=2.0.0-b2
    Encoding=UTF-8
    Name=腾讯QQ
    Comment=腾讯QQ
    # Exec=/usr/local/bin/qq
    Exec=sh -c "GTK_DATA_PREFIX=$HOME/.local/mythemes/ /usr/local/bin/qq"
    Icon=/usr/local/share/tencent-qq/qq.png
    Terminal=false
    Type=Application
    Categories=Application;Network;Tencent Software;
    StartupNotify=true
    Name[zh_CN]=腾讯QQ
    GenericName[zh_CN]=
    Comment[zh_CN]=腾讯QQ
    ```

修改后的效果参看

{{< center >}}<img name="preview" src="./Figs/img_01.png"/>{{< /center >}}
