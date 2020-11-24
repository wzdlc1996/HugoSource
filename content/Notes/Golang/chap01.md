---
title: "Go的安装与环境配置"
date: 2020-11-22T22:04:41+08:00
#lastmod: "2018-12-11T17:11:00+08:00"
draft: true
tags: ["go"]
series: ["Go-Learning"]
categories: ["tools"]
toc: true
summary: "Go语言开发环境的安装和一些中国大陆会遇到的问题的解决方案. 开始学习Go语言来丰富自己的知识和技能!"
---

# Go 的下载与安装

## Go 语言简介

[Go][1] 语言是 Google 开发的 **静态类型**, **编译型** 的编程语言. 它的语法同 C 相似, 但拥有 **内存安全, 垃圾回收, 高并发支持** 等诸多良好的特性. 基于此, 有时 Go 也被称为 21 世纪的 C 语言. 根据 Go [官方网站][2]的介绍:

> Go is an open source programming language that makes it easy to build simple, reliable, and efficient software. 

Go 语言是一个开源的编程语言, 它能够容易地开发简洁, 可靠, 高效的软件. 

这个 `Series` 的主旨在于使用 Go 语言学习算法和数据结构, 以及 Web 开发, 机器学习等技术. 在学习这些技术之余也会试图以 Go 作为切入点来温习操作系统等计算机知识, 并在这个过程中掌握一定的 Go 语言技能.

## 下载 Go

由于某些原因, Go 语言同其他 Google 开发的工具无法在中国大陆地区访问. 但好在从 [2018.01.22][4] 开始 Go 官方提供了一个能够正常访问的[官网镜像][3], 这使得中国大陆的用户能够顺利地访问 Go. 

下载安装 Go 可以分为两种方法, 作为跨平台的实现, Go 语言提供了适配 Windows, MacOS, Linux 的不同实现:

1.  下载官方提供的安装安装套件: [下载地址][5]
2.  Linux发行版用户可以查看自带的包管理器是否提供. 对于 Arch 系, 只需要运行: `pacman -S go go-tools` 即可.

## Go 环境配置

完成安装并将 Go 的可执行文件路径添加进环境变量(使用包管理时可执行文件会自动做好链接在 `/usr/bin/go`, 可以使用命令 `whereis go` 来查看). 其中之后就可以在命令行运行 `go version` 来查看安装成功与否. 

Go 的几乎所有操作都依赖于命令 `go`, 它的工作模式依赖于若干环境变量. 在命令行中使用命令 `go env` 将会打印出当前的默认环境变量:

```bash
# ~$ go env
GO111MODULE=""
GOARCH="amd64"
GOBIN=""
GOCACHE="$HOME/.cache/go-build"
GOENV="$HOME/.config/go/env"
GOEXE=""
GOFLAGS=""
GOHOSTARCH="amd64"
GOHOSTOS="linux"
GOINSECURE=""
GOMODCACHE="$HOME/go/pkg/mod"
GONOPROXY=""
GONOSUMDB=""
GOOS="linux"
GOPATH="$HOME/go"
GOPRIVATE=""
GOPROXY="https://proxy.golang.org,direct"
GOROOT="/usr/lib/go"
GOSUMDB="sum.golang.org"
GOTMPDIR=""
GOTOOLDIR="/usr/lib/go/pkg/tool/linux_amd64"
GCCGO="gccgo"
AR="ar"
CC="gcc"
CXX="g++"
CGO_ENABLED="1"
GOMOD="/dev/null"
CGO_CFLAGS="-g -O2"
CGO_CPPFLAGS=""
CGO_CXXFLAGS="-g -O2"
CGO_FFLAGS="-g -O2"
CGO_LDFLAGS="-g -O2"
PKG_CONFIG="pkg-config"
GOGCCFLAGS="-fPIC -m64 -pthread -fmessage-length=0 -fdebug-prefix-map=/tmp/go-build194656316=/tmp/go-build -gno-record-gcc-switches"
```

### GOPATH

环境变量 `GOPATH` . 默认情况对于 Unix 系它为 `$HOME/go`, 对于 Windows 它为 `%USERPROFILE%/go` . `GOPATH` 中存放所有用户在 Go 开发中的代码, 使用的文件等. 它是工作目录的根目录, 而且约定拥有如下文件结构:

```bash
go/
├── bin     # location of compiled executable programs built by Go
├── pkg     # location of compiled package code (e.g.: .a)
└── src     # location of source file of Go (e.g.: .go, .c, .g, .s)
```

当用户使用命令 `go get` 来下载 Go 的库(模块)时, 将默认存放在 `GOPATH` 下. 如果 `GOPATH` 有多个取值, 则放置在第一个下. 

### GOPROXY

`GOPROXY` 环境变量某种意义上对于中国大陆的用户有着重要的地位. 它可以被理解为下载 Go 模块的地址. 因此在中国大陆使用 `VS Code` 的 `Golang` 相关功能时, 它会试图从默认仓库拉取代码并报错. 而如果换用中国大陆能够访问的[仓库][6]则可以顺利并且快速进行(事实上, 用户也可以手动下载这些 `go-tools` 的依赖项并本地安装, 参考[文章][8]):

```bash
~$ go env -w GOPROXY="https://goproxy.cn,direct"
~$ go env -w GO111MODULE="on"
```

而关于设置 `GOPROXY` 的根本用意与它同 Go 模块(module) 的联系则可以参考[文章][7]


[1]: https://en.wikipedia.org/wiki/Go_(programming_language)
[2]: https://golang.org/
[3]: https://golang.google.cn/
[4]: https://blog.golang.org/hello-china
[5]: https://golang.google.cn/dl/
[6]: https://goproxy.cn/
[7]: https://blog.golang.org/module-mirror-launch
[8]: https://zhuanlan.zhihu.com/p/53566172