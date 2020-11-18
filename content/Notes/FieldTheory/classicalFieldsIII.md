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

{{< mathjax >}}
$$\mathcal{L}=-\frac 1 4 F^{\mu\nu}F_{\mu\nu}$$
{{< /mathjax >}}

And where $F_{\mu\nu}=\partial_{\mu}A_{\nu}-\partial_{\nu}A_{\mu}$ is an anti-symmetry tensor. This form will let the zero components of conjugate field vanish because it is independent of $\partial_0 A_0$ .

We need to do some adjustment. And this will be used in the `Gupta-Bleuler Quantization` in the future. And the new Lagrangian is:

{{< mathjax >}}
$$\mathcal{L} = -\frac 1 4 F^{\mu\nu} F_{\mu\nu} - \frac {\xi} 2 (\partial^{\mu}A_\mu)^2$$
{{< /mathjax >}}


Under the `Lorentz gauge` , we require $\partial^\mu A_\mu=0$ , and this Lagrangian is the same to above.

We can write down the equation of motion:

{{< mathjax >}}
$$\partial_\nu\partial^\nu A_\mu - (1-\xi)\partial_\mu (\partial_\nu A^\nu)=0$$
{{< /mathjax >}}

{{<fold "Proof">}}

For the Euler-Lagrange Equation is linear respect to $\mathcal{L}$ , we separate it into two terms:

{{< mathjax >}}
$$\mathcal{L}=\mathcal{L}_1+\mathcal{L}_2=-\frac 1 4 F^{\mu\nu} F_{\mu\nu}-\frac {\xi} 2 (\partial_\mu A^\mu)^2$$
{{< /mathjax >}}

The first term:

{{< mathjax >}}
$$\begin{aligned}
&\indent \frac {\partial \mathcal{L}_1} {\partial A_\alpha}-\partial_\mu \frac {\partial \mathcal{L}_1} {\partial (\partial_\mu A_\alpha)}\\
&=\frac 1 4\partial_\beta\Big(\frac {\partial F^{\mu\nu}} {\partial(\partial_\beta A_\alpha)} F_{\mu\nu} +\frac {\partial F_{\mu\nu}} {\partial(\partial_\beta A_\alpha)} F^{\mu\nu} \Big) \\
&=\frac 1 4 \partial_\beta \Big(\eta^{\mu\gamma}\eta^{\nu\delta}(\delta_\beta^\gamma\delta_\alpha^\delta-\delta_\alpha^\gamma\delta_\beta^\delta)F_{\mu\nu}+(\delta_\beta^\mu\delta_\alpha^\nu-\delta_\alpha^\mu\delta_\beta^\nu)F^{\mu\nu} \Big) \\
&= \frac 1 4 \partial_\beta \big(F^{\beta\alpha}-F^{\alpha\beta}+F^{\beta\alpha}-F^{\alpha\beta}\big) \\
&= \partial_{\beta}F^{\beta\alpha} \\
&= \square A^\alpha-\partial^\alpha(\partial_\mu A^\mu)
\end{aligned}$$
{{< /mathjax >}}

And the second term:

{{< mathjax >}}
$$\begin{aligned}
&\indent \frac {\partial \mathcal{L}_2} {\partial A_\alpha}-\partial_\mu \frac {\partial \mathcal{L}_2} {\partial (\partial_\mu A_\alpha)}\\
&=\frac {\xi} 2 \partial_{\mu} \frac {\partial (\partial_\nu A^\nu)^2} {\partial(\partial_\mu A_\alpha)}\\
&=\xi \partial_\mu \big(\partial_\nu A^\nu \eta^{\mu\alpha} \big) \\
&=\xi \partial^{\alpha}(\partial_\nu A^\nu)
\end{aligned}$$
{{< /mathjax >}}

Then we have the equation of motion:

{{< mathjax >}}
$$\square A^\alpha - (1-\xi)\partial^\alpha (\partial_\mu A^\mu)=0$$
{{< /mathjax >}}

Or:

{{< mathjax >}}
$$\square A_\alpha - (1-\xi)\partial_\alpha (\partial^\mu A_\mu)=0$$
{{< /mathjax >}}


{{</fold>}}

That is, under `Lorentz gauge` it is the same to the standard wave-equation. And under `Feynman gauge` ($\xi=1$) it is also the standard form of wave-equation:

{{< mathjax >}}
$$\partial_\nu\partial^\nu A_\mu=\square A_\mu=0$$
{{< /mathjax >}}

And the conjugate field:

{{< mathjax >}}
$$\pi^\mu\equiv \frac {\delta \mathcal{L}} {\delta (\partial_0 A_\mu)}=F^{\mu0}-\xi\eta^{\mu0}(\partial_\nu A^\nu)$$
{{< /mathjax >}}

{{<fold "Proof">}}

{{< mathjax >}}
$$\begin{aligned}
\pi^\mu &\equiv \frac {\delta \mathcal{L}} {\delta(\partial_0 A_\mu)} \\
&= -\frac 1 4 \Big(\frac {\delta F^{\alpha\beta}} {\delta(\partial_0 A_\mu)} F_{\alpha\beta} + \frac {\delta F_{\alpha\beta}} {\delta(\partial_0 A_\mu)} F^{\alpha\beta} \Big)- \xi \partial_\nu A^\nu \frac {\delta(\partial_\alpha A^\alpha)} {\delta(\partial_0 A_\mu)} \\
&=-\frac 1 2 \Big((\delta_\alpha^0\delta_\beta^\mu-\delta_\beta^0\delta_\alpha^\mu) F^{\alpha\beta} \Big)- \xi \partial_\nu A^\nu \delta^\mu_\gamma \delta^0_\alpha \eta^{\gamma\alpha} \\
&=F^{\mu0}-\xi\eta^{\mu0}(\partial_\nu A^\nu)
\end{aligned}$$
{{< /mathjax >}}

{{</fold>}}

And under the Feynman Gauge $\xi=1$ we have the Hamiltonian:

{{< mathjax >}}
$$H = \frac 1 2 \int \td^3 \bm{x} \Big\{\sum_i \Big((\partial_0 A_i)^2 + (\nabla A_i)^2 \Big) -(\partial_0 A_0)^2 - (\nabla A_0)^2\Big\}$$
{{< /mathjax >}}

{{<fold "Proof">}}

{{< mathjax >}}
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
{{< /mathjax >}}

When $\xi =1$ , the last term vanishes. And the full-divergence has no contribution to the spatial integral, we have:

{{< mathjax >}}
$$H = \frac 1 2 \int \td^3 \bm{x} \Big\{\sum_i \Big((\partial_0 A_i)^2 + (\nabla A_i)^2 \Big) -(\partial_0 A_0)^2 - (\nabla A_0)^2\Big\}$$
{{< /mathjax >}}

{{</fold>}}

## Solution of The Equation

We will solve the equation of motion under `Feynman Gauge` . Which lead to the wave equation form:

{{< mathjax >}}
$$\square A^\mu=0$$
{{< /mathjax >}}

Similarly, we use the Fourier transform as:

{{< mathjax >}}
$$A_\mu(x)=\int \frac {\td \omega \td^3\bm{k}} {(2\pi)^{4/2}} e^{\ti \bm{k}\cdot \bm{x}-\ti \omega t} a_\mu(\bm{k},\omega)$$
{{< /mathjax >}}

Remembering that $A_\mu$ is a real-vector, and $k=(\omega_{|\bm{k}|},\bm{k})$ , with the dispersion relation: $k_\mu k^\mu=0$, the generic solution can be written as:

{{< mathjax >}}
$$A_\mu(x)=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}}\sqrt{\frac 1 {2\omega_{|\bm{k}|}}}\sum_{\lambda=0}^3 \Big(a(\bm{k},\lambda)\epsilon_{\mu}(\bm{k},\lambda)e^{-\ti k_\nu x^\nu}+a(\bm{k},\lambda)^* \epsilon_{\mu}(\bm{k},\lambda)^* e^{\ti k_\nu x^\nu} \Big)$$
{{< /mathjax >}}

Where $\omega_{|\bm{k}|}=|\bm{k}|$ , $\lambda$ denotes four polarization direction, and $\epsilon_\mu(\bm{k},\lambda)$ is the corresponding vector.

Here we make a convention about the polarization vector $\epsilon_{\mu}(\bm{k},\lambda)$ :

_[Convention]_ : The polarization vector is defined by the following two condition:

1.  For special situation: $k_{\text{special}}=(|\bm{k}|,0,0,|\bm{k}|)$:

    {{< mathjax >}}
$$\begin{aligned}
    \epsilon((0,0,|\bm{k}|),0) &= (1,0,0,0)\\
    \epsilon((0,0,|\bm{k}|),1) &= (0,1,0,0) \\
    \epsilon((0,0,|\bm{k}|),2) &= (0,0,1,0) \\
    \epsilon((0,0,|\bm{k}|),3) &= (0,0,0,1)
    \end{aligned}$$
{{< /mathjax >}}

    Or simply: $\epsilon^\mu(\bm{k}_{\text{special}},\lambda) = \delta^{\mu}_\lambda$ . This setting means that they are polarization direction of linear-polarization. For circular-polarization, they could be complex-vector.

2.  For generic situation, let $\Lambda(\omega)k_{\text{special}}=k$, that is to say $k_{\text{special}}^0=|\bm{k}|$ , or no boost, is the Lorentz transform for vector. We have:

    {{< mathjax >}}
$$\epsilon(\bm{k},\lambda)=\Lambda(\omega)\epsilon(k_{\text{special}},\lambda)$$
{{< /mathjax >}}

_[Theorem]_ : with such the convention, we can prove that polarization vector has the following properties:

1.  $\epsilon_\mu(\bm{k},\lambda)\epsilon^{\mu*}(\bm{k},\lambda')=\eta_{\lambda,\lambda'}$
2.  $\sum_{\lambda=0}^3 \eta_{\lambda,\lambda}\epsilon^{\mu}(\bm{k},\lambda)\epsilon^{\nu *}(\bm{k},\lambda)=\eta^{\mu\nu}$

For linear-polarization , there will be no need for the conjugation. But for circular polarization, we need the conjugation.

{{<fold "Proof">}}

We prove this theorem by linear-polarization. For circular-polarization is similar.

1.  Let $\Lambda k_{\text{special}}=k$ , we have $\epsilon_\mu(\bm{k},\lambda)=\Lambda_\mu^{\indent \nu}\epsilon_\nu(\bm{k}_{\text{special}},\lambda)=\Lambda_{\mu}^{\indent \nu}\eta_{\nu\lambda}=\Lambda_{\mu\lambda}$ . Then:

    {{< mathjax >}}
$$\epsilon_\mu(\bm{k},\lambda)\epsilon^{\mu*}(\bm{k},\lambda')=\Lambda_{\mu\lambda}\Lambda^{\mu}_{\lambda'}=\eta_{\lambda\lambda'}$$
{{< /mathjax >}}

2.  With that $\epsilon_\mu(\bm{k},\lambda)=\Lambda_{\mu\lambda}$ , we have:

    {{< mathjax >}}
$$\sum_{\lambda=0}^3 \eta^{\lambda,\lambda}\epsilon^\mu(\bm{k},\lambda)\epsilon^{\nu*}(\bm{k},\lambda)=\eta_{\lambda,\lambda'}\Lambda^{\mu\lambda}\Lambda^{\nu\lambda'}=\eta^{\mu\nu}$$
{{< /mathjax >}}

{{</fold>}}

It is obvious that $\epsilon_\mu(\bm{k},\lambda=1,2)k^\mu=0$. We usually call them `Horizontal Polarization` or `Physical Polarization` . Call $\epsilon_\mu(\bm{k},\lambda=3)$ `Vertical Polarization` , call $\epsilon_\mu(\bm{k},\lambda=0)$ `Scalar Polarization` . The latter two are also called as `Non-physical Polarization`.

## Plane-Wave Expansion and Hamiltonian

At last we will write the Hamiltonian of Maxwell Field as the quadratic form of coefficients $a(\bm{k},\lambda)$ in plane-wave expansion. Like what we did before, we will hold the order of them so that the formulas can be used in quantum theory in the future. Our discussion will only cover the result of `Feynman gauge` $\xi=1$ :

_[Theorem]_ : With the plane wave expansion and Feynman gauge, one can write the Hamiltonian as:

{{< mathjax >}}
$$H=\frac 1 2 \int \td^3 \bm{k} \ \omega_{|\bm{k}|} \Big( \sum_{\lambda=1}^3\big( a(\bm{k},\lambda)a(\bm{k},\lambda)^*+a(\bm{k},\lambda)^* a(\bm{k},\lambda)\big) - \big(a(\bm{k},0)a(\bm{k},0)^*+a(\bm{k},0)^* a(\bm{k},0)\big) \Big) $$
{{< /mathjax >}}

{{<fold "Proof">}}

With the plane wave expansion we have:

{{< mathjax >}}
$$A^\mu (x)=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{\lambda=0}^3 \Big(a(\bm{k},\lambda)\epsilon^\mu(\bm{k},\lambda)e^{-\ti k_\nu x^\nu}+a(\bm{k},\lambda)^* \epsilon^{\mu}(\bm{k},\lambda)^* e^{\ti k_\nu x^\nu}\Big)$$
{{< /mathjax >}}

And the Hamiltonian with Feynman gauge can be written as:

{{< mathjax >}}
$$H = \frac 1 2 \int \td^3 \bm{x} \Big\{\sum_i \Big((\partial_0 A_i)^2 + (\nabla A_i)^2 \Big) -(\partial_0 A_0)^2 - (\nabla A_0)^2\Big\}$$
{{< /mathjax >}}

We will compute this integral:

{{< mathjax >}}
$$\begin{aligned}
I_\nu&= \int \td^3 \bm{x} \sum_\mu (\partial_\mu A_\nu)^2 \\
&= \sum_{\mu}\int \td^3 \bm{x} \int \frac {\td^3 \bm{k}_1\td^3 \bm{k}_2} {(2\pi)^3 \sqrt{4\omega_1\omega_2}} \sum_{\lambda_1,\lambda_2} \Big(a_1 \epsilon_{1,\nu}(-\ti k_{1,\mu})e^{-\ti k_1\cdot x}+a_1^*\epsilon_{1,\nu}^* (\ti k_{1,\mu})e^{\ti k_1\cdot x}\Big) \\
&\indent \cdot\Big(a_2 \epsilon_{2,\nu}(-\ti k_{2,\mu})e^{-\ti k_2\cdot x}+a_2^*\epsilon_{2,\nu}^* (\ti k_{2,\mu})e^{\ti k_2\cdot x}\Big)\\
&= \sum_\mu \int \frac {\td^3 \bm{k}} {2\omega_{|\bm{k}|}} \sum_{\lambda,\lambda'} \Big\{-a(\bm{k},\lambda)a(-\bm{k},\lambda')\epsilon_\nu(\bm{k},\lambda)\epsilon_{\nu}(-\bm{k},\lambda')e^{-2\ti \omega_{|\bm{k}|}t} (k_0^2,-k_1^2,-k_2^2,-k_3^2)^\mu \\
&\indent + k_\mu^2 a(\bm{k},\lambda)a(\bm{k},\lambda')^*\epsilon_\nu(\bm{k},\lambda)\epsilon_\nu(\bm{k},\lambda')^* + k_\mu^2 a(\bm{k},\lambda)^* a(\bm{k},\lambda) \epsilon_\nu(\bm{k},\lambda)^* \epsilon_\nu (\bm{k},\lambda') \\
&\indent - a(\bm{k},\lambda)^* a(-\bm{k},\lambda')^* \epsilon_\nu(\bm{k},\lambda)^* \epsilon_\nu (-\bm{k},\lambda')^* e^{2\ti \omega_{|\bm{k}|}t} (k_0^2,-k_1^2,-k_2^2,-k_3^2)^\mu  \Big\} \\
&= \int \td^3 \bm{k} \ \omega_{|\bm{k}|}\sum_{\lambda,\lambda'} \Big\{ a(\bm{k},\lambda)a(\bm{k},\lambda')^*\epsilon_\nu(\bm{k},\lambda)\epsilon_\nu(\bm{k},\lambda')^* + a(\bm{k},\lambda)^* a(\bm{k},\lambda) \epsilon_\nu(\bm{k},\lambda)^* \epsilon_\nu (\bm{k},\lambda')  \Big\}
\end{aligned}$$
{{< /mathjax >}}

Note that $k_0^2-k_1^2-k_2^2-k_3^2=0$ , because $\omega_{|\bm{k}|}=|\bm{k}|$ . And compute the third equality should be carefully, because the delta function of $\delta^3(\bm{k}_1+\bm{k}_2)$ leads $k_2=(\omega_{|\bm{k}|},-\bm{k})\neq -k_1$ . And in the second equality, $a_i,\epsilon_{i,\nu}$ means that $a(\bm{k}_i) , \epsilon_\nu(\bm{k}_1,\lambda_1)$ , for the simplicity.

With $H = -\frac 1 2 \sum_\nu \eta^{\nu\nu} I_\nu$, we can write down:

{{< mathjax >}}
$$H=-\frac 1 2\int \td^3 \bm{k} \ \omega_{|\bm{k}|}\sum_{\lambda,\lambda'}\Big\{ a(\bm{k},\lambda)a(\bm{k},\lambda')^*\epsilon_\nu(\bm{k},\lambda)\epsilon^\nu(\bm{k},\lambda')^* + a(\bm{k},\lambda)^* a(\bm{k},\lambda) \epsilon_\nu(\bm{k},\lambda)^* \epsilon^\nu (\bm{k},\lambda')  \Big\}$$
{{< /mathjax >}}

With the property of $\epsilon^\mu$ : $\epsilon(\bm{k},\lambda)\cdot \epsilon(\bm{k},\lambda')=\eta_{\lambda,\lambda'}$ , we can write the Hamiltonian as:

{{< mathjax >}}
$$H=\frac 1 2 \int \td^3 \bm{k} \ \omega_{|\bm{k}|} \Big( \sum_{\lambda=1}^3\big( a(\bm{k},\lambda)a(\bm{k},\lambda)^*+a(\bm{k},\lambda)^* a(\bm{k},\lambda)\big) - \big(a(\bm{k},0)a(\bm{k},0)^*+a(\bm{k},0)^* a(\bm{k},0)\big) \Big) $$
{{< /mathjax >}}

{{</fold>}}
