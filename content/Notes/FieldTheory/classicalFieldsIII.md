---
title: "Classical Fields: Maxwell Field"
date: 2018-12-11T15:21:14+08:00
lastmod: 2018-12-20T14:21:14+08:00
draft: false
tags: ["classical-theory"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
summary: "The classical field theory for vector field, so-called Maxwell Field. Together with the solution of Maxwell equation and some properties of Maxwell field."
---


# Maxwell Field

## Formalism

_[Definition]_ : Maxwell Field is the field of `4-vector`. The Lagrangian is Lorentz Scalar constructed by the so-called `Electromagnetic Tensor`:

<div>$$\mathcal{L}=-\frac 1 4 F^{\mu\nu}F_{\mu\nu}$$</div>

And where `$F_{\mu\nu}=\partial_{\mu}A_{\nu}-\partial_{\nu}A_{\mu}$` is an anti-symmetry tensor. This form will let the zero components of conjugate field vanish because it is independent of `$\partial_0 A_0$` .

We need to do some adjustment. And this will be used in the `Gupta-Bleuler Quantization` in the future. And the new Lagrangian is:

<div>$$\mathcal{L} = -\frac 1 4 F^{\mu\nu} F_{\mu\nu} - \frac {\xi} 2 (\partial^{\mu}A_\mu)^2$$</div>


Under the `Lorentz gauge` , we require `$\partial^\mu A_\mu=0$` , and this Lagrangian is the same to above.

We can write down the equation of motion:

<div>$$\partial_\nu\partial^\nu A_\mu - (1-\xi)\partial_\mu (\partial_\nu A^\nu)=0$$</div>

{{%fold "Proof"%}}

For the Euler-Lagrange Equation is linear respect to `$\mathcal{L}$` , we separate it into two terms:

<div>$$\mathcal{L}=\mathcal{L}_1+\mathcal{L}_2=-\frac 1 4 F^{\mu\nu} F_{\mu\nu}-\frac {\xi} 2 (\partial_\mu A^\mu)^2$$</div>

The first term:

<div>$$\begin{aligned}
&\indent \frac {\partial \mathcal{L}_1} {\partial A_\alpha}-\partial_\mu \frac {\partial \mathcal{L}_1} {\partial (\partial_\mu A_\alpha)}\\
&=\frac 1 4\partial_\beta\Big(\frac {\partial F^{\mu\nu}} {\partial(\partial_\beta A_\alpha)} F_{\mu\nu} +\frac {\partial F_{\mu\nu}} {\partial(\partial_\beta A_\alpha)} F^{\mu\nu} \Big) \\
&=\frac 1 4 \partial_\beta \Big(\eta^{\mu\gamma}\eta^{\nu\delta}(\delta_\beta^\gamma\delta_\alpha^\delta-\delta_\alpha^\gamma\delta_\beta^\delta)F_{\mu\nu}+(\delta_\beta^\mu\delta_\alpha^\nu-\delta_\alpha^\mu\delta_\beta^\nu)F^{\mu\nu} \Big) \\
&= \frac 1 4 \partial_\beta \big(F^{\beta\alpha}-F^{\alpha\beta}+F^{\beta\alpha}-F^{\alpha\beta}\big) \\
&= \partial_{\beta}F^{\beta\alpha} \\
&= \square A^\alpha-\partial^\alpha(\partial_\mu A^\mu)
\end{aligned}$$</div>

And the second term:

<div>$$\begin{aligned}
&\indent \frac {\partial \mathcal{L}_2} {\partial A_\alpha}-\partial_\mu \frac {\partial \mathcal{L}_2} {\partial (\partial_\mu A_\alpha)}\\
&=\frac {\xi} 2 \partial_{\mu} \frac {\partial (\partial_\nu A^\nu)^2} {\partial(\partial_\mu A_\alpha)}\\
&=\xi \partial_\mu \big(\partial_\nu A^\nu \eta^{\mu\alpha} \big) \\
&=\xi \partial^{\alpha}(\partial_\nu A^\nu)
\end{aligned}$$</div>

Then we have the equation of motion:

<div>$$\square A^\alpha - (1-\xi)\partial^\alpha (\partial_\mu A^\mu)=0$$</div>

Or:

<div>$$\square A_\alpha - (1-\xi)\partial_\alpha (\partial^\mu A_\mu)=0$$</div>


{{%/fold%}}

That is, under `Lorentz gauge` it is the same to the standard wave-equation. And under `Feynmann gauge` (`$\xi=1$`) it is also the standard form of wave-equation:

<div>$$\partial_\nu\partial^\nu A_\mu=\square A_\mu=0$$</div>

And the conjugate field:

<div>$$\pi^\mu\equiv \frac {\delta \mathcal{L}} {\delta (\partial_0 A_\mu)}=F^{\mu0}-\xi\eta^{\mu0}(\partial_\nu A^\nu)$$</div>

{{%fold "Proof"%}}

<div>$$\begin{aligned}
\pi^\mu &\equiv \frac {\delta \mathcal{L}} {\delta(\partial_0 A_\mu)} \\
&= -\frac 1 4 \Big(\frac {\delta F^{\alpha\beta}} {\delta(\partial_0 A_\mu)} F_{\alpha\beta} + \frac {\delta F_{\alpha\beta}} {\delta(\partial_0 A_\mu)} F^{\alpha\beta} \Big)- \xi \partial_\nu A^\nu \frac {\delta(\partial_\alpha A^\alpha)} {\delta(\partial_0 A_\mu)} \\
&=-\frac 1 2 \Big((\delta_\alpha^0\delta_\beta^\mu-\delta_\beta^0\delta_\alpha^\mu) F^{\alpha\beta} \Big)- \xi \partial_\nu A^\nu \delta^\mu_\gamma \delta^0_\alpha \eta^{\gamma\alpha} \\
&=F^{\mu0}-\xi\eta^{\mu0}(\partial_\nu A^\nu)
\end{aligned}$$</div>

{{%/fold%}}

And under the Feynman Gauge `$\xi=1$` we have the Hamiltonian:

<div>$$H = \frac 1 2 \int \td^3 \bm{x} \Big\{\sum_i \Big((\partial_0 A_i)^2 + (\nabla A_i)^2 \Big) -(\partial_0 A_0)^2 - (\nabla A_0)^2\Big\}$$</div>

{{%fold "Proof"%}}

<div>$$\begin{aligned}
\mathcal{H}&= \pi^\mu \partial_0 A_\mu-\mathcal{L} \\
&=F^{\mu0}\partial_0 A_\mu +\frac 1 4 F^{\mu\nu}F_{\mu\nu}-\xi \partial_0 A^0 \partial_\mu A^\mu +\frac 1 2 \xi(\partial_\mu A^{\mu})^2 \\
&=F^{\mu0}\partial_0 A_\mu + \frac 1 4 F^{\mu\nu} F_{\mu\nu}-\frac {\xi} 2 \partial_{\mu} A^{\mu} \sum_{\nu=0}^3 \partial_\nu A_{\nu} \\
&=(\partial^\mu A^0 - \partial^0 A^\mu)\partial_0 A_\mu + \frac 1 2 (\partial^\mu A^\nu \partial_\mu A_\nu-\partial^\mu A^\nu \partial_\nu A_\mu)-\frac {\xi} 2 \partial_{\mu} A^{\mu} \sum_{\nu=0}^3 \partial_\nu A_{\nu} \\
&=-\sum_i \partial_i A_0 \partial_0 A_i+\sum_i (\partial_0 A_i)^2 + \frac 1 2 \Big((\partial_0 A_0)^2 -\sum_i (\partial_i A_0)^2-\sum_i (\partial_0 A_i)^2 +\sum_{i,j} (\partial_i A_j)^2 \\
&\indent -(\partial_0 A_0)^2+2\sum_i \partial_i A_0 \partial_0 A_i- \sum_{i,j}\partial_i A_j \partial_j A_i \Big) - \frac {\xi} 2 \partial_\mu A^\mu \sum_{\nu=0}^3 (\partial_\nu A_\nu) \\
&= \frac 1 2 \Big(\sum_i (\partial_0 A_i)^2 - (\nabla A_0)^2+\sum_i (\nabla A_i)^2-\sum_{i,j}\partial_i A_j \partial_j A_i \Big) - \frac {\xi} 2 \partial_\mu A^\mu (\partial_0 A_0 + \nabla \cdot \bm{A}) \\
&= \frac 1 2 \sum_i \Big((\partial_0 A_i)^2 + (\nabla A_i)^2 \Big) - \frac 1 2 (\nabla A_0)^2 -\frac 1 2 \Big(\nabla \cdot \big((\bm{A}\cdot \nabla) \bm{A} \big)-(\bm{A}\cdot \nabla)(\nabla\cdot \bm{A}) \Big) \\
&\indent -\frac \xi 2 \big((\partial_0 A_0)^2-(\nabla \cdot \bm{A})^2 \big) \\
&=\frac 1 2 \Big[\sum_i \Big((\partial_0 A_i)^2 + (\nabla A_i)^2 \Big) -\xi (\partial_0 A_0)^2 - (\nabla A_0)^2 \Big] - \frac 1 2 \nabla\cdot \Big((\bm{A}\cdot \nabla)\bm{A}-\xi (\nabla \cdot \bm{A})\bm{A} \Big) \\
&\indent + \frac {1-\xi} 2 (\bm{A}\cdot \nabla)(\nabla\cdot \bm{A})
\end{aligned}$$</div>

When `$\xi =1$` , the last term vanishes. And the full-divergence has no contribution to the spatial integral, we have:

<div>$$H = \frac 1 2 \int \td^3 \bm{x} \Big\{\sum_i \Big((\partial_0 A_i)^2 + (\nabla A_i)^2 \Big) -(\partial_0 A_0)^2 - (\nabla A_0)^2\Big\}$$</div>

{{%/fold%}}

## Solution of The Equation

We will solve the equation of motion under `Feynman Gauge` . Which lead to the wave equation form:

<div>$$\square A^\mu=0$$</div>

Similarly, we use the Fourier transform as:

<div>$$A_\mu(x)=\int \frac {\td \omega \td^3\bm{k}} {(2\pi)^{4/2}} e^{\ti \bm{k}\cdot \bm{x}-\ti \omega t} a_\mu(\bm{k},\omega)$$</div>

Remembering that `$A_\mu$` is a real-vector, and `$k=(\omega,\bm{k})$` , with the dispersion relation: `$k_\mu k^\mu=0$`, the generic solution can be written as:

<div>$$A_\mu(x)=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}}\sqrt{\frac 1 {2\omega_{|\bm{k}|}}}\sum_{\lambda=0}^3 \Big(a(\bm{k},\lambda)\epsilon_{\mu}(k,\lambda)e^{-\ti k_\nu x^\nu}+a(\bm{k},\lambda)^* \epsilon_{\mu}(k,\lambda)^* e^{\ti k_\nu x^\nu} \Big)$$</div>

Where `$\omega_{|\bm{k}|}=|\bm{k}|^2$` , `$\lambda$` denotes four polarization direction, and `$\epsilon_\mu(k,\lambda)$` is the corresponding vector.

Here we make a convention about the polarization vector `$\epsilon_{\mu}(k,\lambda)$` :

_[Convention]_ : The polarization vector is defined by the following two condition:

1.  For special situation: `$k_0=(k,0,0,k)$`:

    <div>$$\begin{aligned}
    \epsilon(k_0,0) &= (1,0,0,0)\\
    \epsilon(k_0,1) &= (0,1,0,0) \\
    \epsilon(k_0,2) &= (0,0,1,0) \\
    \epsilon(k_0,3) &= (0,0,0,1)
    \end{aligned}$$</div>

    Or simply: `$\epsilon_\mu(k_0,\lambda) = \delta_{\mu}^\lambda$`

2.  For generic situation, let `$\Lambda(\omega)k_0=k$`, is the Lorentz transform for vector. We have:

    <div>$$\epsilon(k,\lambda)=\Lambda(\omega)\epsilon(k_0,\lambda)$$</div>

_[Theorem]_ : with such the convention, we can prove that polarization vector has the following properties:

1.  `$\epsilon_\mu(k,\lambda)\epsilon^{\mu*}(k,\lambda')=\eta_{\lambda,\lambda'}$`
2.  `$\sum_{\lambda=0}^3 \eta_{\lambda,\lambda}\epsilon^{\mu}(k,\lambda)\epsilon^{\nu *}(k,\lambda)=\eta^{\mu\nu}$`

For linear-polarization , there will be no need for the conjugation. But for circular polarization, we need the conjugation.

{{%fold "Proof"%}}

We prove this theorem by linear-polarization. For circular-polarization is similar.

1.  Let `$\Lambda k_0=k$` , we have `$\epsilon_\mu(k,\lambda)=\Lambda_\mu^{\indent \nu}\epsilon_\nu(k_0,\lambda)=\Lambda_{\mu}^{\indent \nu}\delta_{\nu}^\lambda=\Lambda_\mu^{\indent \lambda}$` . Then:

    <div>$$\epsilon_\mu(k,\lambda)\epsilon^{\mu*}(k,\lambda')=\Lambda_{\mu}^{\indent \lambda}\Lambda^{\mu\lambda'}=\eta^{\lambda\lambda'}=\eta_{\lambda\lambda'}$$</div>

2.  With that `$\epsilon_\mu(k,\lambda)=\Lambda_\mu^{\indent \lambda}$` , we have:

    <div>$$\sum_{\lambda=0}^3 \eta_{\lambda,\lambda}\epsilon^\mu(k,\lambda)\epsilon^{\nu*}(k,\lambda)=\eta_{\lambda,\lambda'}\Lambda^{\mu\lambda}\Lambda^{\nu\lambda'}=\eta^{\mu\nu}$$</div>

{{%/fold%}}

It is obvious that `$\epsilon_\mu(k,\lambda=1,2)k^\mu=0$`. We usually call them `Horizontal Polarization` or `Physical Polarization` . Call `$\epsilon_\mu(k,\lambda=3)$` `Vertical Polarization` , call `$\epsilon_\mu(k,\lambda=0)$` `Scalar Polarization` . The latter two are also called as `Non-physical Polarization`.
