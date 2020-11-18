---
title: "Classical Fields: Scalar Field"
date: "2018-11-18T21:49:41+08:00"
lastmod: "2018-12-11T17:11:00+08:00"
draft: false
tags: ["classical-theory"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
summary: "The classical field theory for scalar field, so-called Klein-Gordon Field. Together with the solution of Klein-Gordon equation and some symmetry analysis."
---


# Klein-Gordon Field

## Formalism
_[Definition]_ : `Klein-Gordon` Field is a class of scalar fields. For the `real valued` field, the Lagrangian(Lorentz-scalar) is:

{{< mathjax >}}
$$\mathcal{L} = \frac 1 2 \partial^{\mu}\phi\partial_{\mu}\phi - \frac {m^2} 2 \phi^2$$
{{< /mathjax >}}

And for the `complex valued` field, the Lagrangian is:

{{< mathjax >}}
$$\mathcal{L} = \frac 1 2 \partial_\mu \phi^{*}\partial^\mu \phi - \frac {m^2} 2 \phi^{*}\phi$$
{{< /mathjax >}}

It can be treated as two independent real value field: $\phi=\phi_r+\ti \phi_i$ and $\mathcal{L}_C(\phi) = \mathcal{L}_R(\phi_r)+\mathcal{L}_R(\phi_i)$

We discuss the real valued field hereafter (and we will see that real-valued means `neutral`):

The equation of motion is:

{{< mathjax >}}
$$(\partial^{\mu}\partial_{\mu} + m^2) \phi = (\square + m^2)\phi=0$$
{{< /mathjax >}}

Where $\square=\partial_{\mu}\partial^\mu=\partial_0^2-\partial_1^2-\partial_2^2-\partial_3^2$ is `d'Alembert operator` . \
And the `canonically conjugate field`(momentum):

{{< mathjax >}}
$$\pi = \partial_0 \phi $$
{{< /mathjax >}}

Then one can write down the Hamiltonian:

{{< mathjax >}}
$$H = \frac 1 2  \int \td^3 \bm{x} (\pi^2+ \nabla\phi\cdot \nabla \phi+m^2\phi^2)$$
{{< /mathjax >}}

## Solution of The Equation

To solve the field equation, one can use the Fourier transformation:

{{< mathjax >}}
$$\phi(x) = \int \frac {\td^3\bm{k}\td \omega} {(2\pi)^{4/2}} e^{\ti \bm{k}\cdot \bm{x}-\ti\omega t} a(\bm{k},\omega) = \int\frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4/2}} e^{-\ti k_\mu x^\mu} a(k)$$
{{< /mathjax >}}

Where the 4-vector $k=(\omega,\bm{k})$ . Then the equation will be:

{{< mathjax >}}
$$\int\frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4/2}} (-k_\mu k^\mu+m^2) e^{-\ti k_\mu x^\mu} a(k) = 0$$
{{< /mathjax >}}

Which requires that $-k_\mu k^\mu+m^2=0$ , which is the `dispersion relationship` :

{{< mathjax >}}
$$\omega_{|\bm{k}|} = \pm \sqrt{m^2+|\bm{k}|^2}$$
{{< /mathjax >}}

With this relation, we separate the general solution to two items according to the sign of frequency:

{{< mathjax >}}
$$\begin{aligned}
\phi(x) &= \int \frac {\td^3\bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \Big\{e^{\ti \bm{k}\cdot \bm{x} - \ti \omega_{|\bm{k}|}t} a(\bm{k})+e^{-\ti \bm{k}\cdot \bm{x} + \ti \omega_{|\bm{k}|}t} a(\bm{k})^* \Big\} \\
\pi(x) &= \int \frac {\td^3\bm{k} \ \ti \omega_{|\bm{k}|}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \Big\{-e^{\ti \bm{k}\cdot \bm{x} - \ti \omega_{|\bm{k}|}t} a(\bm{k})+e^{-\ti \bm{k}\cdot \bm{x} + \ti \omega_{|\bm{k}|}t} a(\bm{k})^* \Big\}
\end{aligned}$$
{{< /mathjax >}}

One can rewrite the Hamiltonian with $a(\bm{k})$ as:

{{< mathjax >}}
$$H = \frac 1 2 \int \td^3\bm{k} \ \omega_{|\bm{k}|} (a(\bm{k})^*a(\bm{k}) + a(\bm{k})a(\bm{k})^*)$$
{{< /mathjax >}}

In which we hold the order of $a$ , which will let the conclusion hold in quantum theory

{{<fold "Proof">}}

We need to compute three items in Hamiltonian:

{{< mathjax >}}
$$\begin{aligned}
\int \td^3\bm{x} \pi^2 &= \int \td^3\bm{x} \int \frac {\td^3 \bm{k}_1 \td^3\bm{k}_2 (-\omega_1\omega_2)} {(2\pi)^3} \sqrt{\frac 1 {4\omega_1\omega_2}} \Big\{e^{\ti(\bm{k}_1+\bm{k}_2)\cdot \bm{x}-\ti(\omega_1+\omega_2)t}a(\bm{k}_1)a(\bm{k}_2) \\
& \ \ \ \ + e^{-\ti(\bm{k}_1+\bm{k}_2)\cdot \bm{x}+\ti(\omega_1+\omega_2)t}a(\bm{k}_1)^*a(\bm{k}_2)^* \\
& \ \ \ \ -e^{\ti(\bm{k}_1-\bm{k}_2)\cdot \bm{x}-\ti(\omega_1-\omega_2)t} a(\bm{k}_1)a(\bm{k}_2)^* \\
& \ \ \ \ -e^{-\ti(\bm{k}_1-\bm{k}_2)\cdot \bm{x}+\ti(\omega_1-\omega_2)t} a(\bm{k}_1)^*a(\bm{k}_2) \Big\} \\
&=\frac 1 2 \int \td^3 \bm{k} \ \omega_{|\bm{k}|} \Big\{a(\bm{k})^* a(\bm{k})+a(\bm{k}) a(\bm{k})^*-e^{-2\ti \omega t} a(\bm{k})a(-\bm{k}) - e^{2\ti \omega t} a(\bm{k})^{*}a(-\bm{k})^*  \Big\} \\
\\
\int\td^3\bm{x}(\nabla \phi)^2 &= \frac 1 2 \int \td^3 \bm{k} \ \frac 1 {2\omega_{|\bm{k}|}}  |\bm{k}|^2 \Big\{a(\bm{k})^* a(\bm{k})+a(\bm{k}) a(\bm{k})^*-e^{-2\ti \omega t} a(\bm{k})a(-\bm{k}) - e^{2\ti \omega t} a(\bm{k})^{*}a(-\bm{k})^*  \Big\} \\
\\
\int\td^3\bm{x}(m \phi)^2 &= \frac 1 2 \int \td^3 \bm{k} \ \frac {m^2} {\omega_{|\bm{k}|}} \Big\{a(\bm{k})^* a(\bm{k})+a(\bm{k}) a(\bm{k})^*+e^{-2\ti \omega t} a(\bm{k})a(-\bm{k}) + e^{2\ti \omega t} a(\bm{k})^{*}a(-\bm{k})^*  \Big\} \\

\end{aligned}$$
{{< /mathjax >}}

Then we have the result:

{{< mathjax >}}
$$H =\frac 1 2 \int \td^3\bm{k} \ \omega_{|\bm{k}|} (a(\bm{k})^*a(\bm{k}) + a(\bm{k})a(\bm{k})^*)$$
{{< /mathjax >}}

{{</fold>}}

## Charged Klein-Gordon Field

Complex valued Klein-Gordon Field has a internal degree of freedom. It allow the complex valued Klein-Gordon Field to describe the charged spin-0 particles. Here we will show it by the Noether Theorem.

Complex valued Klein-Gordon Field has an $\text{U}(1)$ symmetry:

{{< mathjax >}}
$$\phi\rightarrow \phi' = \phi e^{\ti \alpha} \ ; \ \phi^* \rightarrow \phi'^*=\phi' e^{-\ti \alpha}$$
{{< /mathjax >}}

This transformation leaves Lagrangian invariant. Then we have the conserved charge(with $\delta x=0 , \delta \phi=\ti \phi\delta \alpha$ as the generator)

{{< mathjax >}}
$$Q = \int \td^3 \bm{x} \frac {\partial {\mathcal{L}}} {\partial(\partial_0 \phi)} \delta \phi+\frac {\partial {\mathcal{L}}} {\partial(\partial_0 \phi^*)} \delta \phi^* \sim \ti \int \td^3 \bm{x} \ (\pi \phi - \pi^* \phi^*) $$
{{< /mathjax >}}

With the formalism of complex valued Klein-Gordon Field, we can use two set of real valued Klein-Gordon Field to describe it:

{{< mathjax >}}
$$\phi_r \sim a(\bm{k}) \ ; \ \phi_i \sim b(\bm{k})$$
{{< /mathjax >}}

And write down the expression of $Q$ :

{{< mathjax >}}
$$Q = \int \td^3 \bm{k}\ \ti \Big(b(\bm{k})^*a(\bm{k})-b(\bm{k})a(\bm{k})^*\Big) $$
{{< /mathjax >}}



{{<fold "Proof">}}

With:

{{< mathjax >}}
$$\begin{aligned}
\phi_r(x) &= \int \frac {\td^3\bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \Big\{e^{\ti \bm{k}\cdot \bm{x} - \ti \omega_{|\bm{k}|}t} a(\bm{k})+e^{-\ti \bm{k}\cdot \bm{x} + \ti \omega_{|\bm{k}|}t} a(\bm{k})^* \Big\} \\
\pi_r(x) &= \int \frac {\td^3\bm{k} \ \ti \omega_{|\bm{k}|}} {(2\pi)^{3/2}} sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \Big\{-e^{\ti \bm{k}\cdot \bm{x} - \ti \omega_{|\bm{k}|}t} a(\bm{k})+e^{-\ti \bm{k}\cdot \bm{x} + \ti \omega_{|\bm{k}|}t} a(\bm{k})^* \Big\} \\
\phi_i(x) &= \int \frac {\td^3\bm{k}} {(2\pi)^{3/2}} sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \Big\{e^{\ti \bm{k}\cdot \bm{x} - \ti \omega_{|\bm{k}|}t} b(\bm{k})+e^{-\ti \bm{k}\cdot \bm{x} + \ti \omega_{|\bm{k}|}t} b(\bm{k})^* \Big\} \\
\pi_i(x) &= \int \frac {\td^3\bm{k} \ \ti \omega_{|\bm{k}|}} {(2\pi)^{3/2}} sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \Big\{-e^{\ti \bm{k}\cdot \bm{x} - \ti \omega_{|\bm{k}|}t} b(\bm{k})+e^{-\ti \bm{k}\cdot \bm{x} + \ti \omega_{|\bm{k}|}t} b(\bm{k})^* \Big\}
\end{aligned}$$
{{< /mathjax >}}

And:

{{< mathjax >}}
$$\phi = \phi_r+\ti \phi_i \ ; \ \pi=\frac 1 2 (\pi_r-\ti\pi_i) $$
{{< /mathjax >}}

That is caused by the fact:

{{< mathjax >}}
$$\pi=\frac {\delta \mathcal{L}} {\delta \flo{\phi}}=\frac {\delta \mathcal{L}} {\delta \flo{\phi}_r}\frac {\partial\flo{\phi}_r} {\partial \flo{\phi}}+\frac {\delta \mathcal{L}} {\delta \flo{\phi}_i}\frac {\partial\flo{\phi}_i} {\partial \flo{\phi}}$$
{{< /mathjax >}}

Like:

{{< mathjax >}}
$$\frac {\partial} {\partial z}=\frac {\partial \text{Re} z} {\partial z}\frac {\partial} {\partial \text{Re} z}+\frac {\partial \text{Im} z} {\partial z}\frac {\partial} {\partial \text{Im} z}=\frac 1 2\frac {\partial} {\partial \text{Re} z}+\frac 1 {2\ti}\frac {\partial} {\partial \text{Im} z}$$
{{< /mathjax >}}

with $\text{Re}z=\frac 1 2(z+z^*) \ ; \ \text{Im}z=\frac 1 {2\ti}(z-z^*)$.

Then the charge:

{{< mathjax >}}
$$Q=\ti \int \td^3 \bm{x} \ (\pi \phi-\pi^*\phi^*)=\int \td^3 \bm{x} \ (\pi_i \phi_r -\pi_r \phi_i)$$
{{< /mathjax >}}

Then we need only compute the integral of $\pi_i\phi_r$ , and another term can be obtained by permute the $a$ and $b$ :

{{< mathjax >}}
$$\begin{aligned}
\int \td^3 \bm{x} \pi_i \phi_r &= \int \td^3 \bm{x} \int \frac {\td^3 \bm{k}_1 \td^3 \bm{k}_2} {(2\pi)^3} \ti \omega_1 \frac 1 {\sqrt{4\omega_1\omega_2}}\Big\{-e^{\ti (\bm{k}_1+\bm{k}_2)\cdot \bm{x} - \ti (\omega_1+\omega_2)t} b(\bm{k}_1)a(\bm{k}_2) \\
&\indent -e^{\ti (\bm{k}_1-\bm{k}_2)\cdot \bm{x} - \ti (\omega_1-\omega_2)t} b(\bm{k}_1)a(\bm{k}_2)^* + e^{-\ti (\bm{k}_1-\bm{k}_2)\cdot \bm{x} + \ti (\omega_1-\omega_2)t} b(\bm{k}_1)^*a(\bm{k}_2)  \\
&\indent +e^{-\ti (\bm{k}_1+\bm{k}_2)\cdot \bm{x} + \ti (\omega_1+\omega_2)t} b(\bm{k}_1)^*a(\bm{k}_2)^* \Big\} \\
&=\int \td^3 \bm{k} \ \ti \frac 1 2\Big\{ -e^{-2\ti\omega_{|\bm{k}|}t}b(\bm{k})a(-\bm{k})-b(\bm{k})a(\bm{k})^* +b(\bm{k})^* a(\bm{k}) +e^{2\ti\omega_{|\bm{k}|}t}b(\bm{k})^*a(-\bm{k})^* \Big\} \\
\int \td^3 \bm{x} \pi_r \phi_i &= \int \td^3 \bm{k} \ \ti \frac 1 2\Big\{ -e^{-2\ti\omega_{|\bm{k}|}t}a(\bm{k})b(-\bm{k})-a(\bm{k})b(\bm{k})^* +a(\bm{k})^* b(\bm{k}) +e^{2\ti\omega_{|\bm{k}|}t}a(\bm{k})^*b(-\bm{k})^* \Big\} \\
&=\int \td^3 \bm{k} \ \ti \frac 1 2\Big\{ -e^{-2\ti\omega_{|\bm{k}|}t}a(-\bm{k})b(\bm{k})-a(\bm{k})b(\bm{k})^* +a(\bm{k})^* b(\bm{k}) +e^{2\ti\omega_{|\bm{k}|}t}a(-\bm{k})^*b(\bm{k})^* \Big\} \\
\end{aligned}$$
{{< /mathjax >}}

Then we have:

{{< mathjax >}}
$$Q = \int \td^3 \bm{k}\ \ti \Big(b(\bm{k})^*a(\bm{k})-b(\bm{k})a(\bm{k})^*\Big) $$
{{< /mathjax >}}


{{</fold>}}

Or with that $c_{\pm}(\bm{k})=\frac {a(\bm{k})\mp\ti b(\bm{k})} {\sqrt{2}}$ , we have:

{{< mathjax >}}
$$Q=\int \td^3 \bm{k}(c_+(\bm{k})^*c_+(\bm{k})-c_-(\bm{k})^*c_-(\bm{k}))$$
{{< /mathjax >}}

This conclusion hold in Quantum theory where $a,a^*$ are not commutable but $a,b$ are commutable.
