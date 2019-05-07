---
title: "Manybody: Introduction to Green's Function"
date: 2019-03-19T18:48:01+08:00
draft: false
tags: ["statistical-phys"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "Classnote for the class in PKU: 'Quantum Theory for Manybody System'. This note gives a review for theory of Green's function. Covers the definition of real-time Green's function of the many body theory at temperature is zero, and the thermal Green's function , or temperature Green's function. And discussion how to extract information from Green's function."
---

# Green's Function

Giving a set of orthonormal basis for single-particle state `$\{\ket{\alpha}\}$` (e.g. coordinate eigenstate `$\ket{\bm{r}}$` for spinless particles), we can write down the creation/annihilation operators : `$\hat a_\alpha \ , \ \hat a_{\alpha}^\dagger$` in the Fock space, which forms the complete description for the many-body system.

_[Definition]_ : `$n$`-particle `Real-time Green's function` is a function of `$2n$` parameters distinguishing states and `$2n$` time variables:

<div>$$G^{(n)}(\alpha_1,t_1;\cdots;\alpha_n,t_n;\alpha_1',t_1';\cdots;\alpha_n',t_n')=(-\ti)^n \Big\langle \mathcal{T}\big\{\hat a_{\alpha_1}(t_1)\cdots \hat a_{\alpha_n}(t_n)\hat a_{\alpha_1'}^\dagger(t_1')\cdots \hat a_{\alpha_n'}^\dagger(t_n') \big\} \Big\rangle$$</div>

Where `$\hat a_{\alpha}(t)=e^{\ti\hat H t/\hbar}\hat a_\alpha e^{-\ti\hat H t/\hbar}$` is the definition of operators in Heisenberg Picture. And the `time-ordered product` of time-dependent operators is defined as:

<div>$$\mathcal{T}\{\hat O_1(t_1)\cdots \hat O_n(t_n)\}=\sum_{\sigma} \zeta^\sigma \ \Theta(t_{\sigma(1)}-t_{\sigma(2)})\Theta(t_{\sigma(2)}-t_{\sigma(3)})\cdots \Theta(t_{\sigma(n-1)}-t_{\sigma(n)}) \hat O_{\sigma(1)}(t_{\sigma(1)})\cdots \hat O_{\sigma(n)}(t_{\sigma(n)})$$</div>

Summation is calculated over all `$n$`-permutation. Factor `$\zeta=1$` for Bosonic operators and `$\zeta=-1$` for Fermionic operators. <mark>For the case of some time variable are equal, time-ordered product should be treated as the normal-ordered product, which means that annihilation operator should be at right side of the creation operator, but hold the order in bracket as far as possible.</mark>

The expectation value `$\langle \cdots \rangle$` can be choose differently according to the application. For example, one can compute the Green's function on the many-body ground state, then `$\langle \cdots \rangle = \bra{\Psi_0}\cdots \ket{\Psi_0}$` , one can also compute it on the thermal state: `$\langle \cdots \rangle = \text{Tr}\hat \rho \cdots$` where `$\hat \rho=\frac 1 {\mathcal{Z}} e^{-\beta \hat H}$` for canonical ensemble and `$\hat \rho=\frac 1 {\mathcal{Z}} e^{-\beta(\hat H-\mu\hat N)}$` for grand canonical ensemble. And for the case of ensemble average, we change the definition of `$\hat a_{\alpha}(t)$` as: `$\hat a_{\alpha}(t)=e^{\ti \hat Kt/\hbar} \hat a_{\alpha}e^{-\ti\hat Kt/\hbar}$` . Where `$\hat K=\hat H$` for canonical ensemble and `$\hat K=\hat H-\mu\hat N$` for grand canonical ensemble.

_[Definition]_ : `$n$`-particle `Thermal Green's function` is similar to the real-time Green's function:

<div>$$\mathcal{G}^{(n)}(\alpha_1,\tau_1;\cdots;\alpha_n,\tau_n;\alpha_1',\tau_1';\cdots;\alpha_n',\tau_n')=(-1)^n \Big\langle \mathcal{T}\big\{\hat a_{\alpha_1}(\tau_1)\cdots \hat a_{\alpha_n}(\tau_n)\hat a_{\alpha_1'}^\dagger(\tau_1')\cdots \hat a_{\alpha_n'}^\dagger(\tau_n') \big\} \Big\rangle$$</div>

Thermal Green's function is always defined with the ensemble average. Where `$\hat a_\alpha(\tau)=e^{\hat K\tau/\hbar} \hat a _\alpha e^{-\hat K\tau/\hbar}$` is the operator in Heisenberg Picture with the imaginary time `$t\rightarrow -\ti\tau$`. Where `$\hat K=\hat H$` for canonical ensemble and `$\hat K=\hat H-\mu\hat N$` for grand canonical ensemble. Any time variable is in the interval `$[0,\hbar\beta]$` :`$\tau_i,\tau_i'\in [0,\hbar\beta]$` .

Note that `$\hat a_\alpha^\dagger(\tau)$` with this definition is not the Hermitian adjoint of `$\hat a_\alpha(\tau)$`. And `$\mathcal{G}^{(n)}(\tau)\neq (-\ti)^n G^{(n)}(t=-\ti \tau)$` because of the singularity of the of `$\Theta$` function with imaginary arguments.

## Single-Particle Green's Function

The special form of the Green's function: single particle Green's function is widely used in the many-body theory. Here we show some different species of single-particle Green's function in coordinate representation:

1.  **Time-ordered Green's function**

    <div>$$\begin{aligned}
    \ti G(\bm{r},t;\bm{r'},t')&=\big\langle\mathcal{T}\{\hat \psi(\bm{r},t)\hat \psi^\dagger(\bm{r'},t')\} \big\rangle \\
    &=\Theta(t-t')\langle\hat \psi(\bm{r},t)\hat \psi^\dagger(\bm{r'},t')\rangle+\zeta \Theta(t'-t)\langle \hat \psi^\dagger(\bm{r'},t')\hat \psi(\bm{r},t)\rangle
    \end{aligned}$$</div>

2.  **Retarded Green's function**

    <div>$$\ti G^r(\bm{r},t;\bm{r'},t')=\Theta(t-t')\big\langle[\hat \psi(\bm{r},t),\hat \psi^\dagger(\bm{r'},t')]_{-\zeta}\big\rangle$$</div>

    Where the generalized commutator is `$[A,B]_{-\zeta}=AB-\zeta BA$`

3.  **Advanced Green's function**

    <div>$$\ti G^a(\bm{r},t;\bm{r'},t')=-\Theta(t'-t)\big\langle[\hat \psi(\bm{r},t),\hat \psi^\dagger(\bm{r'},t')]_{-\zeta}\big\rangle$$</div>

4.  **Lesser Green's function**

    <div>$$\ti G^<(\bm{r},t;\bm{r'},t')=\zeta\big\langle \hat \psi^\dagger(\bm{r'},t')\hat \psi(\bm{r},t)\big\rangle$$</div>

5.  **Greater Green's function**

    <div>$$\ti G^>(\bm{r},t;\bm{r'},t')=\big\langle \hat \psi^\dagger(\bm{r'},t')\hat \psi(\bm{r},t)\big\rangle$$</div>

_[Theorem]_ : There are some relations among Green's functions defined above:

<div>$$\begin{cases}
& G^r-G^a = G^>-G^< \\
& G=G^<+G^r=G^>+G^a \\
& G^r(\bm{r},t;\bm{r'},t')= G^a(\bm{r'},t';\bm{r},t)^*
\end{cases}$$</div>

And some trivial identities:

<div>$$\begin{aligned}
G(\bm{r},t;\bm{r'},t')&= \Theta(t-t')G^>(\bm{r},t;\bm{r'},t') +\Theta(t'-t)G^<(\bm{r},t;\bm{r'},t') \\
G^r(\bm{r},t;\bm{r'},t') &= \Theta(t-t')\big(G^>(\bm{r},t;\bm{r'},t')-G^<(\bm{r},t;\bm{r'},t')\big) \\
G^a(\bm{r},t;\bm{r'},t') &= -\Theta(t'-t)\big(G^>(\bm{r},t;\bm{r'},t')-G^<(\bm{r},t;\bm{r'},t')\big)
\end{aligned}$$</div>

{{%fold "Proof"%}}

These trivial identities can be directly checked by the definition. We just check the first three identities:

<div>$$\begin{aligned}
G^r-G^a &= -\ti\Theta(t-t')\langle \hat \psi(\bm{r},t)\hat \psi^\dagger(\bm{r'},t')\rangle+\ti \Theta(t-t')\zeta\langle \hat \psi^\dagger(\bm{r'},t')\hat \psi(\bm{r},t)\rangle \\
&\indent - \ti\Theta(t'-t)\langle \hat \psi(\bm{r},t)\hat \psi^\dagger(\bm{r'},t')\rangle+\ti \Theta(t'-t)\zeta \langle \hat \psi^\dagger(\bm{r'},t')\hat \psi(\bm{r},t)\rangle \\
&=-\ti \langle \hat \psi(\bm{r},t)\hat \psi^\dagger(\bm{r'},t')\rangle+\ti \zeta \langle \hat \psi^\dagger(\bm{r'},t')\hat \psi(\bm{r},t)\rangle  \\
&=G^>- G^<
\end{aligned}$$</div>

Where we used the fact that `$\Theta(x)+\Theta(-x)=1$`.

<div>$$\begin{aligned}
G&= -\ti \Theta(t-t')\langle \hat \psi(\bm{r},t)\hat \psi^\dagger(\bm{r'},t')\rangle-\ti \Theta(t'-t)\zeta \langle \hat \psi^\dagger(\bm{r'},t')\hat \psi(\bm{r},t)\rangle  \\
&= -\ti \Theta(t-t')\langle [\hat \psi(\bm{r},t),\hat \psi^\dagger(\bm{r'},t')]_{-\zeta}+\zeta \hat \psi^\dagger(\bm{r'},t')\hat \psi(\bm{r},t)\rangle -\ti \zeta \Theta(t'-t) G^< \\
&=G^r+G^<
\end{aligned}$$</div>

Similarly, one can check that `$G=G^a+G^>$`.

<div>$$\begin{aligned}
G^a(\bm{r'},t';\bm{r},t)^* &= -\ti \Theta(t-t') \big\langle[\hat \psi(\bm{r'},t'),\hat \psi^\dagger(\bm{r},t)]_{-\zeta}^\dagger \big\rangle\\
&=-\ti \Theta(t-t') \big\langle[\hat \psi^\dagger(\bm{r},t)^\dagger,\hat \psi(\bm{r'},t')^\dagger]_{-\zeta} \big\rangle\\
&=G^r(\bm{r},t;\bm{r'},t')
\end{aligned}$$</div>

{{%/fold%}}

## Frequency/Momentum Representation

If the system has spatial-time translation symmetry. Then single particle Green's function should be the function of time interval and spatial displacement. There is the Fourier transformation for those Green's functions:

<div>$$G(\bm{r},t;\bm{r'},t')=\int\frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4}} e^{\ti\bm{k}\cdot(\bm{r}-\bm{r'})-\ti\omega(t-t')} \tilde{G}(\bm{k},\omega)$$</div>

{{%fold "The reason why here normalization factor for Fourier transform is a little different"%}}

Here we show why it is different from the ordinary Fourier transform we used before:

When we apply Fourier transform on the Green function with two coordinates and time variables.

<div>$$\begin{aligned}
\tilde{G}(\bm{k},\omega;\bm{k'},\omega')&=\int \frac {\td^3 \bm{r}\td t} {(2\pi)^{4/2}}\int \frac {\td^3 \bm{r'}\td t'} {(2\pi)^{4/2}} e^{-\ti \bm{k}\cdot \bm{r}-\ti\bm{k'}\cdot \bm{r'}+\ti\omega t+\ti \omega't'}G(\bm{r},t;\bm{r'},t')
\end{aligned}$$</div>

Then use the spatial-time translation symmetry, i.e., we apply the variable substitution: `$\bm{r}-\bm{r'}=\bm{x} \ ; \bm{r}+\bm{r'}=\bm{R}$` and `$t-t'=\Delta t \ ; \ t+t'=\bm{T}$` . Noting the Jacobian: `$J=\frac 1 {16}$`. So:

<div>$$\begin{aligned}
\tilde{G}(\bm{k},\omega;\bm{k'},\omega')&=\frac 1 {16} \int \frac {\td^3 \bm{R}\td T} {(2\pi)^{4/2}} \int \frac {\td^3 \bm{x}\td \Delta t} {(2\pi)^{4/2}} e^{-\ti \bm{k}\cdot (\bm{R}+\bm{x})/2-\ti\bm{k'}\cdot (\bm{R}-\bm{x})/2+\ti\omega (\Delta t+T)/2+\ti\omega'(T-\Delta t)/2} G(\bm{r}-\bm{r'},t-t';\bm{0},0) \\
&=\frac 1 {16} \int \frac {\td^3 \bm{R}\td T} {(2\pi)^{4/2}} \int \frac {\td^3 \bm{x}\td \Delta t} {(2\pi)^{4/2}}\exp\Big(-\ti \frac {\bm{k}+\bm{k'}} 2 \cdot \bm{R}-\ti\frac {\bm{k}-\bm{k'}} 2 \cdot \bm{x}+\ti \frac {\omega+\omega'} 2 T+\ti \frac {\omega-\omega'} 2 \Delta t\Big)G(\bm{x},\Delta t;\bm{0},0) \\
&=\frac 1 {16}\delta(\frac {\bm{k}+\bm{k'}} 2)\delta(\frac {\omega+\omega'} 2)\int \td^3 \bm{x}\td\Delta t \ e^{-\ti \bm{k}\cdot \bm{x}+\ti \omega \Delta t}G(\bm{x},\Delta t;\bm{0},0) \\
&=\delta(\bm{k}+\bm{k'})\delta(\omega+\omega')\int \td^3 \bm{x}\td\Delta t \ e^{-\ti \bm{k}\cdot \bm{x}+\ti \omega \Delta t}G(\bm{x},\Delta t;\bm{0},0)
\end{aligned}$$</div>

So, if we make the corresponding in the spatial-time translation invariant system:

<div>$$\begin{aligned}
G(\bm{r},t;\bm{r'},t')&\rightarrow G(\bm{r}-\bm{r'},t-t') \\
\tilde{G}(\bm{k},\omega;\bm{k'},\omega') &\rightarrow \tilde{G}(\bm{k},\omega)\equiv\tilde{G}(\bm{k},\omega;-\bm{k},-\omega)
\end{aligned}$$</div>

then we need to connect them with such Fourier transform:

<div>$$\tilde{G}(\bm{k},\omega) = \int \td^3 \bm{r}\td t \ e^{-\ti\bm{k}\cdot \bm{r}+\ti\omega t} G(\bm{r},t)\leftrightarrow G(\bm{r}-\bm{r'},t-t')=\int \frac {\td^3 \bm{k}\td\omega} {(2\pi)^4} e^{\ti\bm{k}\cdot (\bm{r}-\bm{r'})-\ti\omega (t-t')}\tilde{G}(\bm{k},\omega)$$</div>

<mark>One can also understand this in the way of Green's function has a pair of field operators. So the factor should be modified. And the form is the same as the function inner product, i.e. `$\int \td^3 \bm{r}\td t$`.</mark>

{{%/fold%}}

In which the function of `$\bm{k},\omega$` : `$\tilde{G}(\bm{k},\omega)$` is the Green's function in frequency/momentum representation. Without the confusion sometimes we directly write it as `$G(\bm{k},\omega)$` but use the arguments to distinguish the Green's function in time/coordinate representation or frequency/momentum representation.

_[Definition]_ : The `spectral function` is defined by the Green's function in frequency/momentum representation:

<div>$$\begin{aligned}
A(\bm{k},\omega)&=\ti[G^r(\bm{k},\omega)-G^a(\bm{k},\omega)] =-2\text{Im} G^r(\bm{k},\omega) \\
&=\ti[G^>(\bm{k},\omega)-G^<(\bm{k},\omega)]
\end{aligned}$$</div>

_[Theorem]_ : Spectral function has the `sum rule`:

<div>$$\int_{-\infty}^{+\infty} \frac {\td \omega} {2\pi} A(\bm{k},\omega)=1$$</div>

{{%fold "Proof"%}}

With the definition of Green's function in frequency/momentum representation, it does be the Fourier transformation of Green's function as the function of time and coordinate:

<div>$$G(\bm{k},\omega)=\int \frac {\td^3 \bm{r}\td t} {(2\pi)^{4}} e^{-\ti \bm{k}\cdot \bm{r}+\ti \omega t} G(\bm{r},t;\bm{0},0)$$</div>

Then the spectral function:

<div>$$\begin{aligned}
A(\bm{k},\omega)&=\ti \int \td^3 \bm{r}\td t \ e^{-\ti \bm{k}\cdot \bm{r}+\ti \omega t} \Big(-\ti \big\langle \hat \psi(\bm{r},t)\hat \psi^\dagger(\bm{0},0)\big\rangle +\ti \zeta \big\langle\hat \psi^\dagger(\bm{0},0)\hat \psi(\bm{r},t)\big\rangle \Big)\\
&=\int \td^3 \bm{r}\td t \ e^{-\ti \bm{k}\cdot \bm{r}+\ti \omega t}\big\langle [\hat \psi(\bm{r},t),\hat \psi^\dagger(\bm{0},0)]_{-\zeta} \big\rangle
\end{aligned}$$</div>

Then the integral of spectral function over frequency:

<div>$$\begin{aligned}
\int_{-\infty}^{+\infty} \frac {\td \omega} {2\pi} A(\bm{k},\omega) &= \int \td^3 \bm{r}\td t \ \delta(t) e^{-\ti\bm{k}\cdot \bm{r}}\big\langle [\hat \psi(\bm{r},t),\hat \psi^\dagger(\bm{0},0)]_{-\zeta}\big\rangle  \\
&= \int \td^3 \bm{r} \ e^{-\ti \bm{k}\cdot \bm{r}} \big\langle \delta(\bm{r}) \big\rangle \\
&= 1
\end{aligned}$$</div>

q.e.d.

{{%/fold%}}

_[Theorem]_ : In equilibrium, which means we treat the average as the thermal average: `$\langle \cdots \rangle = \text{Tr}\hat \rho\cdots$`, all the (single-particle) Green's functions can be related to the spectral function:

<div>$$\begin{cases}
G^<(\bm{k},\omega) &= -\ti \zeta n_{\zeta}(\omega) A(\bm{k},\omega)\\
G^>(\bm{k},\omega) &= -\ti(1+\zeta n_{\zeta}(\omega)) A(\bm{k},\omega) \\
G(\bm{k},\omega) &= \int \frac {\td \omega'} {2\pi} A(\bm{k},\omega)\Big\{-\frac {\zeta n_\zeta(\omega')} {\omega-\omega'-\ti\epsilon} +\frac {1+\zeta n_\zeta(\omega')} {\omega-\omega'+\ti\epsilon}\Big\} \\
G^r(\bm{k},\omega) &= \int \frac {\td \omega'} {2\pi} \frac {A(\bm{k},\omega')} {\omega-\omega'+\ti \epsilon} \\
G^a(\bm{k},\omega) &= \int \frac {\td \omega'} {2\pi} \frac {A(\bm{k},\omega')} {\omega-\omega'-\ti\epsilon}
\end{cases}$$</div>

Where `$n_{\zeta}(\omega) = \big(e^{\beta\hbar\omega}-\zeta\big)^{-1}$` , and `$\epsilon$`, as usual, is a infinitesimal small positive real number.

{{%fold "Proof"%}}

First of all, we show the relationship between greater/lesser Green's function and spectral function. We choose a set of orthonormal basis `$\ket{m}$` , they are eigenstates of Hamiltonian(and particle number):

<div>$$\hat K=\hbar\omega_m\ket{m}$$</div>

Then:

<div>$$\begin{aligned}
\ti G^<(\bm{k},\omega) &= \zeta \frac 1 {\mathcal{Z}} \int \frac {\td^3\bm{r}\td t} {(2\pi)^{4}} e^{-\ti \bm{k}\cdot \bm{r}+\ti\omega t} \text{Tr} e^{-\beta \hat K} \hat \psi^\dagger(\bm{0},0) \hat \psi(\bm{r},t) \\
&=\frac {\zeta} {\mathcal{Z}} \int \frac {\td^3\bm{r}\td t} {(2\pi)^{4}}e^{-\ti \bm{k}\cdot \bm{r}+\ti\omega t}\Big(\sum_{m,n}e^{-\beta K_m}\bra{m}\hat \psi^\dagger(\bm{0})\ket{n}\bra{n}\hat \psi(\bm{r})\ket{m} e^{-\ti (\omega_m-\omega_n)t}\Big) \\
&=\frac {\zeta} {\mathcal{Z}} \sum_{m,n}\delta(\omega-(\omega_m-\omega_n)) e^{-\beta K_m}\int \frac {\td^3 \bm{r}} {(2\pi)^3} e^{-\ti \bm{k}\cdot \bm{r}}\bra{m}\hat \psi^\dagger(\bm{0})\ket{n}\bra{n}\hat \psi(\bm{r})\ket{m} \\
\ti G^>(\bm{k},\omega) &= \frac 1 {\mathcal{Z}} \int \frac {\td^3\bm{r}\td t} {(2\pi)^{4}} e^{-\ti \bm{k}\cdot \bm{r}+\ti\omega t} \text{Tr} e^{-\beta \hat K} \hat   \psi(\bm{r},t)\hat\psi^\dagger(\bm{0},0) \\
&=\frac {1} {\mathcal{Z}} \int \frac {\td^3\bm{r}\td t} {(2\pi)^{4}}e^{-\ti \bm{k}\cdot \bm{r}+\ti\omega t}\Big(\sum_{m,n}e^{-\beta K_m}\bra{m}\hat \psi(\bm{r})\ket{n}\bra{n}\hat \psi^\dagger(\bm{0})\ket{m} e^{\ti (\omega_m-\omega_n)t}\Big) \\
&=\frac 1 {\mathcal{Z}}\sum_{m,n}\delta(\omega-(\omega_m-\omega_n)) e^{-\beta K_n}\int \frac {\td^3 \bm{r}} {(2\pi)^3} e^{-\ti \bm{k}\cdot \bm{r}}\bra{m}\hat \psi^\dagger(\bm{0})\ket{n}\bra{n}\hat \psi(\bm{r})\ket{m} \\
&=\frac 1 {\mathcal{Z}}\sum_{m,n}\delta(\omega-(\omega_m-\omega_n)) e^{-\beta K_m+\beta(K_m-K_n)}\int \frac {\td^3 \bm{r}} {(2\pi)^3} e^{-\ti \bm{k}\cdot \bm{r}}\bra{m}\hat \psi^\dagger(\bm{0})\ket{n}\bra{n}\hat \psi(\bm{r})\ket{m} \\
\end{aligned}$$</div>

Where

<div>$$K_m-K_n=\hbar\omega_m-\hbar\omega_n$$</div>

Then with the existence of delta function, we have the equality:

<div>$$G^<(\bm{k},\omega)=\zeta e^{\beta\hbar\omega} G^>(\bm{k},\omega)$$</div>

So with the definition of spectral function: `$A(\bm{k},\omega)=\ti(G^>(\bm{k},\omega)-G^<(\bm{k},\omega))$` , we have the first two equality:

<div>$$\begin{aligned}
G^<(\bm{k},\omega) &= -\ti \zeta n_{\zeta}(\omega) A(\bm{k},\omega)\\
G^>(\bm{k},\omega) &= -\ti(1+\zeta n_{\zeta}(\omega)) A(\bm{k},\omega)
\end{aligned}$$</div>

With the relation that:

<div>$$G^r(\bm{r},t;\bm{r'},t')=\Theta(t-t')(G^>(\bm{r},t;\bm{r'},t')-G^<(\bm{r},t;\bm{r'},t'))$$</div>

With the Convolution theorem one has:

<div>$$\begin{aligned}
G^r(\bm{k},\omega)&=\frac 1 {2\pi}\int \td \omega' \ \mathscr{F}[\Theta](\omega-\omega') (G^>(\bm{k},\omega')-G^<(\bm{k},\omega')) \\
&= \int \frac {\td \omega'} {2\pi \ti} \frac {-1} {\omega-\omega'+\ti\eta} \frac {A(\bm{k},\omega')} {\ti} \\
&= \int \frac {\td \omega'} {2\pi} \frac {A(\bm{k},\omega')} {\omega-\omega'+\ti \eta}
\end{aligned}$$</div>

Similarly, with `$G^a=-\Theta(t'-t)(G^>-G^<)$` in real space, one can obtain:

<div>$$G^a(\bm{k},\omega)=\int \frac {\td \omega'} {2\pi} \frac {A(\bm{k},\omega')} {\omega-\omega'-\ti\eta}$$</div>

With `$G=\Theta(t-t') G^>+\Theta(t'-t)G^<$` in real space:

<div>$$G(\bm{k},\omega)=\int \frac {\td \omega'} {2\pi}\Big( \frac {1+\zeta n_{\zeta}(\omega')} {\omega-\omega'+\ti\eta}-\frac {\zeta n_\zeta(\omega')} {\omega-\omega'-\ti\eta}\Big)A(\bm{k},\omega')$$</div>

So we have proved all relations above.

Moreover with the fact that `$A(\bm{k},\omega)\in\mathbb{R}$` and the identity:

<div>$$\frac 1 {x\pm\ti \eta}=\mathcal{P}\frac 1 x \mp\ti\pi \delta(x)$$</div>

One has:

<div>$$\begin{aligned}
\text{Re} G(\bm{k},\omega) = \text{Re} G^{r/a}(\bm{k},\omega) = \mathcal{P}\int \frac {\td \omega'} {2\pi} \frac {A(\bm{k},\omega')} {\omega-\omega'}
\end{aligned}$$</div>

And:

<div>$$\begin{aligned}
\text{Im} G(\bm{k},\omega) &=-\frac 1 2 (1+2\zeta n_\zeta(\omega)) A(\bm{k},\omega)=-\Big(\tanh \frac {\beta(\hbar\omega-\mu)} {2}\Big)^{-\zeta} \frac 1 2 A(\bm{k},\omega) \\
\text{Im} G^{r/a}(\bm{k},\omega) &= \mp \frac 1 2 A(\bm{k},\omega)
\end{aligned}$$</div>

q.e.d.

{{%/fold%}}

## Thermal Green's Function and Analytic Continuation

Let us discuss the thermal Green's function here. In almost all case, thermal Green's function is computed in the thermal state because the Gibbs factor `$e^{-\beta \hat H}$` is indeed the evolution operator of time-independent Hamiltonian with imaginary time.

_[Theorem]_ : When Hamiltonian is time-independent, 2-point thermal Green's function should be a function which is only dependent of time-interval:

<div>$$\mathcal{G}(\alpha_1,\tau_1;\alpha_1',\tau_1')=\mathcal{G}(\alpha_1,\alpha_1';\tau_1-\tau_1')$$</div>

Then it can be expanded time-periodically, which means in the interval `$\tau\in[-\beta\hbar,0]$` one has

<div>$$\mathcal{G}(\alpha_1,\alpha_1',\tau+\beta\hbar)=\zeta \mathcal{G}(\alpha_1,\alpha_1',\tau)$$</div>

{{%fold "Proof"%}}

The two point thermal Green's function with time-independent Hamiltonian has the form:

<div>$$\begin{aligned}
-\mathcal{G}(\alpha_1,\tau_1;\alpha_1',\tau_1') &= \Theta(\tau_1-\tau_1')\langle \hat a_{\alpha_1}(\tau_1) \hat a_{\alpha_1'}^\dagger(\tau_1')\rangle +\zeta \Theta(\tau_1'-\tau_1)\langle \hat a_{\alpha_1'}^\dagger(\tau_1') \hat a_{\alpha_1}(\tau_1)\rangle\\
&=\Theta(\tau_1-\tau_1')\frac 1 {\mathcal{Z}}\text{Tr} \ e^{\hat K(\tau_1-\tau_1'-\beta\hbar)/\hbar} \hat a_{\alpha_1} e^{-\hat K(\tau_1-\tau_1')/\hbar}\hat a_{\alpha_1'}^\dagger \\
&\indent +\zeta \Theta(\tau_1'-\tau_1)\frac 1 {\mathcal{Z}}\text{Tr} \ e^{\hat K(\tau_1'-\tau_1-\beta\hbar)/\hbar} \hat a_{\alpha_1'}^\dagger e^{-\hat K(\tau_1'-\tau_1)/\hbar} \hat a_{\alpha_1}
\end{aligned}$$</div>

That is:

<div>$$\mathcal{G}(\alpha_1,\alpha_1';\tau)=\frac {-1} {\mathcal{Z}}\begin{cases}
\text{Tr} \ e^{\hat K(\tau-\beta\hbar)/\hbar} \hat a_{\alpha_1}e^{-\hat K\tau/\hbar} \hat a_{\alpha_1'}^\dagger & \tau\gt 0\\
\zeta\text{Tr} \ e^{\hat K(-\tau-\beta\hbar)/\hbar} \hat a_{\alpha_1'}^\dagger e^{\hat K\tau/\hbar} \hat a_{\alpha_1} & \tau\lt 0
\end{cases}$$</div>

For the case of `$-\beta\hbar \lt \tau\lt 0$`:

<div>$$\begin{aligned}
\mathcal{G}(\alpha_1,\alpha_1',\tau+\beta\hbar)&=\frac \zeta {\mathcal{Z}} \text{Tr} \ e^{\hat K\tau /\hbar} \hat a_{\alpha_1}e^{-\hat K(\tau+\beta\hbar)/\hbar} \hat a_{\alpha_1'}^\dagger \\
&=\frac \zeta {\mathcal{Z}} \text{Tr} \ e^{\hat K(-\tau-\beta\hbar)/\hbar} \hat a_{\alpha_1'}^\dagger e^{-\hat K(-\tau)/\hbar} \hat a_{\alpha_1} \\
&=\zeta \mathcal{G}(\alpha_1,\alpha_1',\tau)
\end{aligned}$$</div>

q.e.d.

{{%/fold%}}

Then we can expand the definition of `$\mathcal{G}(\alpha,\alpha';\tau)$` to the entire real number field for `$\tau$` , with the well-defined `$\mathcal{G}(\alpha,\alpha;\tau\in[-\beta\hbar,\beta\hbar])$` :

<div>$$\mathcal{G}(\alpha,\alpha';\tau+\beta\hbar)=\zeta \mathcal{G}(\alpha,\alpha',\tau) \ ; \ \tau\in\mathbb{R}$$</div>

So it is a periodic function with period is `$2\beta\hbar$`.

It can be easily performed by write `$\mathcal{G}(\alpha,\alpha';\tau)$` into the discrete Fourier series:

<div>$$\mathcal{G}(\alpha,\alpha';\tau)=\frac 1 {\beta\hbar}\sum_{\omega_n} \tilde{\mathcal{G}}(\alpha,\alpha';\ti\omega_n)e^{-\ti\omega_n \tau}$$</div>

Where `$\omega_n=\frac {2n\pi} {\beta\hbar}$` for boson and `$\omega_n=\frac {(2n+1)\pi} {\beta\hbar}$` for fermion. The reason why here we use the factor `$1/\beta\hbar$` is the same as the discussion for real-time Green's function above.

And the inverse transform:

<div>$$\tilde{\mathcal{G}}(\alpha,\alpha';\ti\omega_n)=\int_0^{\beta\hbar}\td \tau \ \mathcal{G}(\alpha,\alpha';\tau) e^{\ti\omega_n\tau}$$</div>

Similarly, for the simplicity, in the following we ignore the tilde and just recognize `$\mathcal{G}$` and its Fourier series by arguments.

_[Theorem]_ : The thermal Green's function can be related to the spectral function( in equilibrium ):

<div>$$\mathcal{G}(\bm{k},\ti\omega_n)=\int \frac {\td\omega'} {2\pi} \frac {A(\bm{k},\omega')} {\ti\omega_n-\omega'}$$</div>

{{%fold "Proof"%}}

We have the relationship between real-time Green's function and thermal Green's function:

<div>$$\begin{aligned}
\mathcal{G}(\bm{r},\tau;\bm{r'},\tau')&=-\langle \mathcal{T}\{\hat \psi(\bm{r},\tau)\psi^\dagger(\bm{r'},\tau')\}\rangle\\
&=-\Theta(\tau-\tau')\langle \hat \psi(\bm{r},\tau)\psi^\dagger(\bm{r'},\tau')\rangle -\zeta\Theta(\tau'-\tau)\langle \hat \psi^\dagger(\bm{r'},\tau')\hat \psi(\bm{r},\tau)\rangle \\
&=(-\ti)\Big(\Theta(\tau-\tau')G^>(\bm{r},t=-\ti\tau,\bm{r'};t'=-\ti\tau')+\Theta(\tau'-\tau)G^<(\bm{r},t=-\ti\tau;\bm{r'},t'=-\ti\tau')\Big)
\end{aligned}$$</div>

Then the Fourier transform:

<div>$$\begin{aligned}
\mathcal{G}(\bm{k},\ti\omega_n)&= \int \td^3 \bm{r}\td \tau \ e^{-\ti \bm{k}\cdot \bm{r}+\ti\omega_n \tau} \mathcal{G}(\bm{r},\tau;,0,0) \\
&=-\ti\int \td^3 \bm{r}\int_0^{\beta\hbar}\td \tau \ e^{-\ti \bm{k}\cdot \bm{r}+\ti\omega_n \tau}G^>(\bm{r},t=-\ti\tau;0,0) \\
&=-\ti\int \td^3 \bm{r}\int_0^{\beta\hbar} \td \tau \ e^{-\ti \bm{k}\cdot \bm{r}+\ti\omega_n \tau} \int \frac {\td^3 \bm{k'}\td \omega'} {(2\pi)^{4}} e^{\ti\bm{k'}\cdot \bm{r}-\ti \omega' (-\ti \tau)} G^>(\bm{k'},\omega') \\
&=-\ti\int \frac {\td \omega'} {2\pi} \frac {\zeta e^{-\beta\hbar\omega'} -1} {\ti\omega_n-\omega'} (-\ti) (1+\zeta n_\zeta(\omega')) A(\bm{k},\omega') \\
&=-\int \frac {\td \omega'} {2\pi} \frac {e^{-\beta\hbar\omega'}\frac {-1} {n_\zeta(\omega')}(1+\zeta n_\zeta(\omega'))} {\ti\omega_n-\omega'} A(\bm{k},\omega') \\
&=\int \frac {\td \omega'} {2\pi} \frac {A(\bm{k},\omega')} {\ti\omega_n-\omega'}
\end{aligned}$$</div>

q.e.d.

{{%/fold%}}

_[Theorem]_ : Real time Green's function in equilibrium can be obtained by the `analytical continuation` from Thermal Green's function:

<div>$$A(\bm{k},\omega) = \ti \Big[\mathcal{G}(\bm{k},\ti\omega_n=\omega+\ti\epsilon)-\mathcal{G}(\bm{k},\ti\omega_n=\omega-\ti\epsilon)\Big]_{\epsilon\rightarrow 0^+}$$</div>

And using the spectral function one can obtain all real time Green's function in equilibrium.

{{%fold "Proof"%}}

With the equality:

<div>$$\begin{aligned}
\mathcal{G}(\bm{k},\ti\omega_n) &= \int \frac {\td \omega'} {2\pi} \frac {A(\bm{k},\omega')} {\ti \omega_n-\omega'}
\end{aligned}$$</div>

Then:

<div>$$\begin{aligned}
\mathcal{G}(\bm{k},\ti\omega_n=\omega+\ti\epsilon)-\mathcal{G}(\bm{k},\ti\omega_n=\omega-\ti\epsilon) &= \int \frac {\td \omega'} {2\pi} \frac {A(\bm{k},\omega')}  {\omega+\ti\epsilon-\omega'} - \frac {A(\bm{k},\omega')} {\omega-\ti\epsilon-\omega'} \\
&= \int \frac {\td \omega'} {2\pi} A(\bm{k},\omega') (-2\ti\pi\delta(\omega-\omega'))\\
&=-\ti A(\bm{k},\omega)
\end{aligned}$$</div>

q.e.d.

{{%/fold%}}

## Evaluation of Expectation Values of Observables

Green's function contains sufficient information to evaluate the expectation values of observables. Here, we show some formula about the application of Green's function: to derive some expectation values of observables. We will use the one-particle Green's function in coordinate representation:

<div>$$\ti G(\bm{r},t;\bm{r'},t'):=\Big\langle \mathcal{T}\big\{\hat \psi(\bm{r},t) \hat \psi(\bm{r'},t')^\dagger\big\}\Big\rangle$$</div>

Where `$\hat \psi(\bm{r},t), \hat \psi(\bm{r},t)^\dagger$` are field operators of particle in Heisenberg picture, they are actually the annihilation/creation operator in coordinate basis:

<div>$$\hat \psi(\bm{r},t)^\dagger \equiv \hat \psi^\dagger(\bm{r},t) = \sum_{\alpha} \bra{\bm{r}}\alpha \rangle \hat a_{\alpha}^\dagger (t) $$</div>

Where `$\ket{\alpha}$` is a set of complete single-particle states.

When the system has the spatial-time translation invariance, this Green's function should just be the function of displacement and time interval. So it should has a Fourier transformation form:

<div>$$G(\bm{r},t;\bm{r'},t')=\int \frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4}} e^{\ti \bm{k}\cdot (\bm{r}-\bm{r'})-\ti \omega(t-t')}\tilde {G}(\bm{k},\omega)$$</div>

1.  **Kinetic energy**

    The second quantized `kinetic energy` operator has the form of:

    <div>$$\hat T = -\frac {\hbar^2} {2m} \int \td^3 \bm{r} \ \hat \psi^\dagger(\bm{r},t) \nabla^2 \hat \psi(\bm{r},t)$$</div>

    Then we have its expectation value with Green's function as:

    <div>$$\langle \hat T\rangle = \ti \zeta \int \td^3 \bm{r} \ \Big[-\frac {\hbar^2} {2m} \nabla_{\bm{r}}^2 G(\bm{r},t;\bm{r'},t+\epsilon)\Big]_{\bm{r}=\bm{r'},\epsilon\rightarrow 0^+}$$</div>

    Or for spatial-time translation symmetric system:

    <div>$$\langle \hat T\rangle = \ti \zeta \int \frac {\td^3\bm{k}\td \omega} {(2\pi)^{4}} e^{\ti \omega \epsilon} \frac {\hbar^2 \bm{k}^2} {2m} \tilde{G}(\bm{k},\omega)$$</div>

    {{%fold "Proof"%}}

The equality aboult `$\langle \hat T\rangle$` and `$G(\bm{r},t;\bm{r'},t')$` is simple. We just check the last equality here:

<div>$$\begin{aligned}
\langle \hat T\rangle &= \ti \zeta \int \td^3 \bm{r} \Big[-\frac {\hbar^2} {2m} \int \frac {\td^3\bm{k}\td \omega} {(2\pi)^{4}} (-\bm{k}^2) e^{\ti \bm{k}\cdot(\bm{r}-\bm{r'})-\ti\omega(t-(t+\epsilon))}\tilde {G}(\bm{k},\omega) \Big]_{\bm{r}=\bm{r'},\epsilon\rightarrow 0^+} \\
&=\ti \zeta \int \td^3 \bm{r} \int \frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4}} e^{\ti \omega\epsilon} \frac {\hbar^2\bm{k}^2} {2m} \tilde{G}(\bm{k},\omega) \\
&=\ti \zeta V \int \frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4}} e^{\ti \omega\epsilon} \frac {\hbar^2\bm{k}^2} {2m} \tilde{G}(\bm{k},\omega)
\end{aligned}$$</div>

Where `$V=\int \td^3 \bm{r}$` is the volume of the system.

    {{%/fold%}}

2.  **Interaction energy**

    The `two-body interaction` term has the second quantized form:

    <div>$$\hat V=\frac 1 2 \int \td^3 \bm{r}\td^3 \bm{r'} \ \hat \psi^\dagger(\bm{r})\hat \psi^\dagger(\bm{r'}) v(\bm{r}-\bm{r'})\hat \psi(\bm{r'})\hat \psi(\bm{r})$$</div>

    If the system can be described with the following Hamiltonian:

    <div>$$\hat H= \hat T+\hat V$$</div>

    Where `$\hat T$` is the kinetic energy defined above. Then we have its expectation value with Green's function as:

    <div>$$\langle \hat V\rangle = \frac {\ti \zeta} {2} \int \td^3 \bm{r} \Big[\Big(\ti\hbar \frac {\partial } {\partial t}+\frac {\hbar^2} {2m}\nabla_{\bm{r}}^2\Big)G(\bm{r},t;\bm{r'},t=t+\epsilon)\Big]_{\bm{r}=\bm{r'},\epsilon\rightarrow 0^+}$$</div>

    Similarly, for system with spatial-time translation symmetry:

    <div>$$\langle \hat V\rangle = \frac {\ti\zeta} 2 V\int \frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4}} e^{\ti\omega \epsilon} \Big(\hbar \omega - \frac {\hbar^2\bm{k}^2} {2m}\Big)\tilde{G}(\bm{k},\omega)$$</div>

    {{%fold "Proof"%}}

With the equation of motion of the operators in Heisenberg Picture:

<div>$$\begin{aligned}
\ti\hbar \frac {\partial} {\partial t} \hat \psi(\bm{r},t)&= e^{\ti\hat Ht/\hbar}[\hat \psi(\bm{r}),\hat H]e^{-\ti\hat Ht/\hbar}
\end{aligned}$$</div>

And:

<div>$$\begin{aligned}[]
[\hat \psi(\bm{r}),\hat T]&= -\frac {\hbar^2} {2m} \int \td^3 \bm{r'} \ [\hat \psi(\bm{r}),\hat \psi^\dagger(\bm{r'})\nabla^2 \hat\psi(\bm{r'})] \\
&=-\frac {\hbar^2} {2m} \int \td^3 \bm{r} \ \Big([\hat \psi(\bm{r}),\hat \psi^\dagger(\bm{r'})]_{-\zeta}\nabla^2 \hat \psi(\bm{r'})+\zeta \hat \psi^\dagger(\bm{r'})\nabla_{\bm{r'}}^2 [\hat \psi(\bm{r}),\hat \psi(\bm{r'})]_{-\zeta}\Big) \\
&=-\frac {\hbar^2} {2m} \int \td^3 \bm{r} \delta(\bm{r}-\bm{r'}) \nabla^2 \hat \psi(\bm{r'}) \\
&= -\frac {\hbar^2} {2m } \nabla^2 \hat \psi(\bm{r}) \\
\\
[\hat \psi(\bm{r}),\hat V] &= \frac 1 2 \int \td^3 \bm{r}_1 \td^3 \bm{r}_2 v(\bm{r}_1-\bm{r}_2) [\hat \psi(\bm{r}),\hat \psi^\dagger(\bm{r}_1)\hat \psi^\dagger(\bm{r}_2)]\hat \psi(\bm{r}_2)\hat \psi(\bm{r}_1) \\
&=\frac 1 2 \int \td^3 \bm{r}_1 \td^3 \bm{r}_2 v(\bm{r}_1-\bm{r}_2) \Big(\delta(\bm{r}-\bm{r}_1)\hat \psi^\dagger(\bm{r}_2)+\zeta \hat \psi^\dagger(\bm{r}_1)\delta(\bm{r}-\bm{r}_2)\Big)\hat \psi(\bm{r}_2)\hat \psi(\bm{r}_1) \\
&=\frac 1 2 \int \td^3 \bm{r'}\Big(v(\bm{r}-\bm{r'})\hat \psi^\dagger(\bm{r'})\hat \psi(\bm{r'})\hat \psi(\bm{r})+\zeta v(\bm{r'}-\bm{r})\hat \psi^\dagger(\bm{r'})\hat \psi(\bm{r})\hat \psi(\bm{r'})\Big)
\end{aligned}$$</div>

With the anticommutation relationship and the fact that `$v(\bm{r})=v(-\bm{r})$` , finally we have:

<div>$$\ti \hbar \frac {\partial} {\partial t} \hat \psi(\bm{r},t) = -\frac {\hbar^2} {2m}\nabla^2 \hat \psi(\bm{r},t)+\int \td^3 \bm{r'} \ v(\bm{r}-\bm{r'})\hat \psi^\dagger(\bm{r'},t)\hat \psi(\bm{r'},t)\hat \psi(\bm{r},t)$$</div>

Then:

<div>$$\begin{aligned}
\ti\hbar \frac {\partial} {\partial t}\ti G(\bm{r},t;\bm{r'},t')\Big|_{t'=t+\epsilon}&=\zeta \big\langle \hat \psi^\dagger(\bm{r'},t'=t+\epsilon) \ti\hbar\frac {\partial} {\partial t} \hat \psi(\bm{r},t)\big\rangle \\
&=\zeta \Big\langle  - \frac {\hbar^2} {2m}\hat \psi^\dagger(\bm{r'},t+\epsilon)\nabla^2 \hat \psi(\bm{r},t) \Big\rangle+ \zeta\Big\langle \int \td^3 \bm{x} \ v(\bm{r}-\bm{x})\hat \psi^\dagger(\bm{r'},t+\epsilon)\hat \psi^\dagger(\bm{x},t)\hat \psi(\bm{x},t)\hat \psi(\bm{r},t) \Big\rangle
\end{aligned}$$</div>
So we have:

<div>$$\int \td^3 \bm{r} \Big[\ti\hbar \frac {\partial} {\partial t} G(\bm{r},t;\bm{r'},t+\epsilon)\Big]_{\bm{r'}=\bm{r},\epsilon\rightarrow 0^+} = -\frac {\hbar^2} {2m} \nabla_{\bm{r}}^2 G(\bm{r},t;\bm{r'},t+\epsilon)\Big|_{\bm{r'}=\bm{r}}-2\ti\zeta \langle \hat V\rangle$$</div>

So we have the result:

<div>$$\langle \hat V\rangle =  \frac {\ti \zeta} {2} \int \td^3 \bm{r} \Big[\Big(\ti\hbar \frac {\partial } {\partial t}+\frac {\hbar^2} {2m}\nabla_{\bm{r}}^2\Big)G(\bm{r},t;\bm{r'},t=t+\epsilon)\Big]_{\bm{r}=\bm{r'},\epsilon\rightarrow 0^+}$$</div>

The formula for system with spatial-time translation symmetry can be also checked.

    {{%/fold%}}

Applying above two formula to the Green's function at zero temperature(which compute the expectation on ground state) yields the ground state energy. But the use of the one-particle Green's function for evaluating the ground state energy(or the grand potential) could be dangerous: <mark>Approximation applied when calculation the Green's function may have a large uncontrolled effect on the energy, though it may affect slightly to Green's function itself</mark>
