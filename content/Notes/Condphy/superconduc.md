---
title: "Theory of Superconductivity"
date: 2019-03-28T10:20:31+08:00
draft: true
tags: ["statistical-phys"]
series: ["Condensed-Matter"]
categories: ["Physics"]
toc: true
summary: "Phase transition is an important part of the theory for solid state. Usually, phase transition is corresponding to some symmetry breaking, which yields the singularity of partition functions at the thermodynamics limit. We will use the language of quantum field theory to show the basic theory of the phase transition. What we are interested in is the phase transition about the normal conductor and super conductor."
---

# Review of Path Integral

`Path integral formalism` is similar to the Huygens principle in optics. The wave function, or complex probability amplitude should be equal to the interference among all possible path:

$$\psi \propto \sum_{\text{path}} e^{\ti \phi(\text{path})}$$

We will use this to introduce the field theory but not from the equal time commutation relationship. First of all, we take a short review for the path integral.

## Path Integral of 1-D System

Consider the 1-D Hamiltonian: \(\hat H=\frac {\hat p^2} {2m} +V(\hat x)\) . The propagator can be written as functional integral with the time-slicing technique:

$$U(x,t;x',t')=\bra{x}\hat U(t,t')\ket{x'}=\int \td q_{M-1}\cdots \td q_1 \bra{x}\hat U(t,t_{M-1})\ket{q_{M-1}}\cdots \bra{q_1}\hat U(t_1,t')\ket{x'}$$

Where \(t_i=t'+ i \Delta t\) , and \(\Delta t=(t-t')/M\). So \(t_M=t, t_0=t'\) . Let \(q_M=x, q_0=x'\) , we have the generic form of the elements of matrix:

$$\bra{q_{n+1}}\hat U(t_{n+1},t_n)\ket{q_n} = \int \frac {\td p_{n+1}} {2\pi\hbar} \exp\Big\{\frac {\ti\Delta t} {\hbar} \Big(p_{n+1} \cdot \frac {q_{n+1}-q_n} {\Delta t}-H(p_{n+1},q_n)\Big)\Big\}$$

So, in such way one can write the propagator as the functional integral for infinite dimensional momentum and coordinate:

$$U(x,t;x',t')=\int_{q(t')=x'}^{q(t)=x} \mathcal{D}[q]\mathcal{D}[p] \ \exp\Big(\frac \ti \hbar S[p,q]\Big)$$

Where \(\mathcal{D}[p]\mathcal{D}[q]=(2\pi\hbar)^{-M}\td q_{M-1}\cdots \td q_1 \td p_{M}\cdots \td p_1\) , and:

$$S[p,q]=\int_{t'}^t \td t \ p(t) \cdot \flo{q}(t) - H\big(p(t),q(t)\big)$$

One can also write it as the form:

$$U(x,t;x',t')=\int \mathcal{D}[q] \ \exp\Big(\frac \ti \hbar \int_{t'}^t \td t \ \big(\frac 1 {2m} \flo q^2 -V(q)\big)\Big)$$

Where \(\mathcal{D}[q]=\big(\frac {m} {2\pi\hbar\ti\Delta t}\big)^{M/2}\td q_{M-1}\cdots \td q_1\) . For detail see:
[Path-integral-in-quantum-mechanics](https://wzdlc1996.github.io/notes/qm/dynamics/#/path-integral-in-quantum-mechanics)

## Quantum Partition Function

According to the statistical physics, the `canonical partition function` can be written as:

$$\mathcal{Z}=\text{Tr} e^{-\beta \hat H}=\int \td x \ \bra{x}e^{-\beta \hat H}\ket{x}\sim \int \td x  \ U(x,\ti\hbar\beta,x,0)$$

Which has a semblance form as the path integral, but the time variable and the integral of initial/final coordinates. Here we introduce the Wick rotation, which is also known as the imaginary time transform: \(\ti t=\tau\).

So we have:

$$\begin{aligned}
\mathcal{Z}&=\int \prod_{k=1}^M \frac {\td p_k \td q_k} {2\pi\hbar} \ \exp\Big\{\frac 1 \hbar \int_0^{\hbar\beta} \td \tau \ \Big(\ti p \cdot \frac {\td q} {\td \tau} - H(p,q)\Big)  \Big\} \\
&=\int \mathcal{D}[q] \ \exp\Big\{-\frac 1 \hbar \int_0^{\beta\hbar} \td \tau \Big(\frac 1 {2m} \flo q^2 +V(q)\Big) \Big\}
\end{aligned}$$

Where the integral contains the coordinate \(q_M=q_0\). And the second equality is come from the form of Hamiltonian \(H(q,p)=\frac {p^2} {2m} + V(q)\) with integrating out all momentum: \(\mathcal{D}[q]=\big(\frac m {2\pi\hbar \Delta \tau}\big)^{M/2} \td q_M\cdots \td q_1\).

One should always note that, <mark>all above functional integral should be calculated by their definition of discrete version.</mark> And take limit of \(\Delta t ( \Delta \tau)\rightarrow 0\) at the end.

## Back to the Operator Formalism

The path integral treats all possible path as `dummy index`, that means for an arbitrary function of \(q,p\) , integral:

$$\int \mathcal{D}[q]\mathcal{D}[p] $$

# Dilute Bose Gas

\(\psi\) are coherent state!.

Our thermal action functional(with wick rotation) is, with \(\hbar=1\) here:

$$S=\int_0^{\beta} \td \tau \int \td^d \bm{r} \ \psi^*(\bm{r},\tau)\Big\{\frac {\partial} {\partial \tau} -\frac {\nabla^2} {2m} -\mu\Big\}\psi(\bm{r},\tau) +\frac 1 2 g \psi^*(\bm{r},\tau)\psi(\bm{r},\tau)$$

And with the path integral formalism, we have the partition function:

$$\mathcal{Z}=\text{Tr} \ e^{-\beta(\hat H-\mu\hat N)}=\int_{\psi(\beta)=\psi(0)} \mathcal{D}[\psi^*]\mathcal{D}[\psi] e^{-S[\psi^*,\psi]}$$

## Ideal Bose Gas

First of all, we let \(g=0\) , which means that we are handling the `ideal Bose gas`. To hold the boundary condition \(\psi(\tau=\beta)=\psi(\tau=0)\) , we can expand it with discrete Fourier series, just like the way we deal with the thermal function:

$$\psi(\bm{r},\tau)=\sum_n \int \frac {\td^d \bm{k}} {(2\pi)^d} \psi_{\bm{k},n} e^{\ti (\bm{k}\cdot \bm{r}-\omega_n \tau)}$$

Where \(\omega_n=\frac {2\pi} {\beta} n\). And:

$$\psi_{n,\bm{k}}=\frac 1 \beta \int_0^\beta \td \tau \int \td^d \bm{r} \ \psi(\bm{r},\tau) e^{-\ti(\bm{k}\cdot \bm{r}-\omega_n\tau)}$$

Then we have the action:

$$S=\beta \sum_n \int \frac {\td^d \bm{k}} {(2\pi)^d} \psi_{n,\bm{k}}^* (-\ti \omega_n+\frac {\bm{k}^2} {2m}-\mu)\psi_{n,\bm{k}}$$

Here we can see that \(\mu\) should not be a positive number. Cause the integral of \(e^{-S}\) should be not divergent. And so a theory of \(\mu\gt 0\) must not be stable.

\(\psi(\bm{r},t)=\psi_0+\psi_1(\bm{r},t)\) . Then \(\psi_1=A+\ti P\). compute the action with Fourier transformation as:

$$S=\begin{bmatrix} A(\bm{k},\ti \omega_n) &  P \end{bmatrix} \begin{bmatrix} \frac {k^2} {2m}+2g \psi_0^2 & \omega_n \\ -\omega_n & \frac {k^2} {2m} \end{bmatrix}\begin{bmatrix} A(\bm{k},\ti \omega_n) \\  P \end{bmatrix}$$

Green's function:

$$G=\langle \mathcal{T}\{\psi\psi^\dagger\}\rangle=\frac {\int \mathcal{D}[\phi]\mathcal{D}[\psi^*] \psi \psi^\dagger e^{-S}} {\int \mathcal{D}[\phi]\mathcal{D}[\psi^*]  e^{-S}}$$

time-ordered vanishes. 
