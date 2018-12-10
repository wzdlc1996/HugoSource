---
title: "Perturbation Theory"
date: 2018-12-03T13:24:17+08:00
draft: true
tags: ["Physics"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
---
# Time-Independent Perturbation Theory

## Nondegenerate Perturbation Theory: The Goal

Given a Hamiltonian \(\hat H_0\) with `nondegenerate` energy eigenvalues \(E_n^{(0)}\) and eigenstates \(\ket{E_n^{(0)}}\) , where \(n=0,1,\cdots\) . Compute the eigenvalues and eigenstates of \(\hat H= \hat H_0+\lambda \hat V\) , `in terms of series of the "small parameter"` \(\lambda\)

Under the basis \(\{\ket{E_n^{(0)}}\}\) , \(\hat H_0\) is diagonal matrix, and \(\hat V\) is a generic one. The diagonal elements of \(\hat V\) will cause the shift of energy without changing the eigenstates; off-diagonal elements mixes eigenstates and shift the energy.

Usually we will find that the off-diagonal elements of \(\hat V\) cause the `level-repulsion` , that is to say adding the off-diagonal elements tends to increase the energy gap.

_[Assumption]_ : Assume that \(\lambda\) is sufficiently small, so that \(\ket{n,\lambda}\) of \(\hat H\) is adiabatically connected to \(\ket{E_n^{(0)}}\) . And we can write the (`asymptotical`) series expansion of the eigenstates and eigenvalues:

$$\begin{aligned}
E_n &= E_n^{(0)} + \lambda E_n^{(1)} + \lambda^2 E_n^{(2)} + \cdots \\
\ket{n,\lambda} &= \ket{E_n^{(0)}} + \lambda \ket{E_n^{(1)}} + \lambda^2 \ket{E_n^{(2)}} + \cdots
\end{aligned}$$

Note the \(\ket{n,\lambda}\) here is `NOT` normalized. And \(\ket{E_n^{(k\gt 0)}}\) are orthogonal to \(\ket{E_n^{(0)}}\) .

## Formal Perturbation Expansion

We define some `projection operators` :

$$\begin{aligned}
\hat P &= \ket{E_n^{(0)}}\bra {E_n^{(0)}} \\
\hat Q &= 1 - \hat P = \sum_{m\neq n} \ket{E_m^{(0)}}\bra{E_m^{(0)}} \\
\end{aligned}$$

They have such properties: \([\hat H,\hat P]=[\hat H,\hat Q]=0\) , and \(\hat H\hat P = E_n^{(0)}\hat P, \hat P\hat Q=0\) .

Consider the eigenstate of \(\hat H=\hat H_0+\lambda \hat V\) : \(\hat H\ket{n,\lambda}=E_n\ket{n,\lambda}\) , with \(\ket{n,\lambda}=\hat P\ket{n,\lambda}+\hat Q\ket{n,\lambda}\) :

$$(E_n-\hat H_0)\hat Q \ket{n,\lambda} = (E_n^{(0)}-E_n)\hat P \ket{n,\lambda} + \lambda \hat V \ket{n,\lambda} $$

Apply \(\hat Q\) on both side we have: \(\hat Q (E_n-\hat H_0)\hat Q \ket{n,\lambda}=\lambda \hat Q \hat V\ket{n,\lambda}\). Its eigenvalues are \(E_n-E_{m\neq n}^{(0)}\). Assuming they are not zero, we have the "inverse" of it: \(\hat G = \hat Q (E_n-\hat H_0)^{-1}\hat Q\) . Then we can solve the perturbation as:

$$\hat Q \ket{n,\lambda} = \lambda \hat G \hat Q \hat V \ket{n,\lambda} = \lambda \hat G \hat V\ket{n,\lambda}$$

Then we have the solution of eigenstate \(\ket{n,\lambda}\):

$$\begin{aligned}
\ket{n,\lambda} &= \hat P \ket{n,\lambda} + \lambda \hat G \hat V \ket{n,\lambda} \\
& \Rightarrow \ket{n,\lambda} = (1-\lambda \hat G \hat V)^{-1}\hat P \ket{n,\lambda} = \sum_{k=0}^{\infty} \lambda^k (\hat G \hat V)^k \hat P \ket{n,\lambda} \\
& (E_n-E_n^{(0)}) \bra{n,\lambda}\hat P \ket{n,\lambda} = \bra{n,\lambda} \lambda \hat P \hat V \ket{n,\lambda}
\end{aligned}$$


Where \(\hat P \ket{n,\lambda} \propto \ket{E_n^{(0)}}\) , usually we just choose they are `EQUAL`, and the finally normalize it.

And the new eigenvalue can be obtained by apply \(\bra{n,\lambda}\hat P\) on both side of the eigen equation, with \(\hat P \hat H_0 \hat Q =\hat P \hat Q=0\):
$$(E_n-E_n^{(0)})\bra{n,\lambda}\hat P \ket{n,\lambda} = \lambda \bra{n,\lambda} \hat P \hat V \ket{n,\lambda}$$

## Formal Perturbation Expansion: Summary

We have the following perturbation expansion:

$$\begin{aligned}
\ket{n,\lambda}=(1-\lambda \hat G \hat V)^{-1}\hat P_n \ket{n,\lambda} &= \sum_{k=0}^{\infty} \lambda^k (\hat G_n \hat V)^k \ket{E_n^{(0)}} \\
(E_n-E_n^{(0)})\bra{n,\lambda}\hat P_n \ket{n,\lambda} &= \lambda \bra{n,\lambda} \hat P_n \hat V \ket{n,\lambda}
\end{aligned}$$

Where \(\hat G_n=\hat Q_n (E_n-\hat H_0)^{-1}\hat Q_n\) . They do not really solve the eignestates and eigenvalues in terms of known quantities, for \(E_n\) is unknown but contained by \(\hat G_n\).

1.  First order perturbation:

    $$\begin{aligned}
    \ket{n,\lambda} &= \ket{E_n^{(0)}} + O(\lambda) \\
    E_n &= E_n^{(0)} + \lambda \bra{E_n^{(0)}}\hat V \ket{E_n^{(0)}} + O(\lambda^2)
    \end{aligned}$$

    Here the energy is up to \(O(\lambda^2)\) but state-vector is up to \(O(\lambda)\) . This is caused by that energy is the quadratic form of state-vector.

2.  Second order perturbation:

    $$\begin{aligned}
    \ket{n,\lambda} &= \ket{E_n^{(0)}} + \lambda \sum_{m\neq n} \frac {\bra{E_m^{(0)}}\hat V \ket{E_n^{(0)}}} {E_m^{(0)}-E_n^{(0)}} \ket{E_m^{(0)}} + O(\lambda^2) \\
    E_n &= E_n^{(0)} + \lambda \bra{E_n^{(0)}}\hat V \ket{E_n^{(0)}} + \lambda^2 \sum_{m\neq n} \frac {|\bra{E_m^{(0)}}\hat V \ket{E_n^{(0)}}|^2} {E_m^{(0)}-E_n^{(0)}} + O(\lambda^3)
    \end{aligned}$$

    {{%fold "Proof"%}}

To compute the Second order expansion, we have:

$$\begin{aligned}
\ket{n,\lambda} &= \ket{E_n^{(0)}} + \lambda \hat G_n \hat V \ket{E_n^{(0)}} \\
&= \ket{E_n^{(0)}} + \lambda \sum_m \hat G_n \ket{E_m^{(0)}}\bra{E_m^{(0)}} \hat V \ket{E_n^{(0)}} \\
&= \ket{E_n^{(0)}} + \lambda \sum_{m\neq n} \frac {V_{mn}} {E_n-E_m^{(0)}} \ket{E_m^{(0)}} \\
&\approx \ket{E_n^{(0)}} + \lambda \sum_{m\neq n} \frac {V_{mn}} {E_n^{(0)}-E_m^{(0)}} \ket{E_m^{(0)}}
\end{aligned}$$

up to the first order of \(\lambda\). And the energy:

$$\begin{aligned}
E_n-E_n^{(0)} &= \lambda V_{nn} + \bra{E_n^{(0)}} \lambda \hat V \lambda \sum_{m\neq n} \frac {V_{mn}} {E_n^{(0)}-E_m^{(0)}} \ket{E_m^{(0)}} \\
&=\lambda V_{nn} + \lambda^2 \sum_{m\neq n} \frac {V_{mn}V_{nm}} {E_n^{(0)}-E_m^{(0)}}
\end{aligned}$$

q.e.d.

    {{%/fold%}}

_[Theorem]_ : The normalization factor of \(\ket{n,\lambda}=(1-\lambda \hat G_n\hat V)^{-1}\ket{E_n^{0}}\) is that \(\bra{n,\lambda} n,\lambda \rangle = (Z_n)^{-1} \geq 1\) , has the property that:

$$Z_n = \frac {\partial} {\partial E_n^{(0)}} E_n$$

{{%fold "Proof"%}}

Firstly, we need to compute the partial derivative of \(\hat G_n\) :

$$\frac {\partial} {\partial E_n^{(0)}} \hat G_n = \hat Q_n \frac {-1} {(E_n-\hat H_0)^2} \hat Q \frac {\partial E_n} {\partial E_n^{(0)}}=-\hat G_n^2 \frac {\partial E_n} {\partial E_n^{(0)}}$$

With the perturbation expansion of energy is:

$$(E_n-E_n^{(0)}) \bra{n,\lambda}\hat P \ket{n,\lambda} = \lambda \bra{n,\lambda}\hat P \hat V \ket{n,\lambda}$$

With \(\bra{n,\lambda}\hat P_n \ket{n,\lambda}=(\bra{n,\lambda}\hat P_n)\hat P_n \ket{n,\lambda}=\bra{E_n^{(0)}}E_n^{(0)}\rangle = 1\), We have:

$$\begin{aligned}
\frac {\partial E_n} {\partial E_n^{(0)}} - 1 &= \lambda \bra{E_n^{(0)}}\hat V \frac 1 {\partial E_n^{(0)}} \sum_{k=0}^{\infty} \lambda^k (\hat G_n \hat V)^k \ket{E_n^{(0)}} \\
&= - \frac {\partial E_n} {\partial E_n^{(0)}} \bra{E_n^{(0)}} \hat V \sum_{k=1}^{\infty} \lambda^{k+1} \sum_{l=0}^{k-1} (\hat G_n \hat V)^l \hat G_n (\hat G_n\hat V)^{k-l} \ket{E_n^{(0)}} \\
\Rightarrow \ \Big(\frac {\partial E_n} {\partial E_n^{(0)}}\Big)^{-1} &= \sum_{k=1}^{\infty} \lambda^{k+1} \sum_{l=0}^{k-1} \bra{E_n^{(0)}} (\hat V \hat G_n)^l (\hat G_n \hat V)^{k-l} \ket{E_n^{(0)}}
\end{aligned}$$

While we have:

$$(Z_n)^{-1} = \sum_{k=0}^{\infty}\sum_{k'=0}^{\infty} \lambda^{k+k'} \bra{E_n} (\hat V \hat G_n)^{k}(\hat G_n\hat V)^{k'}\ket{E_n^{(0)})} $$

For when \(k,k'=0\) , the terms vanish because of the projector. we have:

$$\begin{aligned}
(Z_n)^{-1} &= \sum_{k=1}^{\infty}\sum_{k'=1}^{\infty} \lambda^{k+k'} \bra{E_n} (\hat V \hat G_n)^{k}(\hat G_n\hat V)^{k'}\ket{E_n^{(0)})} \\
&=\sum_{k=1}^{\infty} \lambda^{k+1} \sum_{l=0}^{k-1} \bra{E_n^{(0)}} (\hat V \hat G_n)^l (\hat G_n \hat V)^{k-l} \ket{E_n^{(0)}}
=\Big(\frac {\partial E_n} {\partial E_n^{(0)}}\Big)^{-1}
\end{aligned}$$

q.e.d.

{{%/fold%}}

## Degenerate Perturbation Theory

If energy level \(E_n^{(0)}\) has g-fold degenerate, then we have \(g\) orthonormal basis noted as \(\ket{E_{n,\alpha}^{(0)}} \ ; \ \alpha=1,\cdots, g\) . The projection operators are defined as:

$$\begin{aligned}
\hat P_n &= \sum_\alpha \ket{E_{n,\alpha}^{(0)}}\bra{E_{n,\alpha}^{(0)}} \\
\hat Q_n &= 1- \hat P_n
\end{aligned}$$

The formal expansion are the same, but \(\hat P_n \ket{n,\lambda} = \sum_{\alpha} c_\alpha \ket{E_{n,\alpha}^{(0)}}\) . Where \(c_\alpha\) are unknown coefficients. Then we have the result with these unknown coefficients, together with another equation to determine them:

$$\begin{aligned}
\ket{n,\lambda} = (1-\lambda \hat G_n \hat V)^{-1} \hat P_n \ket{n,\lambda} &= \sum_{k=0}^{\infty} \lambda^k (\hat G_n\hat V)^k \sum_{\alpha=1}^g c_\alpha \ket{E_{n,\alpha}^{(0)}} \\
(E_n-E_n^{(0)}) c_\alpha &=  \sum_{k=0}^{\infty} \sum_{\beta=1}^g \bra{E_{n,\alpha}^{(0)}} \hat V\lambda^{k+1}(\hat G_n\hat V)^k \ket{E_{n,\beta}^{(0)}} c_\beta
\end{aligned}$$

The second equation usually is called `secular equation` . It requires that the determinate is zero, which can determine \(E_n\) and \(c_\alpha\) .

1.  First order perturbation:

    $$\ket{n,\lambda} = \sum_{\alpha} c_\alpha \ket{E_{n,\alpha}^{(0)}}+O(\lambda)$$

    And the energy shift and \(c_\alpha\) can be obtained by the equation:

    $$(E_n-E_n^{(0)})c_\alpha = \lambda \sum_{\beta=1}^g V_{n,\alpha;n,\beta} c_\beta+O(\lambda^2)$$

    up to \(\lambda^2\) , where \(V_{n,\alpha;m,\beta}=\bra{E_{n,\alpha}^{(0)}}\hat V \ket{E_{m,\beta}^{(0)}}\)

2.  Second order perturbation:

    $$\ket{n,\lambda} = \sum_{\alpha} c_\alpha\Big( \ket{E_{n,\alpha}^{(0)}} + \sum_{m\neq n} \frac {\lambda V_{m,n\alpha}} {E_n-E_m^{(0)}} \ket{E_m^{(0)}} \Big) + O(\lambda^2)$$

    And \(c_\alpha, E_n\) can be obtained by:

    $$(E_n-E_n^{(0)})c_\alpha = \sum_{\beta=1}^g \Big(\lambda V_{n,\alpha;n,\beta}+ \sum_{m\neq n} \frac {\lambda^2V_{n,\alpha;m}V_{m;n,\beta}} {E_n^{(0)}-E_m^{(0)}} \Big) c_\beta + O(\lambda^3)$$

_[Theorem]_ : if the first order perturbation has `completely` remove the degeneracy, we can use `normalized` \(c_\alpha\), namely \(\sum_\alpha |c_\alpha|^2=1\) from 1st perturbation here to compute the energy shift, and:

$$E_n-E_n^{(0)} = \sum_{\alpha,\beta=1}^g \Big(\lambda V_{n,\alpha;n,\beta}+ \sum_{m\neq n} \frac {\lambda^2V_{n,\alpha;m}V_{m;n,\beta}} {E_n^{(0)}-E_m^{(0)}} \Big) c_\alpha^* c_\beta + O(\lambda^3)$$

{{%fold "Proof"%}}

In the 1st perturbation, we actually solve the coefficients by the equation \(\bm{V} \bm{c} = \Delta \bm{c}\), where \(\bm{c}=(c_\alpha)^T, \bm{V}=\lambda(V_{n,\alpha;n,\beta}) , \Delta = E_n-E_n^{(0)}\).

The 1st perturbation can completely remove the degeneracy means that this equation has \(g\) different solution, namely matrix \(\bm{V}\) has \(g\) different eigenvalues \(\Delta\) .

In the following order perturbation we need to solve the equation \(\Delta' \bm{c}'=( \bm{V}+\lambda \bm{W}) \bm{c}'\) , or the matrix \(\bm{V}+\lambda \bm{W}\) 's eigenvectors and eigenvalues, this is a nondegenerate perturbation question.

Its first order perturbation result is that \(\bm{c}'=\bm{c}+O(\lambda)\) , with \(\bm{c}\) normalized, we have:

$$\Delta' = \Delta + \lambda \bm{c}^\dagger \bm{W} \bm{c} + O(\lambda^2\|\bm{W}\|)$$

That is:

$$E_n-E_n^{(0)} = \bm{c}^\dagger \Big(\lambda V_{n,\alpha;n,\beta}+ \sum_{m\neq n} \frac {\lambda^2V_{n,\alpha;m}V_{m;n,\beta}} {E_n^{(0)}-E_m^{(0)}} \Big)\bm{c} + O(\lambda^3)$$

q.e.d.

{{%/fold%}}

# Perturbation Expansion as Unitary Transformations
