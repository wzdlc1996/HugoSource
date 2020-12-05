---
title: "Go 中的面向对象"
date: 2020-12-01T22:15:44+08:00
lastmod: "2020-11-27T02:19:00+08:00"
draft: true
tags: ["go"]
series: ["Go-Learning"]
categories: ["tools"]
toc: true
summary: "Go语言中如何实现面向对象编程(OOP), 以及这一个特性所依赖的若干特性的用法. 主要包括 struct, interface 等"
---

# 类与方法

## 自定义类型: struct

在 Go 语言中, 我们同样可以声明新的自定义类型. 类似于 `C` 中的 `struct` 和 `python` 中的 `class`. 它的定义形式如下:

```go
type typeName struct{
    var1    var1type
    var2    var2type
}

// Declare an instance of typeName and initialize
var instance typeName{var1: val1, var2: val2}
// This is the same as:
var instance typeName{val1, val2}

// Set value separatedly
instance.var1 = val1
instance.var2 = val2
```

同样的, 我们可以使用首字母的大小写来决定它是否可从外部访问. 

## 类型的方法

在 `python` 中我们可以定义一个类的类方法. 其函数原型的第一个参数总是被设置为 `self` 即调用它的类实例. 在 `go` 中, 这种定义方式(带有接收者的函数)定义的函数称为 `method`. 它定义的语法可用如下例子演示:

```go
type twoInts struct {
    int1    int
    int2    int
}

func (ti twoInts) getFirst() int{
    return ti.int1
}

var twoint twoInts{int1: 3, int2: 4}
var reslut int = twoint.getFirst() // Will be 3
```

我们声明了一种包含两个整数的 `struct`, 并且为它实现了一个方法, 能够返回其中的第一个整数. 不难看到这种声明同普通的函数无异, 仅需要在函数名前给出类型名称. 值得注意的是, 拥有不同类名作为参数的方法被视为不同的函数. 这种声明方式不止可以用于 `struct`, 在 `go` 中, 用户能够使用 `type` 关键字为内置类型定义别名, 并为这些别名设计不同的方法. 

