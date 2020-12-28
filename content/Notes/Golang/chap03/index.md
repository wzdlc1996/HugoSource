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

除了上面这种声明方式以外, 如果我们需要用方法来修改对象的内容, 那么我们必须传入对象的指针. 这只需要将第一个参数更改为指针参数即可, 后面的方法调用则不需要改动. 事实上在 `go` 中, 方法的调用可以选择指针调用也可以选择值调用. 换句话说, 在调用时 `p.method()` 和 `(&p).method()` 总是等价的, 而且接收指针和值的方法如果同名(尽管参数不同), 仍被认为是 **相同** 方法. 编译时会报 `redeclaration` 的错误. 但仍然需要注意, 而且只有指针接收者的函数才能够更改实例的元素.

## 类继承

在 `go` 中, 实现继承的语法被称作为匿名字段. 以下是一个使用上面的 `twoInts` 类派生得到的格点类:

```go
type lattice struct{
    twoInts // Anonymous
    sum    float32
}

func (la *lattice) calSum() float32 {
    la.sum = la.twoInts.int1 + la.twoInts.int2
    // In fact, parents' method is callable, so we can also use:
    // la.sum = la.getFirst() + la.twoInts.int2
    return la.sum
}
```

当我们需要为子类重写同名元素或者方法时, 调用父类的元素或方法就必须显式地调用, 比如上面的 `la.twoInts.getFirst()`. 在 `go` 中, 形如 `.` 的操作符总是从外向里寻找.

# Interface: Go 中的抽象

`Go` 中的 `Interface` 是一种自定义数据结构, 它可以被理解为一种别名, 用于描述一组实现了给定方法集合的类. 