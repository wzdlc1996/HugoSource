---
title: "Quantum Dynamics"
date: 2018-11-12T14:15:58+08:00
draft: false
tags: ["quantum","dynamics"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "The dynamics theory of Quantum mechanics. And basic introduction for path-integral formalism."
---

# Time Evolution

## Unitary Time Evolution

<em>[Assumption]</em> : The basic assumption of quantum dynamics is that , the time evolution of a closed system is `unitary` . <br>
<em>[Definition]</em> : `Time evolution operator` : That means if we note the quantum state at time `$t$` as `$\ket{\psi(t)}$` , then there is a `Unitary operator`
`$\hat U(t',t)$` , one have:

<div>$$\ket{\psi(t')} = \hat U(t',t)\ket{\psi(t)}$$</div>

The evolution operator has the following property:

<div>$$\hat U(t'',t')\hat U(t',t)=\hat U(t'',t) \ \ ; \ \hat U(t,t)=\hat 1$$</div>

It is usually `continuous` and `reversible`

The infinitesimal time evolution:

<div>$$\hat U(t+\td t,t) = \hat 1 -\frac {\ti} {\hbar} \hat H(t)\td t +O(dt^2)$$</div>

Where the Hamiltonian is:

<div>$$\hat H(t) = \ti \hbar \frac {\td} {\td t'} \hat U(t',t)\Big|_{t'=t}=\ti \hbar \frac {\td \hat U(t',t)} {\td t'} \hat U^{\dagger}(t',t)\Big|_{t'=t}$$</div>

Then for `$(\partial_1 \hat U(t',t))\hat U^{\dagger}(t',t)+\hat U(t',t)\partial_1\hat U^{\dagger}(t',t)=0$` , one can find that `$\hat H$` is Hermitian <br>
Moreover, one can prove that `$\frac {\td \hat U(t',t)} {\td t'} \hat U^{\dagger}(t',t)$` is independent to `$t$`:

{{%fold "Proof"%}}

<div>$$\begin{aligned}[]
\frac {\td \hat U(t,t_0)} {\td t} \hat U^{\dagger}(t,t_0) &= \frac {\td \hat U(t,t'_0)} {\td t} \hat U(t'_0,t_0) (\hat U(t,t'_0)\hat U(t'_0,t_0))^{\dagger} \\
&= \frac {\td \hat U(t,t'_0)} {\td t} \hat U(t'_0,t_0) \hat U^{\dagger}(t'_0,t_0) \hat U^{\dagger}(t,t'_0) \\
&= \frac {\td \hat U(t,t'_0)} {\td t} \hat U^{\dagger}(t,t'_0)
\end{aligned}$$</div>

Q.E.D.
{{%/fold%}}

Then we define that:
<em>[Definition]</em> : `Hamiltonian` is

<div>$$\hat H(t) = \ti \hbar \frac {\td \hat U(t,t_0)} {\td t} \hat U^{\dagger} (t,t_0)$$</div>

which is independent to initial time `$t_0$` <br>
By this definition, one can write down the equation that discribes the evolution of evolution operator:

<div>$$\ti \hbar \frac {\partial} {\partial t} \hat U(t,t_0) = \hat H(t) \hat U(t,t_0)$$</div>

## Schrodinger Equation and Schrodinger Picture

Applying the evolution equation of `$\hat U(t,t_0)$`, one can derive the evolution equation of quantum state:

<div>$$\ti \hbar \frac{\td} {\td t}  \ket{\psi(t)} = \hat H(t)\ket{\psi(t)}$$</div>

When `$\hat H$` is independent to `$t$` , one can "solve" this as:

<div>$$\ket{\psi(t)} = \exp((t-t_0) \hat H/\ti \hbar) \ket{\psi(t_0)} \ ; \ \ \hat U(t,t_0) = \exp\big(\frac {(t-t_0)} {\ti \hbar} \hat H\big)$$</div>

In general, one can write that :

<div>$$\hat U(t,t_0) = \mathcal{T}\Big(\exp\big(-\frac {\ti} {\hbar} \int_{t'=t_0}^t \hat H (t')\td t' \big) \Big)\equiv \sum_{n=0}^{\infty} \Big(\frac {1} {\ti \hbar}\Big)^n \frac 1 {n!} \int_{t_1,\cdots,t_n=t_0}^t \td t_1\cdots \td t_n \mathcal{T}\big(\prod_{i} \hat H (t_i) \big)$$</div>

Where `$\mathcal{T}$` means time-ordering:

-   For `Bosonic` `$\hat A,\hat B$` , `$\mathcal{T}(\hat A(t)\hat B(t')) = \begin{cases} \hat A(t)\hat B(t') & t\gt t' \\ \hat B(t')\hat A(t) & t'\gt t\end{cases}$`
-   For `Fermionic` `$\hat A,\hat B$` , `$\mathcal{T}(\hat A(t)\hat B(t')) = \begin{cases} \hat A(t)\hat B(t') & t\gt t' \\ (-1)\hat B(t')\hat A(t) & t'\gt t\end{cases}$`

And this is equivalent to the `Dyson series` :

<div>$$\hat U(t,t_0) = \hat 1 + \frac {1} {\ti \hbar} \int_{t_1=t_0}^t \hat H(t_1)\td t_1 + \Big(\frac 1 {\ti\hbar} \Big)^2 \int_{t_2=t_0}^t \int_{t_1=t_0}^{t_2} \hat H(t_2)\hat H(t_1)\td t_2\td t_1 +\cdots$$</div>

<em>[Theorem]</em> : eigenstates of Hamiltonian are `Stationary states` :

<div>$$\ket{E,t} = e^{-\ti E(t-t_0)}\ket{E,t_0} \ \ \text{ where }\hat H\ket{E,t}=E\ket{E,t}$$</div>

And expectation value of any operator does not change over time, density matrix does not change over time.

This is the `Schorodinger picture` (subscript `$_S$` hereafter) : <mark>time evolution is implemented on the state</mark>

## The Heisenberg Picture

The `Heisenberg picture` (subscript `$_H$` hereafter) : <mark>time evolution is encoded in operators, while the states have no evolution</mark>

<em>[Definition]</em> : the time-dependent operator `$\hat O_H(t)$` in the Heisenberg picture is:

<div>$$\hat O_H(t) = \hat U^{\dagger} (t) \hat O_S \hat U(t)$$</div>

{{%fold "Note"%}}
Then for matrix elements in Heisenberg picture, one have: `$\bra{\psi}\hat O_H(t)\ket{\phi} = \bra{\psi(t)}\hat O_S \ket{\phi(t)}$`
{{%/fold%}}

The Heisenberg equation of motion:
<div>$$\hbar \frac {\td} {\td t} \hat O_H(t) = \ti [\hat H_H(t),\hat O_H(t)]$$</div>
Where `$\hat H_H(t) = \hat U^{\dagger}(t)\hat H_S(t)\hat U(t) =\ti \hbar \hat U^{\dagger}(t)\frac {\td} {\td t} \hat U(t) $` <br>
When `$\hat H_S(t)$` is independent of time, then `$\hat H$` commutes with `$\hat U$` , and `$\hat H_H = \hat H_S$`

# Some Examples About Dynamics

## Liouville Equation

In Schrodinger picture, For `$\hat \rho(t)  = \sum_i \lambda_i \ket{\psi_i(t)}\bra{\psi_i(t)}$` , one can write down:

<div>$$\ti \hbar \frac {\td \hat \rho(t)} {\td t} = [\hat H_S(t),\hat \rho(t)]$$</div>

But in Heisenberg picture, the density matrix will never change by time

## Single Particle Dynamics

Consider time independent Hamiltonian:

<div>$$\hat H = \frac {\hat {\bm{p}}^2} {2m} +V(\hat {\bm{x}})$$</div>

-   In Schrodinger picture, one can obtain a continuity equation:

    <div>$$\frac {\partial} {\partial t} \rho(\bm{x},t) + \nabla \cdot \bm{J}(\bm{x},t)=0$$</div>

    where probability density `$\rho(\bm{x},t) = \psi^*(\bm{x},t)\psi(\bm{x},t) = \bra{\bm{x}}\hat \rho\ket{\bm{x}}$` <br>
    and probability current `$\bm{J}(\bm{x},t) = \frac {\hbar} m \text{Im}\big(\psi^*(\bm{x},t)\nabla\psi(\bm{x},t) \big)$`

-   In Heisenberg picture, one can obtain the Ehrenfest theorem: <br>
    the equation of motion of position `$\hat{\bm{x}}_{H} $` and momentum `$\hat{\bm{p}}_H$` are:

    <div>$$\begin{aligned}
    \frac {\td} {\td t} \hat{\bm{x}}_H(t) &= \frac {\ti} {\hbar} [\hat H,\hat{\bm{x}}_H] = \frac {\hat{\bm{p}}_H} {m} \\
    \frac {\td} {\td t} \hat{\bm{p}}_H(t) &= \frac {\ti} {\hbar} [\hat H,\hat{\bm{p}}_H] = -\nabla V(\hat{\bm{x}})
    \end{aligned}$$</div>

    Then one can write down a equation which is similar to the classical equation of motion :

    <div>$$m \frac {\td^2} {\td t^2} \langle \hat{\bm{x}}\rangle = - \langle \nabla V(\hat{\bm{x}})\rangle$$</div>

## 1D Harmonic Oscillator

Having time-independent Hamiltonian:

<div>$$\hat H = \frac {\hat p^2} {2m} +\frac {m \omega^2} 2 \hat x^2 = \hbar \omega(\hat a^{\dagger}\hat a + \frac 1 2)$$</div>

Where `$\hat a =\sqrt{\frac {m\omega} {2\hbar}}(\hat x +\frac {\ti} {m\omega} \hat p)$` and satisfies: `$[\hat a,\hat a^{\dagger}] = 1$`. <br>
One can solve the equation of motion: `$\frac {\td} {td t} \hat a(t) = \frac {\ti} {\hbar} [\hat H,\hat a(t)] = -\ti \omega \hat a(t)$` and obtain `$\hat a(t) = e^{-\ti \omega t} \hat a(0)$`. Then one can obtain the:

<div>$$\begin{aligned}
\hat x(t) &= \cos(\omega t) \hat x(0)+\frac 1 {m\omega} \sin(\omega t) \hat p(0) \\
\hat p(t) &= -m\omega \sin(\omega t) \hat x(0) + \cos(\omega t) \hat p(0)
\end{aligned}$$</div>

<em>[Definition]</em> : `The coherent state` :

<div>$$e^{-|z|^2/2}e^{z\hat a^{\dagger}} \ket{0} \ \ \text{with } \langle \hat a(0)\rangle = z$$</div>

Then one have :

<div>$$\langle \hat x(0)\rangle = \sqrt{\frac {2\hbar} {m\omega}} \text{Re} z \ \ \langle\hat p(0)\rangle = \sqrt{2\hbar m \omega} \text{Im}(z)$$</div>

<mark>The coherent satisfies the minimal uncertainty relation for `$\hat x$` and `$\hat p$`</mark> :

<div>$$\Delta x^2 = \langle \hat x^2\rangle - (\langle \hat x \rangle)^2 = \frac {\hbar} {2m\omega} \ \ \Delta p^2 = \langle \hat p^2\rangle - (\langle \hat p\rangle)^2 = \frac {\hbar m \omega} 2 $$</div>

Then `$\Delta x^2 \Delta p^2 = \hbar^2/4$`

## Adiabatic Theorem

<em>[Theorem]</em> : When system is instantanous ground state(s) and the Hamiltonian changes `slowly` with time, then the system will remain to be (one of) the instantanous ground state(s) at later times. <br>
For system's Hamiltonian is dependent of time by a parameter `$R$` :

<div>$$\hat H(t) = \hat H(R(t))$$</div>

The instantanous eigenstates of Hamiltonian are `$\hat H(t)\ket{E_n(t)} = E_n(t) \ket{E_n(t)}$`. <br>
The Adiabatic theorem showd that:

<div>$$\ket{\psi(t=0)} = \ket{E_0(t=0)} \Rightarrow \ket{\psi(t)} = \ket{E_0(t)}$$</div>

{{%fold "Proof(non-degenerate cases)"%}}

For the evolution can be discriped by Schrodinger equation:

<div>$$\ti \hbar \frac {\td} {\td t} \ket{\psi(t)} = \hat H(R(t)) \ket{\psi(t)}$$</div>

One can expand the `$\ket{\psi(t)}$` by the eigenstates `$\ket{E_n(t)}$`, as:

<div>$$\ket{\psi(t)} = \sum_i c_i(t)e^{\ti \theta_n(t)} \ket{E_n(t)}$$</div>

Where `$\theta_n(t) = \frac {-1} {\hbar} \int_0^t \td t' E_n(t')$` <br>
Then one have the equation:

<div>$$\ti \hbar \frac {\td} {\td t} c_n(t) = - \sum_m c_m(t) \bra{E_n(t)}\frac {\td} {\td t} \ket{E_m(t)} e^{\ti(\theta_m(t)-\theta_n(t))}$$</div>

For differentiating the both side of the eigenstates function:

<div>$$\hat H(t) \frac {\td} {\td t}\ket{E_n(t)} + \frac {\td \hat H(t)} {\td t} \ket{E_n(t)} = \frac {\td E_n(t)} {\td t} \ket{E_n(t)} + E_n(t)\frac {\td } {\td t} \ket{E_n(t)}$$</div>

One have when `$m\neq n$`:

<div>$$\bra{E_n(t)}\frac {\td} {\td t} \ket{E_m(t)} = \frac {1} {E_m(t)-E_n(t)} \bra{E_n(t)}\frac {\td \hat H(t)} {\td t} \ket{E_m(t)}  $$</div>

Then we have:

<div>$$\ti \hbar \frac {\td } {\td t} c_n(t) = -c_n(t) \bra{E_n(t)}\frac {\td} {\td t} \ket{E_n(t)} - \sum_{m\neq n} \frac {c_m(t)} {E_n(t)-E_m(t)}  \bra{E_n(t)}\frac {\td \hat H(t)} {\td t} \ket{E_m(t)} e^{\ti(\theta_m(t)-\theta_n(t))}$$</div>

With the initial condition: `$c_n(t=0) = \delta_{0,n}$` , and the Hamiltonian changes very slow. One can solve the equation:

<div>$$c_n(t) = \delta_{0,n} \exp\big(\int_0^t \td t' \bra{E_n(t')}\frac {\td} {\td t'} \ket{E_n(t')} \big)  $$</div>

Which means that `$\ket{\psi(t)}$` is the simultaneous ground state .
{{%/fold%}}

# Propagator and Path Integral

## Propagator

<em>[Definition]</em> : The `propagator` is the time-evolution operator represented in coordinate basis:

<div>$$K(x',t';x,t):=\langle x'|\hat U(t',t)|x\rangle$$</div>

And `$K(x',t;x,t)=\delta(x'-x)$` . By this definition we have: `$\psi(x',t') = \int K(x',t';x,t)\psi(x,t)\td x$`. <br>
Propagator is the `transition probability amplitude` for the particle(system) to state at `$x$` at time `$t$` and end up at `$x',t'$`.

Customarily, when `$t'\lt t$` `define` that `$K(x',t';x,t)\equiv 0$` . And `$K$` is the `Green function ` satisfying:

<div>$$\Big\{H\big(x',-\ti \hbar \frac {\partial} {\partial x'},t\big)-\ti \hbar \frac {\partial} {\partial t}\Big\} K(x',t';x,t) = -\ti \hbar \delta(x'-x)\delta(t'-t)$$</div>

Where `$H(x,p,t)$` is the Hamiltonian. <br>

{{%fold "Proof"%}}
When `$t'\lt t$`, the equation is hold. <br>
For `$t'\gt t$`, for the equation of motion of evolution operator:

<div>$$\ti \hbar \frac {\td} {\td t'} \hat U(t',t) = \hat H \hat U(t',t)$$</div>

one can write down:

<div>$$\bra{x'}\hat H \hat U(t',t) - \ti \hbar \frac {\td} {\td t'} \hat U(t',t)  \ket{x} = (H(x',-\ti\hbar \partial_{x'},t') - \ti \hbar \frac {\td} {\td t'})K(x',t';x,t)=0$$</div>

Then we consider the situation of `$t'=t$`, then `$K(x',t';x,t)=\delta(x'-x)$` , And:

<div>$$\int_{t-\epsilon}^{t+\epsilon} (H(x',-\ti \hbar \partial_{x'},t')-\ti \hbar \frac {\td} {\td t'}) K(x',t';x,t) \td t' = -\ti \hbar (K(x',t+\epsilon;x,t)-K(x',t-\epsilon;x,t)) \approx -\ti\hbar \delta(x'-x)$$</div>

For the first term is "continuous" of `$t$`. Then the equation proved.
{{%/fold%}}

More over, when `$\hat H$` is independent of time, we can write down the expansion of propagator on energy-eigenstates:

<div>$$K(x',t';x,t) = \sum_E e^{-\ti E(t'-t)/\hbar} \langle x'|E\rangle\langle E|x\rangle \ \ \text{ for } t'\gt t$$</div>

For free particle: `$\hat H = \hat p^2/2m$` , one can compute:

<div>$$K(x',t';x,t) = \sqrt{\frac {m} {2\pi\hbar (t'-t)\ti}} \exp\big[\frac {\ti m (x'-x)^2} {2\hbar (t'-t)} \big]$$</div>

## Causal Functions
The propagator and `$G(t',t):=\text{Tr}\hat U(t',t) = \int \td x K(x,t';x,t)$` are `Causal functions` : nonzero only for `later(`$t'\gt t$`)` times. <br>
The fourier transform (with a little difference from the one in mathematical) of causal function `$G(t)$` with `$G(t\lt 0)=0$` is:

<div>$$\tilde{G}(\omega) = -\ti \int G(t) e^{\ti \omega t}\td t$$</div>

For `$G(t\lt 0)=0$` , `$\tilde{G}(\omega'+\ti \omega'')$` will be `non-singular(analytic)` for all `$\omega''\in\mathbb{R}^+$`, and tends to zero fast enough at infinity with `$\omega''\gt 0$`

<em>[Theorem]</em> : `Kramer-Kronig relation`(Hilbert transform). For such functions `$\tilde{G}(\omega)$` , one have:

<div>$$\begin{aligned}
\text{Re} \tilde{G}(\omega) &= \frac 1 {\pi} \text{P} \int_{-\infty}^{\infty} \frac {\text{Im}\tilde{G}(\omega')} {\omega'-\omega} \td \omega' \\
\text{Im} \tilde{G}(\omega) &= -\frac 1 {\pi} \text{P} \int_{-\infty}^{\infty} \frac {\text{Re}\tilde{G}(\omega')} {\omega'-\omega} \td \omega'
\end{aligned}$$</div>

Where `$\text{P}$` means the Cauchy principle value of integral.
{{%fold "Proof"%}}
Consider the contour integral of `$\frac {\tilde{G}(\omega')} {\omega'-\omega}$` on the upper half plane(complex) , with `$C_l$` along the real axis expect singular point `$\omega$` (using a little circle `$C_r$` to evade it) and `$C_R$` as the infinity large circle.
Using Jordon Lemma, the integral on `$C_R$` is zero. And the whole integral is zero for there is no singular point inner the contour. Then:

<div>$$\text{P} \int_{-\infty}^{\infty} \frac {\tilde{G}(\omega')} {\omega'-\omega} \td \omega' + \int_{C_r}  \frac {\tilde{G}(\omega')} {\omega'-\omega} \td \omega' = 0$$</div>

The integral on `$C_r$` can be compute with the expansion of integrated function near the point:

<div>$$\int_{C_r}\frac {\tilde{G}(\omega')} {\omega'-\omega} \sim \int_{0}^{\pi} \frac {\tilde{G}(\omega + r e^{\ti \theta})} {r e^{\ti \theta}} r \ti e^{\ti\theta} \td \theta = \ti \pi \tilde{G}(\omega) $$</div>

Then one have:

<div>$$\text{P} \int_{-\infty}^{\infty} \frac {\tilde{G}(\omega')} {\omega'-\omega} \td \omega' = -\ti \pi \tilde{G}(\omega)$$</div>

{{%/fold%}}

Example: `$G(t\gt 0) = e^{-\ti E t}$` , then `$\tilde{G}(\omega) = \frac 1 {\omega -E} - \ti \pi \delta(\omega-E)$`

## Path Integral in Quantum Mechanics

The goal of path integral is that try to describe the quantum dynamics from a `"classical" point of view` , as particle moving in coordinate space(or coordinate-momentum phase space).

1.  Path Integral Version #1

    <div>$$K(x',x,t) = \int \mathcal{D}[x(\tau)] \exp\big(\frac {\ti} {\hbar} \int_0^t L(x(\tau),\flo{x}(\tau))\td \tau \big) = \int \mathcal{D}[x]\exp\big[\frac {\ti} {\hbar} S \big]$$</div>

    -   `$\int \mathcal{D}[x]$` : `functional integral` over all `path` `$x(\tau)$` with `$x(0)=x ; x(t)=x'$` . The measure of path is very diffcult to define.
    -   `$L(x,\flo{x})$` : `Lagrangian`
    -   `$\flo{x} \equiv \frac {\td x(\tau)} {\td \tau}$` : the `velocity` on path `$x(\tau)$`
    -   `$S[x(\tau)]\equiv \int_0^t L(x(\tau),\flo{x}(\tau))\td \tau$` : the `action` of path `$x(\tau)$`

2.  Path Integral Version #2:

    <div>$$K(x',x,t) = \int \mathcal{D}[x(\tau)]\mathcal{D}[p(\tau)] \exp \big(\frac {\ti} {\hbar} \int_0^t \{p \flo{x} - H(p,x) \} \big)$$</div>

    -   `$\int \mathcal{D}[p]$` : `functional integral` over all path in momentum space, with proper measure. Path of `$p$` has no boundary condition
    -   `$H(p,x)$` : `Hamiltonian`

One can check these two version of path integral by single particle Hamiltonian: `$\hat H = \hat p^2/2m + V(\hat x) = T(\hat p) +V(\hat x)$` , the propagator is `$K(x',x,t) = \bra{x'}e^{-\ti t \hat H / \hbar} \ket{x}$`:

{{%fold "Check"%}}
1.  Check for version 1: <br>
    Divide this propagation over time `$t$` into `$N$` steps, each of time `$\epsilon=t/N$` :

    <div>$$K(x',x,t) = \bra{x'} (e^{-\frac {\ti} {\hbar} \epsilon \hat H})^N \ket{x} = \int \td x_{N-1}\td x_{N-2}\cdots \td x_{1} \bra{x'}e^{-\ti \epsilon \hat H/\hbar}\ket{x_{N-1}}\cdots\bra{x_1}e^{-\ti \epsilon \hat H/\hbar}\ket{x}$$</div>

    With the `Trotter-Suzuki Approximation` : `$e^{\eta (\hat A+\hat B)} = e^{\eta \hat A} e^{\eta \hat B} + O(\eta^2)$` , one have:

    <div>$$\bra{x_{i+1}}e^{-\ti \epsilon \hat H/\hbar} \ket{x_i} \approx \bra{x_{i+1}}e^{-\frac {\ti} {\hbar} \epsilon \frac {\hat p^2} {2m}} \ket{x_i} e^{-\frac {\ti} {\hbar} V(x_i)} = \sqrt{\frac {m} {2\pi\hbar \epsilon \ti}} e^{\frac {\ti} {\hbar} \epsilon \big(\frac {m} 2 (\frac {x_{i+1}-x_i} \epsilon)^2 - V(x_i) \big)} $$</div>

    Using this expression, one can write the propagator as:

    <div>$$K(x',x,t) \approx \int \td x_{N-1}\cdots \td x_1 \big(\frac m {2\pi \hbar \epsilon \ti} \big)^{N/2} \exp \Big(\frac {\ti} {\hbar} \sum_{i=0}^{N-1} \epsilon \big[\frac {m} 2 (\frac {x_{i+1}-x_i} \epsilon)^2 - V(x_i) \big] \Big)$$</div>

    Where `$x_0=x, x_N= x'$` . When `$N\rightarrow \infty$` the summation at the index will be the integral. <br>
    With the measure of path being:

    <div>$$\mathcal{D}[x] = \lim_{N\rightarrow \infty} \prod_{i=1}^{N-1} \td x_i \big(\frac {m N} {2\pi\hbar t \ti} \big)^{N/2}$$</div>

    one can write that:

    <div>$$K(x',x,t) = \int \mathcal{D}[x(\tau)] \exp \big(\frac {\ti} {\hbar} \int_0^t [\frac {m \flo{x}^2} 2 - V(x)]\td \tau \big) = \int \mathcal{D}[x] \exp(\frac {\ti} {\hbar} \int_0^t L(x,\flo{x}) \td \tau)$$</div>

2.  Check for version 2: <br>
    With the same setting: `$K(x',x,t) = \bra{x'}(e^{-\ti \epsilon \hat H / \hbar})^N \ket{x}$` and `$e^{-\ti \epsilon \hat H/\hbar} = e^{-\ti \epsilon T(\hat p)/\hbar} e^{-\ti \epsilon V(\hat x)/\hbar} + O(\epsilon^2)$` <br>
    Then insert `$N-1$` resolution of identity in terms of `$\hat x$` eigenstates, and `$N$` resolution of identity in terms of `$\hat p$` eigenstates:

    <div>$$\begin{aligned}
    K(x',x,t) &\approx \int \td p_{N-1}\cdots \td p_1 \td x_{N-1} \cdots \td x_1 \prod_{i=1}^{N-1} \bra{x_i} e^{-\ti \epsilon T(\hat p)/\hbar} \ket{p_{i-1}} \bra{p_{i-1}} e^{-\ti \epsilon V(\hat x)/\hbar} \ket{x_{i-1}} \\
    &=\int \td p_{N-1}\cdots \td p_1 \td x_{N-1} \cdots \td x_1\exp \big(-\frac {\ti} {\hbar} \sum_{i=0}^{N-1} \epsilon(T(p_i)+V(x_i)) \big) \prod_{i=1}^{N} \langle x_i|p_{i-1}\rangle\langle p_{i-1}|x_{i-1}\rangle \\
    &=\int (2\pi\hbar)^N \td p_{N-1}\cdots \td p_1 \td x_{N-1} \cdots \td x_1 \exp\big(\frac {\ti} {\hbar}\sum_{i=0}^{N-1} \epsilon (p_i \frac {x_{i+1}-x_i} {\epsilon} - T(p_i)-V(x_i)) \big) \\
    &\approx \int \mathcal{D}[x]\mathcal{D}[p] \exp(\frac {\ti} {\hbar} \int_0^t [p\flo{x}-H(p,x)]\td \tau )
    \end{aligned}$$</div>

    Where we used `$\langle x | p \rangle = (2\pi\hbar)^{-1/2} \exp(\ti px/\hbar)$`, and where the measure of paths `$\mathcal{D}[x]\mathcal{D}[p]$` contains the `$(2\pi\hbar)^{-N}$` normalization factor

{{%/fold%}}

## Stationary Phase Approximation

For the integral `$\int e^{\ti k f(x)}\td x$` with large `$k$` , most contribution comes from `$x_s$` where `$f$` is `stationary` , namely `$f'(x_s)=0$` . Then using the Taylor expansion to `$(x-x_s)^2$` , one can prove this approximation:

<div>$$\int e^{\ti k f(x)} \td x \approx \sum_{x_s \in \{x:f'(x)=0\}} \sqrt{\frac {2\pi \ti} {kf''(x_s)}} e^{\ti k f(x_s)}$$</div>

For n-dimensional integral:

<div>$$\int e^{\ti k f(\bm{x}) } \td^n \bm{x} \approx \sum_{\bm{x}_s \in \{\bm{x}:\nabla f(\bm{x}) = \bm{0} \}} \Big(\frac {2\pi \ti} k \Big)^{n/2} \Big(\det \frac {\partial^2 f(\bm{x}_s)} {\partial x_i \partial x_j} \Big)^{-1/2} e^{\ti k f(\bm{x}_s)}$$</div>

# Geometric Phase

Consider an `adiabatic periodic evolution` of a Hamiltonian `$\hat H(t)$` with `$\hat H(T)=\hat H(0)$` . Suppose the Hamiltonian always has a `unique` ground state `$\ket{E_0(t)}$`. <br>
We care for that after the periodic evolution, what is the phase acquired by the ground state. <br>
The phase factor is `$\bra{E_0(0)} \hat U(T)\ket{E_0(0)}$` where `$\hat U(T) = \mathcal{T} \exp(-\frac {\ti} {\hbar} \int_{0}^T \hat H(t')\td t' )$` . <br>
Note that `$\hat U(t)\ket{E_0(0)}$` is not exactly `$\ket{E_0(t)}$` , but by the adiabatic theorem, they will only differ by a complex phase.

Divide `$T$` into `$N$` intervals of `$\epsilon = T/N$` , define `$t_n=n\epsilon$` . Then `up to` `$O(\epsilon^2)$` error, we have the expansion:

<div>$$\bra{E_0(0)}\hat U(T)\ket{E_0(0)} \approx \prod_{i=0}^{N-1} \bra{E_0(t_{i+1})} e^{-\frac {\ti} {\hbar } \epsilon \hat H(t_i)} \ket{E_0(t_i)} = e^{-\frac {\ti} {\hbar} \epsilon \sum_{i=0}^{N-1} E(t_i) } \prod_{i=0}^{N-1} \langle E_0(t_{i+1})| E_0(t_i)\rangle$$</div>

Note that `$\ket{E_0(T)}=\ket{E_0(0)}$` , and by adiabatic theorem, `$\hat U(t) \ket{E_0(0)}$` will always at the ground state. Then `$\ket{E_0(t_i)}\bra{E_0(t_i)}$` is always like `$\hat 1$` when operated on it.  <br>
When `$\epsilon \rightarrow 0$` (`$N\rightarrow \infty$`) limit, the first factor becomes `$e^{-\frac {\ti} {\hbar} \int_0^T E_0(t)\td t}$`, which is the expected `dynamic phase` acquired from time-evolution <br>
The second factor is:

<div>$$\prod_{i=0}^{N-1} \langle E_0(t_{i+1})| E_0(t_i)\rangle \approx \prod_{i=1}^N \langle E_0(t_i)| 1-\epsilon \frac {\partial} {\partial t}\ket{E_0(t_i)} \approx \exp\big(\sum_{i=1}^N \epsilon \ti A(t_i) \big) \approx \exp(\ti \int_0^T A(\tau)\td \tau)$$</div>

Where `$A(t) = \ti \bra {E_0(t)}\partial_t \ket{E_0(t)}$`

<em>[Definition]</em> : `the Berry's phase` :
<div>$$\int A(t)\td t \equiv \int \ti \bra{\psi(t)}\partial_t \ket{\psi(t)} \td t$$</div>
where `$t$` parametrizes a `periodic` evolution `$\ket{\psi(t)}$` <br>
<em>[Definition]</em> : `the Berry connection` :

<div>$$A(t) := \ti \bra{\psi(t)}\partial_t\ket{\psi(t)}$$</div>

{{%fold "Note"%}}

1.  The periodicity requirement : `$\ket{\psi(t_{\text{final}})} = \ket{\psi(t_{\text{initial}})} $`
2.  Here `$t$` is just a parameter describing the path in Hilbert space. NOT time-evolution
3.  With note 2 in mind, one can write the Berry phase like(just in this format):

    <div>$$\oint_{C\in \mathcal{H}} \ti \bra{\psi}\td \ket{\psi}$$</div>

4.  Then one can find that Berry phase does NOT depend on the speed of "evolution" , just depend on the path (geometric) in Hilbert Space

5.  The Berry phase does NOT depend on `$\hbar$` , for it does not depend on speed.

6.  `Gauge transformation` of the Berry connection: with the transformation: `$\ket{\psi(t)}\rightarrow e^{\ti \theta(t)}\ket{\psi(t)}$` where `$\theta(T)-\theta(0)\equiv 0 \text{ mod }2\pi$` : <br>
    Berry connection will be:

    <div>$$A(t)\rightarrow \ti \bra{\psi(t)}e^{-\ti \theta(t)} \partial_t e^{\ti \theta(t)}\ket{\psi(t)} = A(t)-\frac {\td \theta} {\td t}$$</div>

    But the Berry phase will be:

    <div>$$\int A(t)\td t \rightarrow \int A(t) \td t + [\theta(T)-\theta(0)] \equiv \int A(t)\td t \text{ mod }2\pi$$</div>


{{%/fold%}}

# Gauge Invariance & Electromagnetic Field

We have known that adding a global phase factor `$\ket{\psi}\rightarrow e^{\ti\theta}\ket{\psi}$` with real `$\theta$` independent of `$\bm{x},t$`  will not change the Schorodinger equation and any expectation value of observables. <br>
However, with the transformation:

<div>$$\psi(\bm{x},t) \rightarrow e^{\ti \theta(\bm{x},t)} \psi(\bm{x},t)$$</div>

we have:

<div>$$\begin{aligned}
\partial_t \psi &\rightarrow e^{\ti\theta}\partial_t \psi + (\ti\partial_t \theta) e^{\ti \theta} \psi \\
\partial_{\bm{x}} \psi &\rightarrow e^{\ti\theta}\partial_{\bm{x}}\psi + (\ti\partial_{\bm{x}}\theta)e^{\ti\theta} \psi
\end{aligned}$$</div>

Then the Schrodinger equation will not be preserved.

To make the theory formally `gauge invariant` under arbitary `$\psi\rightarrow e^{\ti \theta}\psi$` , one need to absorb the differential of `$\theta$` into the transformation of a `Gauge Field` <br>
Define a 4-component space-time-dependent real-value `Gauge Field` `$(a_0,\bm{a})$` , and the `canonical momentum` : `$\hat P = \hat p - \hbar \bm{a}$` <br>
Demand the gauge transform to be : `$\psi\rightarrow e^{\ti\theta}\psi , \bm{a}\rightarrow \bm{a}+\partial_{\bm{x}}\theta , a_0\rightarrow a_0+\partial_t \theta$` . Then one can check That `$\hat P \psi \rightarrow e^{\ti\theta}\hat P\psi$` <br>
Modify the Schrodinger equation as:

<div>$$\big[\frac {\hat P^2} {2m}+V(\bm{x})\big]\psi = \hbar (\ti\partial_t + a_0)\psi$$</div>

This will be `invariant` under the above gauge transformation <br>
MOdify the definition of probability current density as

<div>$$\bm{J}(\bm{x},t) = \text{Re}\big[\psi^* \frac {\hat P} {m} \psi \big] = -\ti \frac {\hbar} {2m} (\psi^*\partial_{\bm{x}}\psi - \psi \partial_{\bm{x}}\psi^*) - \frac {\hbar} m \bm{a}\rho$$</div>

This is invariant under the gauge transformation, so continuity equation is preserved.
