---
title: "Classical Fields: Maxwell Field"
date: 2018-12-11T15:21:14+08:00
draft: true
tags: ["Physics"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
---


# Maxwell Field

## Formalism

_[Definition]_ : Maxwell Field is the field of `4-vector`. The Lagrangian is Lorentz Scalar constructed by the so-called `Electromagnetic Tensor`:

$$\mathcal{L}=-\frac 1 4 F^{\mu\nu}F_{\mu\nu}$$

And where \(F_{\mu\nu}=\partial_{\mu}A_{\nu}-\partial_{\nu}A_{\mu}\) is an anti-symmetry tensor. This form will let the zero components of conjugate field vanish because it is independent of \(\partial_0 A_0\) .

We need to do some adjustment. And this will be used in the `Gupta-Bleuler Quantization` in the future. And the new Lagrangian is:

$$\mathcal{L} = -\frac 1 4 F^{\mu\nu} F_{\mu\nu} - \frac {\xi} 2 (\partial^{\mu}A_\mu)^2$$


Under the `Lorentz gauge` , we require \(\partial^\mu A_\mu=0\) , and this Lagrangian is the same to above.

We can write down the equation of motion:

$$\partial_\nu\partial^\nu A_\mu - (1-\xi)\partial_\mu (\partial_\nu A^\nu)=0$$

{{%fold "Proof"%}}

For the Euler-Lagrange Equation is linear respect to \(\mathcal{L}\) , we separate it into two terms:

$$\mathcal{L}=\mathcal{L}_1+\mathcal{L}_2=-\frac 1 4 F^{\mu\nu} F_{\mu\nu}-\frac {\xi} 2 (\partial_\mu A^\mu)^2$$

The first term:

$$\begin{aligned}
&\indent \frac {\partial \mathcal{L}_1} {\partial A_\alpha}-\partial_\mu \frac {\partial \mathcal{L}_1} {\partial (\partial_\mu A_\alpha)}\\
&=\frac 1 4\partial_\beta\Big(\frac {\partial F^{\mu\nu}} {\partial(\partial_\beta A_\alpha)} F_{\mu\nu} +\frac {\partial F_{\mu\nu}} {\partial(\partial_\beta A_\alpha)} F^{\mu\nu} \Big) \\
&=\frac 1 4 \partial_\beta \Big(\eta^{\mu\gamma}\eta^{\nu\delta}(\delta_\beta^\gamma\delta_\alpha^\delta-\delta_\alpha^\gamma\delta_\beta^\delta)F_{\mu\nu}+(\delta_\beta^\mu\delta_\alpha^\nu-\delta_\alpha^\mu\delta_\beta^\nu)F^{\mu\nu} \Big) \\
&= \frac 1 4 \partial_\beta \big(F^{\beta\alpha}-F^{\alpha\beta}+F^{\beta\alpha}-F^{\alpha\beta}\big) \\
&= \partial_{\beta}F^{\beta\alpha} \\
&= \square A^\alpha-\partial^\alpha(\partial_\mu A^\mu)
\end{aligned}$$

And the second term:

$$\begin{aligned}
&\indent \frac {\partial \mathcal{L}_2} {\partial A_\alpha}-\partial_\mu \frac {\partial \mathcal{L}_2} {\partial (\partial_\mu A_\alpha)}\\
&=\frac {\xi} 2 \partial_{\mu} \frac {\partial (\partial_\nu A^\nu)^2} {\partial(\partial_\mu A_\alpha)}\\
&=\xi \partial_\mu \big(\partial_\nu A^\nu \eta^{\mu\alpha} \big) \\
&=\xi \partial^{\alpha}(\partial_\nu A^\nu)
\end{aligned}$$

Then we have the equation of motion:

$$\square A^\alpha - (1-\xi)\partial^\alpha (\partial_\mu A^\mu)=0$$

Or:

$$\square A_\alpha - (1-\xi)\partial_\alpha (\partial^\mu A_\mu)=0$$


{{%/fold%}}

That is, under `Lorentz gauge` it is the same to the standard wave-equation. But under `Feynmann gauge` (\(\xi=1\)) it is also the standard form of wave-equation:

$$\partial_\nu\partial^\nu A_\mu=\square A_\mu=0$$

And the conjugate field:

$$\pi^\mu\equiv \frac {\delta \mathcal{L}} {\delta (\partial_0 A_\mu)}=F^{\mu0}-\xi\eta^{\mu0}(\partial_\nu A^\nu)$$

{{%fold "Proof"%}}

$$\begin{aligned}
\pi^\mu &\equiv \frac {\delta \mathcal{L}} {\delta(\partial_0 A_\mu)} \\
&= -\frac 1 4 \Big(\frac {\delta F^{\alpha\beta}} {\delta(\partial_0 A_\mu)} F_{\alpha\beta} + \frac {\delta F_{\alpha\beta}} {\delta(\partial_0 A_\mu)} F^{\alpha\beta} \Big)- \xi \partial_\nu A^\nu \frac {\delta(\partial_\alpha A^\alpha)} {\delta(\partial_0 A_\mu)} \\
&=-\frac 1 2 \Big((\delta_\alpha^0\delta_\beta^\mu-\delta_\beta^0\delta_\alpha^\mu) F^{\alpha\beta} \Big)- \xi \partial_\nu A^\nu \delta^\mu_\gamma \delta^0_\alpha \eta^{\gamma\alpha} \\
&=F^{\mu0}-\xi\eta^{\mu0}(\partial_\nu A^\nu)
\end{aligned}$$

{{%/fold%}}

And under the Feynman Gauge \(\xi=1\) we have the Hamiltonian:

$$H = \frac 1 2 \int \td^3 \bm{x} \Big\{\sum_i \Big((\partial_0 A_i)^2 + (\nabla A_i)^2 \Big) -(\partial_0 A_0)^2 - (\nabla A_0)^2\Big\}$$

{{%fold "Proof"%}}

$$\begin{aligned}
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
\end{aligned}$$

When \(\xi =1\) , the last term vanishes. And the full-divergence has no contribution to the spatial integral, we have:

$$H = \frac 1 2 \int \td^3 \bm{x} \Big\{\sum_i \Big((\partial_0 A_i)^2 + (\nabla A_i)^2 \Big) -(\partial_0 A_0)^2 - (\nabla A_0)^2\Big\}$$

{{%/fold%}}
