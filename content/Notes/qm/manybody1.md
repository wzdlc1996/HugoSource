---
title: "Manybody: Coherent State"
date: 2019-02-25T12:44:33+08:00
draft: false
tags: ["statistical-phys"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "This is the first classnote for the class in PKU: 'Quantum Theory for Manybody System'. This note gives a brief introduction to Grassmann numbers and then define the generic coherent states of Boson and Fermion, and discuss their properties. The coherent state is widely used in the path integral expression for many body system, or the field theory."
---

# Boson Coherent State

## Definition and Properties

<em>[Definition]</em> : The generic form of the coherent state from a set of boson mode $\hat a_i$ is:


$$
\ket{\bm{z}}=\exp(\bm{z}\cdot \hat {\bm{a}}^\dagger)\ket{0}=\exp(\sum_{i}z_i \hat a_i^\dagger)\ket{0}
$$


<em>[Theorem]</em> : The overlap between two coherent states is:


$$
\bra{\bm{z}}\bm{z}'\rangle=\exp(\bm{z}^*\cdot \bm{z}')
$$


{{<fold "Proof">}}

With that $\hat b(\bm{z})^\dagger=\bm{z}\cdot \hat {\bm{a}}^\dagger$ , we have:


$$
[\hat b(\bm{z}), \hat b(\bm{z}')^\dagger]=\bm{z}^* \cdot \bm{z}'
$$


Then:


$$
\begin{aligned}
\bra{\bm{z}}\bm{z}'\rangle &= \bra{0}\exp\big(\sum_i z_i^* \hat a_i\big)\exp\big(\sum_j z'_j \hat a_j^\dagger\big)\ket{0} \\
&=\bra{0}e^{\hat b(z)} e^{\hat b(z')^\dagger} \ket{0} \\
&=\bra{0} [e^{\hat b(z)},e^{\hat b(z')^\dagger}]\ket{0} \\
&= \exp(\bm{z}^*\cdot \bm{z}')
\end{aligned}
$$


{{</fold>}}

This shows that different coherent states are not orthogonal, they form an over-complete basis.

<em>[Theorem]</em> : (The closure relation), with the integral measure:


$$
\td \mu(\bm{z})= \prod_i \frac {\td (\text{Re}z_i)\td (\text{Im}z_i)} {\pi}\exp\Big(-\sum_i |z_i|^2\Big)
$$


one has:


$$
\int \td \mu(\bm{z})\ket{\bm{z}}\bra{\bm{z}}=1
$$


{{<fold "Proof">}}

We need only prove that $\int \td \mu(\bm{z})\ket{\bm{z}}\bra{\bm{z}}\psi\rangle =\ket{\psi}$ . hold for arbitrary $\ket{\psi}$ . For the fact that:


$$
\hat a_i^\dagger \ket{0}=\frac {\partial} {\partial z_i} \ket{\bm{z}} \Bigg|_{\bm{z}=0}
$$


That means we can construct all many-particle states linearly from the coherent state. So we can directly choose the $\ket{\psi}=\ket{\bm{x}}$ is a coherent state. Then one has:


$$\begin{aligned}
\int \td \mu(\bm{z}) \ket{\bm{z}}\bra{\bm{z}}\bm{x}\rangle &= \int \td\mu(\bm{z})\ket{\bm{z}}e^{\bm{z}^*\cdot \bm{x}} \\
&= \prod_i \int \frac {\td u_i \td v_i} {\pi} e^{-u_i^2-v_i^2}e^{(u_i-\ti v_i)x_i} e^{(u_i+\ti v_i)\hat a_i^\dagger} \ket{0} \\
&=\prod_i \frac 1 \pi\Big( \int \td u e^{-u^2}e^{u x_i} e^{u \hat a_i^\dagger} \Big)\Big( \int \td u e^{-u^2}e^{-\ti u x_i} e^{\ti u \hat a_i^\dagger} \Big)\ket{0} \\
&= \prod_i \frac 1 \pi \cdot \pi\exp\{\frac {(x_i+\hat a_i^\dagger)^2} 4+\frac {(-\ti x_i+\ti \hat a_i^\dagger)^2} 4\} \ket{0}\\
&= \prod_i e^{x_i \hat a_i^\dagger} \ket{0}\\
&=\ket{\bm{x}}
\end{aligned}$$


q.e.d.

{{</fold>}}

_[Theorem]_ : The trace of an operator $\hat A$ over the entire Boson Fock space can be written with the coherent state:


$$
\text{Tr}\hat A:=\sum_{n_1,n_2,\cdots} \bra{n_1,n_2,\cdots}\hat A\ket{n_1,n_2,\cdots}=\int \td \mu(\bm{z}) \bra{\bm{z}}\hat A\ket{\bm{z}}
$$


{{<fold "Proof">}}

With the expansion of coherent state:


$$
\ket{\bm{z}}=\sum_{n=0}^{\infty} \frac 1 {n!} \Big(\sum_i z_i \hat a_i^\dagger\Big)^n \ket{0}=\sum_{n=0}^{\infty}\sum_{k_1+\cdots+k_m=n} \frac {z_1^{k_1}\cdots z_m^{k_m}} {k_1!\cdots k_m!}\prod_{j=1}^m \hat a_j^{\dagger k_j}\ket{0}
$$


Where we assume that the number of Boson modes is $m\lt \infty$ .  The second equality is caused by the Binomial theorem. Then one can find that component of the $n$ -Boson subspace is proportional to the $n$ -monomial of $\{z_1,\cdots\}$ . To prove the relation of trace, we need to show that the integral will vanish all matrix elements of $\hat A$ between two states of different occupation of Bosons. That is to show:


$$
\int \td \mu(\bm{z}) \ \prod_{i=1}^m z_i^{k_i} z_i^{* l_i}=0
$$


If exists $i$ so that $k_i\neq l_i$ .  We can directly compute it:


$$\begin{aligned}
\int \td \mu(\bm{z}) \prod_{i=1}^m z_i^{k_i}z_i^{* l_i} &= \prod_{i=1}^m \int \frac {\td z_i \td z_i^*} {2\pi \ti} e^{-|z_i|^2} z_i^{k_i}z_i^{*l_i} \\
&= \prod_{i=1}^{m} \int \frac {\td u \td v} {\pi} e^{-u^2 -v^2} (u^2+ v^2)^{\min (k_i,l_i)} (u\pm \ti v)^{\Delta_i} \\
&= \prod_{i=1}^m \int \frac {r \td r \td \phi} {\pi} e^{-r^2} r^{2\min(k_i,l_i)} r^{\Delta_i} e^{\pm \ti \Delta_i \phi}
\end{aligned}$$


The integral of $\phi$ vanishes if $\Delta_i\neq 0$ . Then we have:


$$
\int \td \mu(\bm{z}) \prod_{i=1}^m z_i^{k_i}z_i^{* l_i}=\delta_{k,l}\prod_{i=1}^m k_i!
$$


Then we have:


$$\begin{aligned}
\int \td \mu(\bm{z}) \bra{\bm{z}}\hat A\ket{\bm{z}}&=\sum_{n=0}^{\infty}\sum_{k_1+\cdots+k_m=n} \frac {\bra{0}\Big(\prod_{j=1}^m\hat a_j^{\dagger k_j}\Big)^\dagger\hat A\Big(\prod_{j=1}^m \hat a_j^{\dagger k_j}\Big)\ket{0}} {k_1!\cdots k_m!}\\
&=\sum_{n=0}^{\infty} \sum_{k_1+\cdots+k_m=n} \bra{k_1,\cdots}\hat A \ket{k_1,\cdots} = \text{Tr}\hat A
\end{aligned}$$


q.e.d.

{{</fold>}}

_[Theorem]_ : One can construct any many body states of Bosons from coherent state by:


$$
\ket{n_1,\cdots}:=\frac 1 {\sqrt{\prod_k n_k!}} \prod_k\hat a_k^{\dagger n_k}\ket{0}=\frac 1 {\sqrt{\prod_k n_k!}}\prod_k \frac {\partial^{n_k}} {\partial z_k^{n_k}}\ket{\bm{z}}\Bigg|_{\bm{z}=\bm{0}}
$$


_[Theorem]_ : the average and variance of the particle number $\hat N=\sum_i \hat a_i^\dagger \hat a_i$ is:


$$\begin{aligned}
\bar N &:= \frac {\bra{\bm{z}}\hat N\ket{\bm{z}}} {\bra{\bm{z}}\bm{z}\rangle} = \sum_i |z_i|^2 \\
(\Delta N)^2 &= \frac {\bra{\bm{z}}(\hat N-\bar N)^2\ket{\bm{z}}} {\bra{\bm{z}}\bm{z}\rangle} = \bar N
\end{aligned}$$


{{<fold "Proof">}}

With the property that:


$$
[\hat a_i , e^{\bm{z}\cdot \hat{\bm{a}}^\dagger}]=\sum_{n=1}^{\infty} \frac 1 {n!} [\hat a_i,(\sum_j z_j \hat a_j^\dagger)^n]=\sum_{n=1}^{\infty}\frac n {n!} z_i^n (\bm{z}\cdot \hat {\bm{a}}^\dagger)^{n-1}=z_i e^{\bm{z}\cdot \hat {\bm{a}}^\dagger}
$$


Then we have:


$$\begin{aligned}
\bra{\bm{z}}\hat N\ket{\bm{z}}&=\bra{0}\sum_i (\hat a_i e^{\bm{z}\cdot \hat {\bm{a}}^\dagger})^\dagger(\hat a_i e^{\bm{z}\cdot \hat {\bm{a}}^\dagger}) \ket{0} \\
&= \bra{0}\Big(\sum_i (z_i e^{\bm{z}\cdot \hat {\bm{a}}^\dagger}+e^{\bm{z}\cdot \hat {\bm{a}}^\dagger}\hat a_i)^\dagger(z_i e^{\bm{z}\cdot \hat {\bm{a}}^\dagger}+e^{\bm{z}\cdot \hat {\bm{a}}^\dagger}\hat a_i) \Big)\ket{0} \\
&= \sum_i z_i^* z_i \bra{\bm{z}}\bm{z}\rangle
\end{aligned}$$


Then, we have:


$$
\frac {\bra{\bm{z}}\hat N\ket{\bm{z}}} {\bra{\bm{z}}\bm{z}\rangle} = \sum_i |z_i|^2
$$


And with that $[\hat a_i^\dagger \hat a_i ,e^{\bm{z}\cdot \hat {\bm{a}}^\dagger}]=z_i\hat a_i^\dagger e^{\bm{z}\cdot \hat {\bm{a}}^\dagger}$ . We have:


$$\begin{aligned}
\bra{\bm{z}}\hat N^2\ket{\bm{z}}&= \bra{0}(\hat N e^{\bm{z}\cdot \hat {\bm{a}}^\dagger})^\dagger(\hat N e^{\bm{z}\cdot \hat {\bm{a}}^\dagger})\ket{0} \\
&= \bra{0} \big(\bm{z}\cdot \hat {\bm{a}}^\dagger e^{\bm{z}\cdot \hat {\bm{a}}^\dagger} + e^{\bm{z}\cdot \hat {\bm{a}}^\dagger}\hat N\big)^\dagger \big(\bm{z}\cdot \hat {\bm{a}}^\dagger e^{\bm{z}\cdot \hat {\bm{a}}^\dagger}+ e^{\bm{z}\cdot \hat {\bm{a}}^\dagger}\hat N\big)\ket{0} \\
&=\bra{0} \big(\bm{z}\cdot \hat {\bm{a}}^\dagger e^{\bm{z}\cdot \hat {\bm{a}}^\dagger} \big)^\dagger \big(\bm{z}\cdot \hat {\bm{a}}^\dagger e^{\bm{z}\cdot \hat {\bm{a}}^\dagger}\big)\ket{0} \\
&= \bra{\bm{z}}\sum_{m,n}z^*_mz_n \hat a_m \hat a_n^\dagger \ket{\bm{z}} \\
&=\sum_{m,n} z_m^* z_n \bra{\bm{z}}(\delta_{mn}+\hat a_n^\dagger \hat a_m)\ket{\bm{z}} \\
&= \sum_i |z_i|^2 \bra{\bm{z}}\bm{z}\rangle +\sum_{m,n}z_m^* z_n z_n^* z_m \bra{\bm{z}}\bm{z}\rangle
\end{aligned}$$


Then:


$$
\frac {\bra{\bm{z}}(\hat N-\bar N)^2\ket{\bm{z}}} {\bra{\bm{z}}\bm{z}\rangle} =\frac {\bra{\bm{z}}\hat N^2 \ket{\bm{z}}} {\bra{\bm{z}}\bm{z}\rangle } - \bar N^2 =\sum_i |z_i|^2 = \bar N
$$


q.e.d.

{{</fold>}}

## Coherent State Representation

Like the wavefunction in coordinate representation, we introduce the `Coherent State Representation`:

For an arbitrary quantum state $\ket{\psi}$ , we can define the `"wavefunction" in coherent representation` , is the complex function: $\psi(\bm{z}^*)=\bra{\bm{z}}\psi\rangle=\bra{0}e^{\bm{z}^*\cdot \hat {\bm{a}}}\ket{\psi}$ , which satisfies:


$$
\ket{\psi}=\int \td \mu(\bm{z}) \ket{\bm{z}}\bra{\bm{z}}\psi\rangle = \int \td \mu(\bm{z}) \ \psi(\bm{z}^*)\ket{\bm{z}}
$$


The representation of operators are:


$$\begin{aligned}
\hat a_i \rightarrow \frac {\partial} {\partial z_i^*} \ ; \ \hat a_i^\dagger \rightarrow z_i^*
\end{aligned}$$


And the matrix elements of normal ordered operators, which means that all creation operators are at the left side of annihilation operators, is:


$$
\bra{\bm{z}}A(\hat {\bm{a}}^\dagger,\hat {\bm{a}})\ket{\bm{z}'}=A(\bm{z}^*,\bm{z}') \exp(\bm{z}^*\cdot \bm{z}')
$$


{{<fold "Proof">}}

The creation/annihilation operator operating on an arbitrary quantum state induces:


$$\begin{aligned}
\hat a_i \psi(\bm{z}^*) &= \bra{\bm{z}}\hat a_i\ket{\psi} = \bra{0}\frac {\partial} {\partial z_i^*}e^{\bm{z}^*\cdot \hat {\bm{a}}}\ket{\psi} = (\partial_i\psi)(z_1^*,\cdots) \\
\hat a_i^\dagger \psi(\bm{z}^*) &= \bra{\bm{z}}\hat a_i^\dagger \ket{\psi} =z_i^* \psi(\bm{z}^*)
\end{aligned}$$


And then the normal ordered matrix elements:


$$\begin{aligned}
\bra{\bm{z}}A(\hat {\bm{a}}^\dagger,\hat {\bm{a}})\ket{\bm{z}'} &= \sum_{i,j} a_{ij} \bra{\bm{z}}\hat a_1^{i_1\dagger}\cdots \hat a_n^{i_n\dagger} \hat a_1^{j_1}\cdots a_n^{j_n}\ket{\bm{z}'} \\
&=\sum_{i,j}a_{ij}\prod_k (z_k^*)^{i_k} (z'_k)^{j_k} \bra{\bm{z}}\bm{z}'\rangle \\
&=A(\bm{z}^*,\bm{z}') \exp(\bm{z}^*\cdot \bm{z}')
\end{aligned}$$


q.e.d.

{{</fold>}}

At last, the Schrodinger equation in coherent representation is, with the Hamiltonian is normal ordered as $\hat H=H(\hat{\bm{a}}^\dagger,\hat{\bm{a}},t)$ :


$$
\ti\hbar \frac {\partial \psi(\bm{z}^*,t)} {\partial t}=\int \td \mu(\bm{z}') H(\bm{z}^*,\bm{z}',t)e^{\bm{z}^*\cdot \bm{z'}}\psi(\bm{z}'^*,t)
$$


{{<fold "Proof">}}

The generic form of Schrodinger equation is:


$$
\ti\hbar \frac {\td} {\td t}\ket{\psi(t)}=\hat H \ket{\psi(t)}
$$


Here we let:


$$
\ket{\psi(t)}=\int \td \mu(\bm{z})\ket{\bm{z}}\psi(\bm{z}^*,t)
$$


Then:


$$\begin{aligned}
\ti \hbar \frac {\td } {\td t}\ket{\psi(t)} &= \int \td\mu(\bm{z})\ket{\bm{z}} \Big(\ti \hbar \frac {\partial } {\partial t} \psi(\bm{z}^*,t)\Big) \\
&= \int \td \mu(\bm{z}) \int \td \mu(\bm{z}') \ket{\bm{z}}\bra{\bm{z}}\hat H\ket{\bm{z}'} \psi(\bm{z}'^*,t) \\
&= \int \td \mu(\bm{z}) \int \td \mu(\bm{z}')\ket{\bm{z}} H(\bm{z}^*,\bm{z}',t)e^{\bm{z}^*\cdot \bm{z}'} \psi(\bm{z}'^* ,t)
\end{aligned}$$


Then compare both sides, we have the Schrodinger equation:


$$
\ti\hbar \frac {\partial \psi(\bm{z}^*,t)} {\partial t}=\int \td \mu(\bm{z}') H(\bm{z}^*,\bm{z}',t)e^{\bm{z}^*\cdot \bm{z'}}\psi(\bm{z}'^*,t)
$$


{{</fold>}}



# Fermion Coherent State

## Introduction to Grassmann Algebra

<em>[Definition]</em> : `Grassmann algebra` $\mathcal{G}_N$ is defined by a set of generators $\{\xi_\alpha\} \ ; \ \alpha=1,\cdots,N$ usually over the `Complex field` ( $\mathbb{C}$ . These generators are called `Grassmann variables`, which are `anti-commutative`  and are commutative with ordinary complex numbers (c-number) $x\in \mathbb{C}$ :


$$
\xi_\alpha\xi_\beta+\xi_\beta\xi_\alpha=0 \ ; \ x\xi = \xi x
$$


A matrix representation of Grassmann variables requires matrices of dimension `at least` $2^N \times 2^N$ as we can always write $2^N$ distinct product of Grassmann variables, each generators can be included or excluded.

_[Definition]_ : `Grassmann numbers` forms a `vector space` naturally isomorphic to $\mathbb{C}^{2^N}$ , each element is the linear combination of $2^N$ products with ordinary complex number:


$$
\big\{1,\ \xi_\alpha,\ \xi_{\alpha_1}\xi_{\alpha_2},\ \cdots,\ \xi_{\alpha_1}\cdots\xi_{\alpha_n}\big\}
$$


A `Grassmann number` can be written as:


$$
g=z_0 + \sum_\alpha z_\alpha \xi_\alpha+\sum_{\alpha_1,\alpha_2}z_{\alpha_1,\alpha_2}\xi_{\alpha_1}\xi_{\alpha_2}+ \cdots
$$


Coefficients $z_\alpha,\cdots$ are ordinary complex numbers.

_[Definition]_ : The `conjugation` operation is defined on the `Grassmann algebra` $\mathcal{G}_{2N}$ with even number of generators. It is split into two sets: $\{\xi_1,\xi_2,\cdots,\xi_N\}$ and $\{\xi_1^*,\cdots,\xi_N^*\}$ . Define the `Conjugation` operation as the map : $(\cdot)^*:\mathcal{G}_{2N}\rightarrow \mathcal{G}_{2N}$ , and has such properties:


$$\begin{aligned}
(\xi_\alpha)^*&=\xi_\alpha^* \ ; \ \alpha=1,\cdots, N\\
(\xi_\alpha^*)^*&=\xi_\alpha \ ; \ \alpha=1,\cdots,N\\
(\xi_{\alpha_1}\cdots\xi_{\alpha_r})^* &= \xi_{\alpha_r}^*\cdots\xi_{\alpha_1}^*
\end{aligned}$$


And it is generalized to the product between Grassmann variables and c-numbers: if $x\in\mathbb{C}$ , then $(x\xi)^*=x^* \xi^*$ , where $x^*$ is the complex conjugation of $x$ .

_[Note]_ : We can't represent conjugation by taking Hermit adjoint in any finite dimensional matrix representation of $\mathcal{G}_{2N}$ . If we could, that is to say, we have a representation map $R: \mathcal{G}_{2N}\rightarrow \mathbb{C}^{d\times d}$ such that $R(\xi^*)=A^\dagger, R(\xi)=A$ , then according to the anti-commutation relation: $A^\dagger A +A A^\dagger =0\Rightarrow \text{Tr} A^\dagger A =\sum_{i,j}|A_{ij}|^2=0\Rightarrow A=0$ , which is a contradiction.

_[Definition]_ : The `analytic functions` on `Grassmann numbers` are Grassmann-number-valued functions whose coefficients are complex analytic.

Analytic functions for low dimension Grassmann algebra has simply forms because of the anti-commutation relation: $\xi\in \mathcal{G}_1\Rightarrow \xi^2=0$ :


$$\begin{aligned}
f(\xi) &= f_0+f_1 \xi \\
A(\xi,\xi^*) &= a_0 + a_1 \xi + a'_1 \xi^* + a_{12} \xi^*\xi
\end{aligned}$$


_[Definition]_ : In $\mathcal{G}_N$ , define `differentiation with respect to a Grassmann variable` $\xi_\alpha$ or `Derivative`, denote as $\partial_\alpha$ or $\partial_{\xi_\alpha}$ . A general function on $\mathcal{G}_N$ is, let $\xi_{\neg \alpha}$ denote the components of $\xi=(\xi_1,\cdots,\xi_N)$ excluding $\xi_\alpha$ , like: $\xi_{\neg \alpha}=(\xi_1,\cdots,\xi_{\alpha-1},\xi_{\alpha+1},\cdots,\xi_N)$ . Then any analytic function of $\mathcal{G}_N$ can be rewritten as:


$$
f=u(\xi_{\neg \alpha}) + \xi_\alpha v(\xi_{\neg \alpha})
$$


Then:


$$
\partial_\alpha f=v(\xi_{\neg \alpha})
$$


The order is important. Note that $\partial_\xi$ and $\partial_{\xi^*}$ is also anti-commutative.

`Integral` is defined to be a linear mapping with properties mimicking those of ordinary integrals. With the properties:


$$
\int \td \xi \ 1 =\int \td\xi^* \ 1 = 0 \  ; \ \int \td \xi \ \xi=\int \td \xi^* \xi^* = 1
$$


Note that $\int \td \xi^* \ \xi$ is not defined. Also `integral operators` are anti-commutative. And $\int \td \xi$ can be simply treated as an operator, returns $0$ when applied on $1$ , and returns $1$ when applied on $\xi$

<mark>It is obvious that, for Grassmann functions, $\partial_\xi=\int \td\xi$ </mark>

_[Note]_ : usually we treat the analytic function of Grassmann number as the function of Grassmann variables. In fact the full version of Grassmann function should be written as:


$$
f(g=a_0+\sum_{l=1}^N \sum_{i_1\lt \cdots\lt i_l}a_{i_1,\cdots,i_l}\xi_{i_1}\cdots \xi_{i_l} )=A_0(a)+\sum_{l=1}^N \sum_{i_1\lt \cdots\lt i_l}A_{i_1,\cdots,i_l}(a)\xi_{i_l}\cdots\xi_{i_l}
$$


The coefficients are functions of c-numbers. But when we just consider the differentiation and integration for Grassmann variables we do not need consider the form of those c-number functions in detail, that is because the commutation and independence between Grassmann variables and c-number, so they are invariant under the Grassmann differentiation and integration.

_[Theorem]_ : One can define the `Dirac function` for Grassmann variables: $\delta(\xi,\xi'):=-(\xi-\xi')$ . Then for arbitrary function $f(\xi)$ , one has:


$$
\int \td \xi' \delta(\xi,\xi')f(\xi')=f(\xi)
$$


{{<fold "Proof">}}

For arbitrary function, one has: $f(\xi)=f_0+f_1\xi$ . Then:


$$\begin{aligned}
\int \td \xi' \delta(\xi,\xi')f(\xi') &= \int \td \xi' \Big(-(\xi-\xi')(f_0+f_1\xi')\Big) \\
&= -\int \td \xi'  \xi f_0 -\int \td \xi' \xi f_1\xi'+\int \td \xi' \xi' f_0+\int \td \xi' \xi'f_1\xi'\\
&= -\int \td \xi'  \xi f_0 +f_1\int \td \xi' \xi' \xi+\int \td \xi' \xi' f_0+\int \td \xi' \xi'f_1\xi'\\
&=0+f_1\xi+f_0+0\\
&=f(\xi)
\end{aligned}$$


q.e.d.

{{</fold>}}

_[Theorem]_ : Scalar product of Grassmann functions:


$$
(f,g):=\int \td\xi^* \td \xi e^{-\xi^*\xi}f^*(\xi)g(\xi^*)=f_0^* g_0+f_1^*g_1
$$


{{<fold "Proof">}}

With that $f(\xi)=f_0+f_1\xi \ ; \ g(\xi)=g_0+g_1\xi$ , And:


$$
e^{-\xi^*\xi}=1-\xi^*\xi+\frac {\xi^*\xi\xi^*\xi} {2!}+\cdots=1-\xi^*\xi
$$


Because $\xi^*\xi\xi^*\xi=-\xi^*\xi^*\xi\xi=0$ . Then we have:


$$\begin{aligned}
(f,g)&= \int \td \xi^*\td \xi e^{-\xi^*\xi}f^*(\xi)g(\xi^*) \\
&= \int \td \xi^* \td \xi (1-\xi^*\xi)(f_0^*+f_1^* \xi)(g_0+g_1\xi^*) \\
&= \int \td \xi^* \td \xi f_1^* g_1 \xi \xi^* - \int \td \xi^* \td \xi \ \xi^*\xi f_0^* g_0\\
&= f_1^*g_1 + f_0^* g_0
\end{aligned}$$


q.e.d.

{{</fold>}}

_[Theorem]_ : Linear Change of Grassmann Varibles. Let $\xi=(\xi_1,\cdots,\xi_N)$ generate a Grassmann algebra, let $M$ be an invertible complex $N\times N$ matrix. And $b$ is a $N$ -vector formed by these generators (Note linear combinations of generators are still generators, i.e., following the anti-commute rule). Then one can define a new set of Grassmann generators by $\eta := M \xi+b$ . Then:


$$
\int \td \eta f(\eta) = (\det M)^{-1} \int \td \xi f(M\xi+b)
$$


Where $\td \eta=\td \eta_N\cdots\td \eta_1$ , and $\td \xi=\td \xi_N\cdots\td\xi_1$ , with the inverted order.


$$
 \int \td \eta \ f(\eta)=\frac 1 {\det M}\int \td \xi f(M\xi+b)
$$


Noting this variable substitution rule is different from the case of c-number: $\int \td x \ f(x) = \int \td z \frac {\partial(x)} {\partial(z)} f(x(z))$ i.e. for linear transform for c-numbers $x=M z+b$ , the Jacobian contributes the factor $\det M$ but not $(\det M)^{-1}$ !

{{<fold "Proof">}}

First, we prove a simple conclusion: shift symmetry of Grassmann integral, with $b\in\mathbb{C}^N$ , one has:


$$
\int \td \xi \ f(\xi+b)=\int \td \xi \ f(\xi)
$$


With the mathematical induction, when $N=1$ , it is:


$$
\int \td \xi \ f(\xi+b)=\int \td \xi (u+v\xi+vb)=v=\int \td f(\xi)
$$

Then assume the conclusion works for the case of $N=k$ , so we have for $N=k+1$ :


$$\begin{aligned}
\int \td\xi f(\xi+b) &= \int \td \xi_{k+1}\td\xi_k\cdots\td \xi_1 \Big(u(\xi_{\neg 1}+b_{\neg 1})+(\xi_1+b_1) v(\xi_{\neg 1}+b_{\neg 1})\Big) \\
&=\int \td \xi_{\neg 1} v(\xi_{\neg 1}+b_{\neg 1}) \\
&= \int \td \xi_{\neg 1} v(\xi_{\neg 1}) \\
&=\int \td \xi\Big(u(\xi_{\neg 1})+\xi_1 v(\xi_{\neg 1})\Big) \\
&=\int \td \xi f(\xi)
\end{aligned}$$


q.e.d.

So we need only consider the case of $b=0$ . Then we expand the function $f$ as:


$$
f(\eta)=A_0+A_1\eta_1+\cdots + A_N\eta_1\cdots\eta_N
$$


Coefficients $A_0\cdots A_N$ are c-numbers. The integral on the right side kills all terms except those that contain every $\xi_i$ in a product, or the term involves all $N$ variables:


$$\begin{aligned}
\int \td \xi \eta_1\cdots\eta_N &= \int \td \xi_N\cdots\td \xi_1 \prod_{i=1}^N \Big(\sum_{j=1}^N M_{ij}\xi_j\Big) \\
&=\int \td \xi_N\cdots\td \xi_1 \sum_{\sigma \in S_N} \prod_{i=1}^N M_{i,\sigma(i)}\xi_{\sigma(i)} \\
&=\int \td \xi_N \cdots \td \xi_1  \xi_1\cdots\xi_N\sum_{\sigma\in S_N} (-1)^\sigma \prod_{i=1}^N M_{i,\sigma(i)} \\
&= \det M
\end{aligned}$$


In which $\sigma$ are elements of $N$ -permutation group $S_N$ . Then we have the solution:


$$
\int \td \ \xi f(M\xi+b)=\det M \cdot \int \td \eta f(\eta)
$$


q.e.d.

{{</fold>}}

_[Theorem]_ : The Gaussian integral for Grassmann variables: (the $\prod_i$ 's order is from $i=1$ to $i=N$ : $\prod_i\xi_i=\xi_1\xi_2\cdots\xi_N$ , same in the following statements.)


$$
\int \prod_{i} \td \eta_i^*\td \eta_i \ \exp\Big(-\eta^\dagger H\eta+J^\dagger \eta +\eta^\dagger J\Big)=(\det H) e^{-J^\dagger H^{-1}J}
$$


Where $\{\eta_i,\eta_i^*\} , \{J_i,J_i^*\} \ ; \ i=1,\cdots,N$ are Grassmann variables, and $H$ is an invertible $2N\times 2N$ Hermitian matrix.

{{<fold "Proof">}}

With the linear variables change, let:  $\eta \rightarrow \eta+H^{-1}J \ ; \ \eta^\dagger\rightarrow \eta^\dagger+J^\dagger H^{-1}$ , and the integral should be invariant:


$$
I=\int \prod_i \td \eta_i^* \td \eta_i \exp\Big(-\eta^\dagger H\eta-J^\dagger H^{-1} J\Big)
$$


For the exponents terms are sums of even numbers of Grassmann generators, so they are commutative with each other. So the exponential function can be written as a product of two. And with the diagonalizaiton of $H$ and variables change, note the determinant is $1$ for the transformation, so we have:


$$\begin{aligned}
I&= e^{-J^\dagger H^{-1} J } \int \prod_i \td \eta_i^* \td \eta_i e^{-\sum_i \lambda_i \eta_i^*\eta} \\
&= e^{-J^\dagger H^{-1} J } \prod_i \int \td \eta_i^* \td \eta_i \Big(1- \lambda_i \eta_i^* \eta_i\Big)\\
&=e^{-J^\dagger H^{-1} J } \prod_i \lambda_i \\
&=\det H e^{-J^\dagger H^{-1} J }
\end{aligned}$$


q.e.d.

{{</fold>}}


## Fermion Coherent States

_[Definition]_ : The generic form of the coherent state from from a set of Fermion mode $\hat a_i$ is:


$$
\ket{\xi}=\exp\big(-\sum_i \xi_i \hat a_i^\dagger\big)\ket{0}=\prod_i (1-\xi_i \hat a_i^\dagger)\ket{0}
$$


Where $\xi_i$ are Grassmann generators, and the Fermion Fock space must be enlarged to define a coherent state. These Grassmann numbers and creation/annihilation operators are `anti-commutative`: $\xi\hat a+\hat a \xi=0$ . And $(\xi\hat a)^\dagger = \hat a^\dagger \xi^*$ . This is much different from the c-numbers and operators.

_[Theorem]_ : The overlap between two coherent states is:


$$
\bra{\xi}\xi'\rangle = e^{\xi^*\cdot \xi'}
$$


{{<fold "Proof">}}

With the definition of Fermion coherent state and the orthogonality of Fermion product state, if:


$$
\ket{\xi}=\ket{0}+\sum_i c_i(\xi) \hat a_i^\dagger \ket{0} + \sum_{i,j} c_{ij}(\xi) \hat a_i^\dagger \hat a_j^\dagger \ket{0}+\cdots
$$


then:


$$
\begin{aligned}
\braket{\xi|\xi'} &= \braket{0|0} + \sum_{i, j} \braket{0|\hat a_i c_i(\xi)^* c_j(\xi')\hat a_j^\dagger|0} \\
&\indent + \cdots + \sum_{i, j} \braket{0|\hat a_{i_1}\hat a_{i_2}\cdots \hat a_{i_n} c_{i_1}(\xi)^*c_{i_2}(\xi)^*\cdots c_{i_n}(\xi)^* c_{j_1}(\xi')\cdots c_{j_n}(\xi')\hat a_{j_1}^\dagger\cdots \hat a_{j_n}^\dagger|0} + \cdots\\
&= 1 + \sum_i c_i(\xi)^* c_i(\xi') \braket{0|\hat a_i \hat a_i^\dagger|0} \\
&\indent  + \cdots + \sum_{i} c_{i_1}(\xi)^*\cdots c_{i_n}(\xi)^* c_{i_1}(\xi')\cdots c_{i_n}(\xi') \braket{0|\hat a_{i_1}\hat a_{i_2}\cdots \hat a_{i_n} \hat a_{i_1}^\dagger\cdots \hat a_{i_n}^\dagger|0} \\
&=1 + \sum_i c_i(\xi)^* c_i(\xi') + \sum_{i_1, i_2}c_{i_1,i_2}(\xi)^* c_{i_1,i_2}(\xi')+\cdots  
\end{aligned}
$$

The coefficients:

$$
c_i(\xi)=-\xi_i \ ; \ c_{ij}(\xi)=- \xi_i\xi_j \ ; \ \cdots \ ; \ c_{i_1,\cdots,i_n}(\xi)=(-1)^{n(n+1)/2} \xi_{i_1}\cdots \xi_{i_n}
$$


Used the property that


$$
[\xi_i \hat a_i , \xi_j\hat a_j^\dagger]=\xi_i\hat a_i \xi_j\hat a_j^\dagger - \xi_j\hat a_j^\dagger \xi_i\hat a_i=-\xi_i\xi_j\{\hat a_i,\hat a_j^\dagger\}=-\xi_i\xi_j\delta_{ij}=0
$$


Because $\xi_i\xi_i=0$ . And $[\xi_i\hat a_i^\dagger,\hat \xi_j\hat a_j^\dagger]=0$ 

Then:


$$\begin{aligned}
\bra{\xi}\xi'\rangle &=1+\sum_{n=1}^{\infty} \sum_{i_1,\cdots,i_n} (-1)^{n(n+1)}\xi_{i_n}^* \xi_{i_{n-1}}^*\cdots \xi_{1}^* \xi'_1\cdots \xi'_{i_n} \\
&=1+\sum_{n=1}^{\infty}  \sum_{i_1,\cdots,i_n} (-1)^{n(n+1)}\prod_{k=1}^n \xi_{i_k}^*\xi'_{i_k}\\
&=1+\sum_{n=1}^{\infty}  \frac 1 {n!} \Big(\sum_{i}\xi_i^*\xi'_i\Big)^n \\
&=\exp(\xi^*\cdot \xi')
\end{aligned}$$


Where we used the property that product of two Grassmann numbers are commutative: $\xi_i\xi_j\xi_k\xi_l=\xi_k\xi_l\xi_i\xi_j$ . This property shows that a Grassmann number looks like a half of a c-number.

{{</fold>}}

_[Theorem]_ : The `closure relation` for Fermion coherent state:


$$
\int \prod_i \td \xi_i^* \td \xi_i e^{-\xi^*\cdot \xi}\ket{\xi}\bra{\xi}=1
$$


{{<fold "Proof">}}

Because Fermion coherent states cover all $n$ -particle states of Fermion:


$$
\hat a_{i_1}^\dagger \cdots \hat a_{i_n}^\dagger \ket{0}=(-1)^{n(n+1)/2} \partial_{\xi_{i_1}}\cdots \partial_{\xi_{i_n}}\ket{\xi}
$$


we need only check the closure relation on an arbitrary coherent state:


$$\begin{aligned}
\int \prod_i \td \xi_i^* \td \xi_i e^{-\xi^*\cdot \xi}\ket{\xi}\bra{\xi}\xi'\rangle &= \int \prod_i \td \xi_i^* \td \xi_i e^{-\xi^*\cdot \xi}\ket{\xi} e^{\xi^*\cdot \xi'} \\
&= \int \prod_i \td \xi_i^*\td \xi_i e^{-\xi^*\cdot (\xi-\xi')} \ket{\xi} \\
&= \prod_i -\int \td \xi_i \partial_{\xi_i^*} e^{-\xi^*\cdot (\xi-\xi')}\ket{\xi}
\end{aligned}$$


The derivative of $\xi^*$ can be computed independently:


$$
\partial_{\xi_i^*} e^{-\xi^*\cdot (\xi-\xi')}=\partial_{\xi_i^*}\prod_{j}\Big(1-\xi_j^*(\xi_j-\xi'_j)\Big)=-(\xi_j-\xi'_j)=-\delta(\xi'_j,\xi_j)
$$


Then we have:


$$
\int \prod_i \td \xi_i^* \td \xi_i e^{-\xi^*\cdot \xi}\ket{\xi}\bra{\xi}\xi'\rangle=\int \prod_i \td \xi_i \delta(\xi',\xi)\ket{\xi}=\ket{\xi'}
$$


q.e.d.

{{</fold>}}

_[Theorem]_ : The trace of an operator(Fermion operator, should have even numbers of Fermion field operators) is:


$$
\text{Tr} \hat A:=\sum_{n_1,\cdots}\bra{n_1,\cdots}\hat A \ket{n_1,\cdots}=\int \prod_i \td \xi_i^* \td \xi_i e^{-\xi^* \cdot \xi} \bra{-\xi}\hat A\ket{\xi}
$$


{{<fold "Proof">}}

With the definition of Coherent state, we can expand it with the occupation basis of Fermions, assume there are $N$ different fermion modes.


$$\begin{aligned}
\ket{\xi}&=e^{-\sum_i \xi_i \hat a_i^\dagger}\ket{0}=\ket{0}+\sum_{n=1}^N \frac {(-1)^n} {n!}\Big(\sum_{i=1}^N \xi_i \hat a_i^\dagger\Big)^n\ket{0}\\
&=\sum_{n=1}^N (-1)^n \sum_{k_1+\cdots+k_N=n,k_i=0,1}(\xi_1\hat a_1^\dagger)^{k_1}\cdots(\xi_N \hat a_N^\dagger)^{k_N}\ket{0}\\
&=\sum_{n=1}^N (-1)^n \sum_{k_1+\cdots+k_N=n,k_i=0,1} \xi_N^{k_N}\cdots \xi_1^{k_1}\ket{k_1,\cdots,k_N}
\end{aligned}$$


Where we used the property that $\xi_i \hat a_i$ is commutative with any operators and Grassman generators. Then we have, with the fact that $\hat A$ has even number of Fermion field operators so that it is commutative with any Grassmann generators:


$$\begin{aligned}
\int \prod_i \td \xi_i^* \td\xi_i e^{-\xi^*\cdot \xi} \bra{-\xi}\hat A\ket{\xi}&= \int \prod_i \td \xi_i^* \td\xi \prod_i (1-\xi_i^*\xi_i) \sum_{m,n}(-1)^{m+n} \\
&\indent \cdot \sum_{k,l}' (-1)^{n} (\xi_1^*)^{k_1}\cdots (\xi_N^*)^{k_N} \xi_N^{l_N}\cdots \xi_1^{k_1}\bra{k_1,\cdots,k_N}\hat A\ket{l_1,\cdots,l_N}
\end{aligned}$$


Where $\sum_{k,l}'=\sum_{k_1+\cdots+k_N=n,k_i=0,1}\sum_{l_1+\cdots+l_N=m,l_i=0,1}$ . Then we need to compute:


$$\begin{aligned}
&\int \prod_i \td \xi_i^* \td \xi_i \prod_i (1-\xi_i^*\xi_i) (\xi_1^*)^{k_1}\cdots (\xi_N^*)^{k_N} \xi_N^{l_N}\cdots \xi_1^{l_1} \\
=&\int \prod_{i=2}^N \td \xi_i^*\td\xi_i \Big(\int \td\xi_1^*\td\xi_1 (1-\xi_1^*\xi_1)\xi_1^{*k_1}\xi_1^{l_1}\Big) \prod_{i=2}^N (1-\xi_i^*\xi_i) \xi_2^{*k_2}\cdots\xi_N^{*k_N}\xi_N^{l_N}\cdots\xi_2^{l_2}(-1)^{l_1(l_2+\cdots+l_N+k_N+\cdots+k_2)}\\
=& (\delta_{k_1,0}\delta_{l_1,0}-\delta_{k_1,1}\delta_{l_1,1}) (-1)^{2n-l_1-k_1} \int \prod_{i=2}^N \td \xi_i^*\td\xi_i\prod_{i=2}^N (1-\xi_i^*\xi_i) \xi_2^{*k_2}\cdots\xi_N^{*k_N}\xi_N^{l_N}\cdots\xi_2^{l_2} \td \xi_i^*\td\xi_i\\
=&\prod_i (\delta_{k_i,0}\delta_{l_i,0}-\delta_{k_i,1}\delta_{l_i,1})\\
=&\prod_i ((-1)^{k_i}\delta_{k_i,l_i}) \\
=& (-1)^{n}\delta_{k,l}
\end{aligned}$$


Where we used that $1-\xi_i^*\xi$ is commutative with any other Grassmann generators. And if $l_i=k_i$ , $l_i+k_i$ will be always an even number. Then we have:


$$\begin{aligned}
\int \prod_i \td \xi_i^* \td\xi_i e^{-\xi^*\cdot \xi} \bra{-\xi}\hat A\ket{\xi}&= \int \prod_i \td \xi_i^* \td\xi \prod_i (1-\xi_i^*\xi_i) \sum_{m,n}(-1)^{m+n} \\
&\indent \cdot \sum_{k,l}' (-1)^{n} (\xi_1^*)^{k_1}\cdots (\xi_N^*)^{k_N} \xi_N^{l_N}\cdots \xi_1^{k_1}\bra{k_1,\cdots,k_N}\hat A\ket{l_1,\cdots,l_N}\\
&=\sum_{m,n}(-1)^{m+n} \sum_{k,l}' (-1)^{n+n} \delta_{k,l} \bra{k_1,\cdots,k_N}\hat A\ket{l_1,\cdots,l_N}\\
&=\sum_{n} \sum_{k_1+\cdots+k_N=n,k_i=0,1} \bra{k_1,\cdots,k_N}\hat A\ket{k_1,\cdots,k_N}\\
&=\text{Tr}\hat A
\end{aligned}$$


Q.E.D.

{{</fold>}}

_[Theorem]_ : One can construct any many body states of Fermions from coherent state by:


$$
\ket{n_1,\cdots}:=\prod_{k} \hat a_k^{\dagger n_k}\ket{0} =(-1)^{n_1+\cdots}\prod_i \partial_{\xi_i}^{n_i}\ket{0}
$$


_[Theorem]_ : The average and variance of the particle number $\hat N=\sum_i \hat a_i^\dagger \hat a_i$ is:


$$\begin{aligned}
\bar N&:= \frac {\bra{\xi}\hat N\ket{\xi}} {\bra{\xi}\xi\rangle} = \sum_i \xi_i^*\xi_i \\
(\Delta N)^2 & := \frac {\bra{\xi}(\hat N-\bar N)^2\ket{\xi}} {\bra{\xi}\xi\rangle} = \bar N
\end{aligned}$$


{{<fold "Proof">}}

With the commutator:


$$
[\hat a_i , \prod_j (1-\xi_j\hat a_j^\dagger)]=\prod_{j\lt i}(1-\xi_j\hat a_j^\dagger)[\hat a_i,1-\xi_i\hat a_i^\dagger]\prod_{j\gt i}(1-\xi_j\hat a_j^\dagger)=\prod_{j\lt i}(1-\xi_j\hat a_j^\dagger)\xi_i\prod_{j\gt i}(1-\xi_j\hat a_j^\dagger)
$$


Where we used the property that $1-\xi_j\hat a_j^\dagger$ is commutative with $a_i$ when $i\neq j$ , and $\hat a_i\xi_i=-\xi_i\hat a_i$ , the anti-commutation relation. Then:


$$
\bra{\xi}\hat a_i^\dagger \hat a_i\ket{\xi}=\bra{0}\Big(\prod_{j\neq i} (1-\xi_j\hat a_j^\dagger)\Big)^\dagger \xi_i^*\xi_i \prod_{j\neq i} (1-\xi_j\hat a_j^\dagger)\ket{0}=\xi_i^*\xi_i \exp(\sum_{j\neq i}\xi_j^*\xi_j)
$$


Then:


$$
\bar N=\frac {\bra{\xi}\hat N\ket{\xi}} {\bra{\xi}\xi\rangle}=\frac {\sum_i \xi_i^*\xi_i e^{\xi^*\cdot \xi-\xi_i^*\xi_i}} {e^{\xi^*\cdot \xi}}=\sum_i \xi_i^*\xi_i e^{-\xi_i^*\xi_i}=\sum_i \xi_i^*\xi_i
$$


The last identity is caused by $\xi^*\xi e^{-\xi^*\xi}=\xi^*\xi-\xi^*\xi\xi^*\xi=\xi^*\xi$ .

And with:


$$\begin{aligned}[]
[\hat N,\prod_j(1-\xi_j\hat a_j^\dagger)]&=\sum_i \hat a_i^\dagger \xi_i \prod_{j\neq i} (1-\xi_j\hat a_j^\dagger)\\
&=\sum_i e^{\sum_j -\xi_j\hat a_j^\dagger}-\sum_i\prod_{j\neq i}(1-\xi_j\hat a_j^\dagger)\\
&=e^{-\xi\cdot \hat{\bm{a}}^\dagger}\sum_i (1-e^{\xi_i\hat a_i^\dagger})\\
&=\sum_i (-\xi_i\hat a_i^\dagger) e^{-\xi\cdot \hat{\bm{a}}^\dagger}
\end{aligned}$$


Then:


$$\begin{aligned}
\bra{\xi}\hat N^2\ket{\xi}&=\bra{\xi}\sum_{i,j}\hat a_i \xi_i^* \xi_j \hat a_j^\dagger \ket{\xi}\\
&=\bra{\xi}\sum_{i,j}\xi_i^*\xi_j (-\hat a_j^\dagger \hat a_i+\delta_{ij})\ket{\xi}\\
&=-\sum_{i,j}\xi_i^*\xi_j \bra{\xi}\hat a_j^\dagger \hat a_i\ket{\xi} +\sum_{i}\xi_i^*\xi_i \bra{\xi}\xi\rangle \\
&=-\sum_{i,j}\xi_i^*\xi_j \xi_j^*\xi_i \bra{\xi}\xi\rangle + \bar N \bra{\xi}\xi\rangle\\
&=\bra{\xi}\xi\rangle \Big(\sum_{i,j}\xi_i^*\xi_j^*\xi_j\xi_i+\bar N\Big)=\bra{\xi}\xi\rangle \Big(\bar N^2+\bar N\Big)
\end{aligned}$$


Then with that $\bar N$ is the summation of pairs of Grassmann generators, so it is commutative with any single generators or creation/annihilation operators. Then:


$$\begin{aligned}
(\Delta N)^2 & := \frac {\bra{\xi}(\hat N-\bar N)^2\ket{\xi}} {\bra{\xi}\xi\rangle}\\
&=\frac {\bra{\xi}\hat N^2\ket{\xi}-\bar N^2} {\bra{\xi}\xi\rangle} \\
&=\bar N
\end{aligned}$$


q.e.d.

{{</fold>}}

## Coherent State Representation

Like the wavefunction in coordinate representation, we introduce the `Coherent State Representation`

For an arbitrary quantum state $\ket{\psi}$ , we can define the `"wavefunction" in coherent representation` , is the Grassmann function: $\psi(\xi^*)=\bra{\xi}\psi\rangle = \bra{0}e^{-\hat {\bm{a}} \cdot \xi^*}\ket{\psi}$ , which satisfies:


$$
\ket{\psi}=\int \prod_i \td \xi_i^*\td \xi_i e^{-\xi^*\cdot \xi} \ket{\xi}\bra{\xi}\psi\rangle=\int \prod_i \td \xi_i^*\td \xi_i e^{-\xi^*\cdot \xi} \ket{\xi}\psi(\xi^*)
$$


The representation of operators are:


$$
\hat a_i \rightarrow \partial_{\xi_i^*} \ ; \ \hat a_i^\dagger \rightarrow \xi_i^*
$$


And the matrix elements of normal ordered operators, which means that all creation operators are at the left side of annihilation operators, is:


$$
\bra{\xi}A(\hat {\bm{a}}^\dagger,\hat {\bm{a}})\ket{\xi'}=e^{\xi^*\cdot \xi'}A(\xi^*,\xi')
$$


{{<fold "Proof">}}

The creation/annihilation operator operating on an arbitrary quantum state induces:


$$\begin{aligned}
\hat a_i\psi(\xi^*) &= \bra{\xi}\hat a_i\ket{\psi} = \bra{0}\partial_{\xi_i^*} e^{\hat {\bm{a}} \cdot \xi^*}\ket{\psi} = (\partial_{\xi_i^*} \psi)(\xi)\\
\hat a_i^\dagger \psi(\xi^*) &= \bra{\xi}\hat a_i^\dagger \ket{\psi} = \xi_i^*\psi(\xi)
\end{aligned}$$


Where we used the commutation relation $[\hat a_i , \prod_j (1-\xi_j\hat a_j^\dagger)]=\prod_{j\lt i}(1-\xi_j\hat a_j^\dagger)\xi_i\prod_{j\gt i}(1-\xi_j\hat a_j^\dagger)$ , so we have:


$$
\hat a_i \ket{\xi}=\xi_i\ket{\xi}
$$


And the operator:


$$\begin{aligned}
\bra{\xi}A(\hat {\bm{a}}^\dagger , \hat {\bm{a}}) \ket{\xi'}&=\sum_{i,j} a_{ij} \bra{\xi}\hat a_1^{\dagger i_1}\cdots \hat a_N^{\dagger i_N} \hat a_N^{j_N}\cdots \hat a_1^{j_1}\ket{\xi'}\\
&=\sum_{i,j}a_{ij} (\xi_1^*)^{i_1}\cdots (\xi_N^*)^{i_N}\bra{\xi}\xi'\rangle(\xi'_N)^{j_N}\cdots (\xi'_1)^{j_1}\\
&=e^{\xi^*\cdot \xi'} \sum_{i,j} a_{ij} (\xi_1^*)^{i_1}\cdots (\xi_N^*)^{i_N}(\xi'_N)^{j_N}\cdots (\xi'_1)^{j_1}\\
&= e^{\xi^*\cdot \xi} A(\xi^*,\xi')
\end{aligned}$$


q.e.d.

{{</fold>}}

At last, the Schrodinger equation in coherent representation is, with the Hamiltonian is normal ordered as $\hat H=H(\hat {\bm{a}}^\dagger,\hat{\bm{a}},t)$ :


$$
\ti \hbar \frac {\partial \psi(\xi^*,t)} {\partial t}=\int \prod_{i} \td \xi_i'^*\td \xi_i' e^{\xi'^*\cdot \xi'} H(\xi^*,\xi',t) \psi(\xi'^*,t)
$$


{{<fold "Proof">}}

The generic form of Schrodinger equation is:


$$
\ti\hbar \frac {\td } {\td t}\ket{\psi(t)}=\hat H\ket{\psi(t)}
$$


Here we let:


$$
\ket{\psi(t)}=\int \prod_i \td \xi_i^*\td \xi_i e^{-\xi^*\cdot \xi} \ket{\xi}\psi(\xi^*,t)
$$


Then:


$$\begin{aligned}
\ti \hbar \frac {\td } {\td t} \ket{\psi(t)} &= \int \prod_i \td \xi_i^*\td \xi_i e^{-\xi^*\cdot \xi} \ket{\xi}\Big(\ti \hbar \frac {\partial} {\partial t} \psi(\xi^*,t)\Big) \\
&=\int \prod_i \td \xi_i^*\td \xi_i e^{-\xi^*\cdot \xi} \ket{\xi} \bra{\xi}\hat H\int \prod_{i} \td \xi_i'^*\td \xi_i' e^{\xi'^*\cdot \xi'}\ket{\xi'}\psi(\xi'^*,t) \\
&=\int \prod_i \td \xi_i^*\td \xi_i e^{-\xi^*\cdot \xi}\int \prod_{i} \td \xi_i'^*\td \xi_i' e^{\xi'^*\cdot \xi'} \ket{\xi} H(\xi^*,\xi',t) \psi(\xi'^*,t)
\end{aligned}$$


That is:


$$
\ti \hbar \frac {\partial \psi(\xi^*,t)} {\partial t}=\int \prod_{i} \td \xi_i'^*\td \xi_i' e^{\xi'^*\cdot \xi'} H(\xi^*,\xi',t) \psi(\xi'^*,t)
$$


q.e.d.

{{</fold>}}
