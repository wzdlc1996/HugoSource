---
title: "Classical Fields"
date: 2018-11-18T21:49:41+08:00
draft: false
tags: ["Physics"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
---


# Klein-Gordon Field

## Formalism
_[Definition]_ : `Klein-Gordon` Field is a class of scalar fields. For the `real valued` field, the Lagrangian(Lorentz-scalar) is:

$$\mathcal{L} = \frac 1 2 \partial^{\mu}\phi\partial_{\mu}\phi - \frac {m^2} 2 \phi^2$$

And for the `complex valued` field, the Lagrangian is:

$$\mathcal{L} = \frac 1 2 \partial_\mu \phi^{*}\partial^\mu \phi - \frac {m^2} 2 \phi^{*}\phi$$

It can be treated as two independent real value field: \(\phi=\phi_r+\ti \phi_i\) and \(\mathcal{L}_C(\phi) = \mathcal{L}_R(\phi_r)+\mathcal{L}_R(\phi_i)\)

We discuss the real valued field hereafter:

The equation of motion is:

$$(\partial^{\mu}\partial_{\mu} + m^2) \phi = (\square + m^2)\phi=0$$

Where \(\square=\partial_{\mu}\partial^\mu=\partial_0^2-\partial_1^2-\partial_2^2-\partial_3^2\) is `d'Alembert operator` . \
And the `canonically conjugate field`(momentum):

$$\pi = \partial_0 \phi $$

Then one can write down the Hamiltonian:

$$H = \frac 1 2  \int \td^3 \bm{x} (\pi^2+ \nabla\phi\cdot \nabla \phi+m^2\phi^2)$$

## Solution of The Equation

To solve the field equation, one can use the Fourier transformation:

$$\phi(x) = \int \frac {\td^3\bm{k}\td \omega} {(2\pi)^{4/2}} e^{\ti \bm{k}\cdot \bm{x}-\ti\omega t} a(\bm{k},\omega) = \int\frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4/2}} e^{-\ti k_\mu x^\mu} a(k)$$

Where the 4-vector \(k=(\omega,\bm{k})\) . Then the equation will be:

$$\int\frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4/2}} (-k_\mu k^\mu+m^2) e^{-\ti k_\mu x^\mu} a(k) = 0$$

Which requires that \(-k_\mu k^\mu+m^2=0\) , which is the `dispersion relationship` :

$$\omega_{|\bm{k}|} = \pm \sqrt{m^2+|\bm{k}|^2}$$

With this relation, we separate the general solution to two items according to the sign of frequency:

$$\begin{aligned}
\phi(x) &= \int \frac {\td^3\bm{k}} {(2\pi)^{3/2}} \Big\{e^{\ti \bm{k}\cdot \bm{x} - \ti \omega_{|\bm{k}|}t} a(\bm{k})+e^{-\ti \bm{k}\cdot \bm{x} + \ti \omega_{|\bm{k}|}t} a(\bm{k})^* \Big\} \\
\pi(x) &= \int \frac {\td^3\bm{k} \ \ti \omega_{|\bm{k}|}} {(2\pi)^{3/2}} \Big\{-e^{\ti \bm{k}\cdot \bm{x} - \ti \omega_{|\bm{k}|}t} a(\bm{k})+e^{-\ti \bm{k}\cdot \bm{x} + \ti \omega_{|\bm{k}|}t} a(\bm{k})^* \Big\}
\end{aligned}$$

One can rewrite the Hamiltonian with \(a(\bm{k})\) as:

$$H = \int \td^3\bm{x} \ \omega_{|\bm{k}|}^2 (a(\bm{k})^*a(\bm{k}) + a(\bm{k})a(\bm{k})^*)$$

In which we hold the order of \(a\) , which will let the conclusion hold in quantum theory

{{%fold "Proof"%}}

We need to compute three items in Hamiltonian:

$$\begin{aligned}
\int \td^3\bm{x} \pi^2 &= \int \td^3\bm{x} \int \frac {\td^3 \bm{k}_1 \td^3\bm{k}_2 (-\omega_1\omega_2)} {(2\pi)^3}\Big\{e^{\ti(\bm{k}_1+\bm{k}_2)\cdot \bm{x}-\ti(\omega_1+\omega_2)t}a(\bm{k}_1)a(\bm{k}_2) \\
& \ \ \ \ + e^{-\ti(\bm{k}_1+\bm{k}_2)\cdot \bm{x}+\ti(\omega_1+\omega_2)t}a(\bm{k}_1)^*a(\bm{k}_2)^* \\
& \ \ \ \ -e^{\ti(\bm{k}_1-\bm{k}_2)\cdot \bm{x}-\ti(\omega_1-\omega_2)t} a(\bm{k}_1)a(\bm{k}_2)^* \\
& \ \ \ \ -e^{-\ti(\bm{k}_1-\bm{k}_2)\cdot \bm{x}+\ti(\omega_1-\omega_2)t} a(\bm{k}_1)^*a(\bm{k}_2) \Big\} \\
&= \int \td^3 \bm{k} \ \omega_{|\bm{k}|}^2 \Big\{a(\bm{k})^* a(\bm{k})+a(\bm{k}) a(\bm{k})^*-e^{-2\ti \omega t} a(\bm{k})a(-\bm{k}) - e^{2\ti \omega t} a(\bm{k})^{*}a(-\bm{k})^*  \Big\} \\
\\
\int\td^3\bm{x}(\nabla \phi)^2 &= \int \td^3 \bm{k} \ |\bm{k}|^2 \Big\{a(\bm{k})^* a(\bm{k})+a(\bm{k}) a(\bm{k})^*-e^{-2\ti \omega t} a(\bm{k})a(-\bm{k}) - e^{2\ti \omega t} a(\bm{k})^{*}a(-\bm{k})^*  \Big\} \\
\\
\int\td^3\bm{x}(m \phi)^2 &= \int \td^3 \bm{k} \ m^2 \Big\{a(\bm{k})^* a(\bm{k})+a(\bm{k}) a(\bm{k})^*+e^{-2\ti \omega t} a(\bm{k})a(-\bm{k}) + e^{2\ti \omega t} a(\bm{k})^{*}a(-\bm{k})^*  \Big\} \\

\end{aligned}$$

Then we have the result:

$$H = \int \td^3\bm{x} \ \omega_{|\bm{k}|}^2 (a(\bm{k})^*a(\bm{k}) + a(\bm{k})a(\bm{k})^*)$$

{{%/fold%}}

# Dirac Field

## Formalism
_[Definition]_ : Dirac field is the field of Dirac Spinor. The Lagrangian is Lorentz Scalar constructed by Dirac Spinor:

$$\mathcal{L} = \bar{\psi}(\ti\gamma^\mu\partial_\mu-m)\psi$$

This Lagrangian are not symmetric to \(\psi\) and \(\bar{\psi}\) , but this form will not lead the momentum vanish.

Note that \(\psi\) is a 4-components Dirac Spinor. And these four components are independent. So we have the equation of motion:

$$(\ti \gamma^\mu \partial_\mu -m)\psi = 0$$

To let the form of the Dirac equation invariant under Lorentz Transformation, one need requires that the Dirac field transforms as:

$$\psi(x)\rightarrow \psi'(x') = \Lambda_{1/2}\psi(x'=L(\omega) x) \ ; \ \Lambda_{1/2} = \exp(-\frac {\ti} 4 \omega_{\mu\nu} \sigma^{\mu\nu}) $$

And the `canonically conjugate field` are also quantity with 4 components:

$$\pi = \ti \bar{\psi}\gamma^0 = \ti \psi^\dagger$$

The Hamiltonian:

$$H = \int \td^3 \bm{x} \Big\{-\sum_{i=1}^3 \ti \bar{\psi}\gamma^i \partial_i \psi + m \bar{\psi}\psi  \Big\} $$

## Solution of The Equation

To solve the Dirac Equation, one can also use the Fourier Transformation. Remember that \(\psi\) are 4-components quantity:

$$\psi = \int \frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4/2}} e^{\ti \bm{k}\cdot \bm{x}-\ti \omega t} a(\bm{k},\omega)$$

Where \(a(\bm{k},\omega)\) are 4-components Dirac spinor, and also let \(k=(\omega,\bm{k})\). Then one can write:

$$k_{\mu}\gamma^{\mu} a(\bm{k},\omega) -m a(\bm{k},\omega) = 0$$

In the basis that \(\gamma^{\mu} = \begin{bmatrix} 0 & \sigma^{\mu} \\ \bar{\sigma}^{\mu} & 0 \end{bmatrix}\) , we can solve this equation of matrix. The homogeneous equation has non-trivial solution, that requires:

$$\det(k_{\mu}\gamma^{\mu} -m) =0 \Rightarrow (-k_0^2+k_1^2+k_2^2+k_3^2+m^2)^2\equiv (m^2-k_\mu k^\mu)^2=0 $$

Namely : \(\omega^2 = m^2+|\bm{k}|^2\)
And the solution, there are only two linear independent solutions, corresponding to the eigenvectors of \(k_\mu \gamma^\mu\) with eigenvalue \(m\) . with \(a=\begin{bmatrix} a_l \\ a_r \end{bmatrix}\) where \(a_l,a_r\) are left/right-handed Weyl spinor. We have the equation:

$$\begin{aligned}
k_\mu \sigma^\mu a_r -m a_l &= 0\\
k_\mu \bar{\sigma}^\mu a_l -m a_r &= 0\\
\end{aligned}$$
