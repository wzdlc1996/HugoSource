---
title: "Prove the Irrationality of Square Root of 2"
date: 2022-02-19T00:21:44+08:00
draft: true
tags: ["math", "number-theory"]
categories: ["Interest-Math"]
toc: true
summary: "Various methods of proving the irrationality of the square root of integer 2. Including the method by contradiction and the direct way."
---

# Introduction

The problem comes from the discussion about the proof of irrationality of $\sqrt{2}$ in the text books are usually by contradiction. In this essay, we discuss various methods for proving this problem. These proofs are mainly collected from the Internet. The origins would be specified as detailed as possible.

# Proof by Contradiction

This is the most popular method to prove such irrationality. 

## Classical way

To prove the irrationality of $\sqrt{2}$, we assume it is a rational number. Then one should have $\sqrt{2} = p / q$ in which two integers $p, q$ are relative prime. Then by the definition of $\sqrt{2}$ one has

$$
p^2 = 2 q^2.
$$

This means $p^2$ should be even. This means $p$ should also be even. And one can denote $p = 2k \ ; \ k \in \mathbb{N}$. Substitute this into the relation between $p, q$, one has $q^2 = 2k^2$. This means $q$ should also be even. This makes contradiction to our assumption: $p, q$ are relative prime.

Such contradiction proves the irrationality of $\sqrt{2}$

Other proofs by contradiction are mainly the variation of the procedure to construct contradiction by $p^2 = 2q^2$. We list some of the beautiful proofs below.

## The number of even factors


# Directive Method

## By infinite continued fraction

A **continued fraction(无穷连分数)** is an expression as([wikipedia/Continued_fraction][2]) 

$$
a_0 + \frac {b_1} {a_1 + \frac {b_2} {a_2 + \cdots}}.
$$

This proof is based on the lemma:

> Any finite continued fraction is rational, while any infinite continued fraction is irrational

{{% fold "Proof" %}}

To prove this, 

{{% /fold %}}

## By geometric way

# Reference

[1]: https://www.zhihu.com/question/61798983
[2]: https://en.wikipedia.org/wiki/Continued_fraction

1. [知乎: 如何证明根号 2 是无理数？][1]
2. []