---
title: "Linear Response Theory"
date: 2019-02-19T10:05:10+08:00
draft: true
tags: ["statistical-phys"]
series: ["Condensed-Matter"]
categories: ["Physics"]
toc: true
summary: "Response theory examines how a physical measurable respond to external forces. Here we study how such linear response theories (like Hooke's law of elasticity, Fick's law of diffusion...) can be formulated from a microscopic viewpoint, beginning with a review of the classical response theory in statistical mechanics, and subsequently focusing on quantum response theory. This is the first class of Solid State theory, which studies the application of quantum mechanics and some other advanced theories on solid state matters."
---

# Basic Response Theory

## Classical Theory of Linear Response

Consider a system, whose state of matter is specified completely by the trajectory \(x(t)\), like \(x(t)=(\bm{q}^N(t),\bm{p}^N(t))\) for an N-particle system without other degrees of freedom. Then a generic mechanical variable \(A=A(x)\) is a function of time and initial state:

$$A(t)=A(x(t))=A(t;x(0))$$

Define the time-dependent function \(\bar A(t)=\int g(x)A(t;x)\) is the average value of \(A\) over all possible initial conditions. We want to examine how the system relaxes to equilibrium, i.e., how \(\bar A(t)\) relaxes to the equilibrium average: \(\langle A \rangle = \frac 1 {Z} \int \td x e^{-\beta H(x)} A(x)\) , where \(Z=\int \td x e^{-\beta H(x)}\) is the `canonical partition function`.

To do so, consider the perturbation \(H'=-F A\) , where \(F\) is an external field that couples to \(A\). The perturbation was turned on in the distant past, and was turned off at \(t=0\) . Then at \(t=0\) , the initial phase space distribution is given by \(g(x)\propto e^{-\beta(H+H')}\) . We can write \(\bar A(t)\) up to the first order of \(F\):

$$\bar A(t)-\langle A\rangle = \beta F \langle \delta A(t;x)\delta A(t=0;x)\rangle+\mathcal{O}(F^2)$$

{{< fold "Proof" >}}

Note that As \(t\gt 0\) , \(A(t;x)\) is equal to \(A(x(t))\) , where \(x=x(t=0)\) , and the dynamics is governed by the Hamiltonian \(H\).
Model Setup
$$\begin{aligned}
\bar A(t)&=\frac {\int\td x \ e^{-\beta H}(1-\beta H'+\frac 1 2 (\beta H')^2+\mathcal{O}(F^3))A(t;x)} {\int \td x \ e^{-\beta H}(1-\beta H'+\frac 1 2 (\beta H')^2+\mathcal{O}(F^3))}\\
&=\frac 1 Z \Big\{\int\td x \ e^{-\beta H}(1-\beta H'\mathcal{O}(F^2))A(t;x)\Big\} \\
&\indent \times \Big(1+\frac 1 Z \int \td x e^{-\beta H} \beta H'+\mathcal{O}(F^2)\Big) \\
&=\langle A(t;x)\rangle + \langle A(t;x)\rangle \langle \beta H'(x)\rangle - \langle \beta H'(x) A(t;x) \rangle +\mathcal{O}(F^2)
\end{aligned}$$

Noting that \(H'(x)=-FA(x)\) , and let \(\delta A(t;x)=A(t;x)-\langle A(x)\rangle\) . For the equilibrium average \(\langle A(x)\rangle\) is independent of the time, that is to say \(\langle A(t;x)\rangle = \langle A(x)\rangle=\langle A\rangle\).

$$\bar A(t)-\langle A\rangle = \beta F \langle \delta A(t;x)\delta A(0;x)\rangle+\mathcal{O}(F^2)$$

{{< /fold >}}

This equation, referred to as the fluctuation-dissipation theorem, contains the precise meaning of <mark>the regression hypothesis</mark> : the relaxation of macroscopic displacement out of equilibrium obeys the same laws as the regression of spontaneous microscopic fluctuations in an equilibrium system.

Where the term `the regression of spontaneous` is the correlation of \(A\) :

$$\phi(t)=\langle \delta A(t;x)\delta A(0,x)\rangle$$

With the most general functional relation between the response \(\delta \bar A=\bar A(t)-\langle A\rangle\) to the applied field in accordance with linearity is:

$$\delta \bar A_i(t)=\sum_j \int_{-\infty}^{\infty} \td t' \chi_{ij}(t,t')F_j(t')$$

Comparing with the fluctuation-dissipation theorem, we have the exact form of the response function:

$$\chi_{ij}(t,t')=\chi_{ij}(t-t')=\begin{cases}-\beta \frac {\td \phi_{ij}(t-t')} {\td (t-t')} & \text{for } t\geq t' \\ 0 &\text{for } t\leq t' \end{cases}$$

Where \(\phi_{ij}(t)=\langle \delta A_i(t;x)\delta A_j(0,x)\rangle\), and the property that \(\chi_{ij}\) only depends on the time separation comes form that it is an equilibrium property.

## Quantum Response Theory

Consider a system subject to an external potential, that is to say the Hamiltonian of system is:

$$ \hat H =\hat H_0+\hat V(t)$$

It is convenient to work in the `interaction picture`:

$$\begin{aligned}
\ket{\psi_I(t)} &= e^{\ti \hat H_0 t/\hbar} \ket{\psi_S(t)} \\
\hat O_I(t) &= e^{\ti \hat H_0 t/\hbar} \hat O_S e^{-\ti \hat H_0 t/\hbar}
\end{aligned}$$

And the time evolution in the interaction picture can be written in the form of `Dyson series`:

$$\ket {\psi_I(t)}=\hat U_I(t)\ket{\psi_S(t)}$$

It is the solution of the equation of motion with the initial condition \(\hat U_I(t=0)=1\) : \(\ti\hbar \partial_t \hat U_I(t)=\hat V_I(t)\hat U_I(t)\), that is:

$$\hat U_I(t)=\mathcal{T}\exp\Big\{-\frac {\ti} {\hbar} \int_0^t \td t' \hat V_I(t')\Big\}$$

With the expansion of \(\hat U_I\) up to the first order of \(\hat V_I\), we can derive the quantum version of the `Linear response theory`. The time-dependent fluctuation of an observable \(\hat P\) is:

$$\begin{aligned}
\delta\langle \hat P\rangle (t) &= \bra{\psi(0)}\hat U_I^\dagger(t)\hat P_I(t)\hat U_I(t)\ket{\psi(0)}-\bra{\psi(0)}\hat P_I(t)\ket{\psi(0)} \\
&= \frac {\ti} \hbar \int_0^t \td t' \bra{\psi(0)}[\hat V_I(t'),\hat P_I(t)]\ket{\psi(0)} +\mathcal{O}(\hat V^2)
\end{aligned}$$

The physical meaning of \(\delta\langle \hat P\rangle(t)\) is the difference between the expected value of \(\hat P\) on the state driven by \(\hat H\) and \(\hat H_0\).

Now consider the case the perturbation starts at \(t=0\) and is of the form:

$$\hat V(t) = -F(t)\hat Q$$

Where \(F(t)\) is a c-number. Then one has:

$$\delta\langle \hat P\rangle(t)=\int_{-\infty}^{\infty}\td t' \chi_R(t-t')F(t')$$

where

$$\chi_R(t-t')=\frac {\ti} {\hbar} \langle [\hat P_I(t),\hat Q_I(t')]\rangle \Theta(t-t')$$

is the `retard correlation function`. the average \(\langle \cdots\rangle\) can be treated as the average on the ground state or the thermal average:

$$\langle \cdots \rangle = \frac 1 {Z} \text{Tr}\big\{e^{-\beta \hat H_0} \cdots\big\}$$

according to the problem.

### Kubo Formula

For the case of thermal average, the (retard) correlation function can be written as:

$$\chi_R(t-t')=\text{Tr}\int_0^{\beta} \td \tau \hat \rho_0 (\partial_t \hat Q_I)(-\ti \hbar \tau)\hat P_I(t-t')\Theta(t-t')$$

Where \(\hat \rho_0 = \frac 1 Z e^{-\beta \hat H_0}\) is the canonical density matrix

{{<fold "Proof">}}

We need only prove the identity:

$$\text{Tr}\hat\rho_0 [\hat P_I(t),\hat Q_I(t')]=\frac \ti \hbar \int_0^\beta \td \tau \hat \rho_0 (\partial_t\hat Q_I)(-\ti\hbar \tau)\hat P_I(t-t')$$

That is:

$$\begin{aligned}
l.h.s. &=\frac 1 Z \text{Tr} e^{-\beta \hat H_0} e^{\ti \hat H_0 t/\hbar} \hat P e^{-\ti \hat H_0 (t-t')/\hbar}\hat Q e^{-\ti \hat H_0 t'/\hbar} \\
&=\frac 1 Z \text{Tr} \hat Q e^{-\beta \hat H_0} e^{\ti \hat H_0 (t-t')/\hbar} \hat P e^{-\ti \hat H_0 (t-t')/\hbar} \\
&=\frac 1 Z \text{Tr} e^{-\beta \hat H_0} \hat Q_I(-\ti \hbar\tau) \Big|_0^{\beta} \hat P_I(t-t') \\
&= \frac 1 {-\ti \hbar}\text {Tr}\hat \rho_0 \int_0^\beta \td \tau (\partial_t \hat Q_I)(-\ti \hbar \tau) \hat P_I(t-t') \\
&= r.h.s.
\end{aligned}$$

q.e.d.

{{</fold>}}

# Spectral Representation

## General Spectral Decomposition

_[Definition]_ : The `Spectral representation` , or the `spectral decomposition` of the response function, is to rewrite it with the complete set of energy eigenstates of the unperturbed system: \(\hat H_0\ket{m}=\hbar \omega_m \ket{m}\) (note that if there is degeneracy of energy level, the summation below should cover it). Then with that \(\bra{m}\hat P \ket{n}=P_{mn}\), we have:

$$\chi_R(\omega)=\int \td t \  e^{-\ti \omega t} \chi_R(t)=\frac 1 {\hbar } \int_{-\infty}^{\infty} \frac {\td u \ (1-e^{-\beta \hbar u})} {u-\omega-\ti\epsilon} \sum_{m,n}\frac {\exp(-\beta \hbar \omega_m)} {Z} P_{mn}Q_{nm}\delta\big(u-(\omega_n-\omega_m)\big)$$

{{<fold "Proof">}}

If we treat the average \(\langle \cdots \rangle\) as thermal average. Then:

$$\begin{aligned}
\langle \hat P_I(t)\hat Q_I(t')\rangle &= \frac 1 Z \text{Tr}\big(e^{-\beta \hat H_0} e^{\ti \hat H_0 t} \hat Pe^{-\ti \hat H_0 (t-t')}\hat Q e^{-\ti \hat H_0 t'}\big) \\
&= \frac 1 Z \sum_{m} \bra{m}\big(e^{-\beta \hat H_0} e^{\ti \hat H_0 t} \hat Pe^{-\ti \hat H_0 (t-t')}\hat Q e^{-\ti \hat H_0 t'}\big)\ket {m} \\
&= \frac 1 Z \sum_m \sum_{n_1,n_2,n_3}\bra{m}e^{-\beta \hat H_0} e^{\ti \hat H_0 t}\ket{n_1}\bra{n_1} \hat P\ket{n_2}\bra{n_2}e^{-\ti \hat H_0 (t-t')}\ket{n_3}\bra{n_3}\hat Q e^{-\ti \hat H_0 t'}\ket {m} \\
&= \frac 1 Z \sum_{m,n_1,n_2,n_3} \Big(e^{\ti \omega_{n_1}t-\beta \hbar \omega_{n_1}}\delta_{mn_1}e^{-\ti \omega_{n_3}(t-t')}\delta_{n_2n_3}e^{-\ti  \omega_{m}t'} P_{n_1n_2}Q_{n_3m}\Big) \\
&= \frac 1 Z \sum_{m,n}e^{\ti (\omega_m-\omega_n) (t-t')-\beta\hbar \omega_m} P_{mn}Q_{nm}
\end{aligned}$$

Then we have:

$$\langle [\hat P_I(t),\hat Q_I(t')]\rangle = \frac 1 Z \sum_{m,n}e^{\ti(\omega_m-\omega_n) (t-t')} P_{mn}Q_{nm}\big(e^{-\beta \hbar \omega_m}-e^{-\beta \hbar \omega_n}\big)$$

With this we have the (retard) correlation function is:

$$\chi_R(t-t')=\frac {\ti} {\hbar Z}\sum_{m,n}e^{\ti (\omega_m-\omega_n) (t-t')} P_{mn}Q_{nm}\big(e^{-\beta \hbar \omega_m}-e^{-\beta \hbar \omega_n}\big) \Theta(t-t')$$

Or the Fourier transform:

$$\begin{aligned}
\chi_R(\omega) &= \int \td t \ e^{\ti\omega t} \chi_R(t) \\
&= \int_0^{\infty} \frac {\ti \td t} {\hbar Z} \sum_{m,n}e^{\ti (\omega_m-\omega_n+\omega) t} P_{mn}Q_{nm}\big(e^{-\beta \hbar \omega_m}-e^{-\beta \hbar \omega_n}\big)
\end{aligned}$$

Consider the integral:

$$\int_0^{\infty} \ti \td t \ e^{\ti \alpha t}=\ti \frac {e^{(\ti \alpha-\epsilon) t}} {\ti \alpha-\epsilon}\Bigg|_0^\infty=\frac {-\ti} {\ti \alpha -\epsilon}$$

Where \(\epsilon\) is a infinitesimal positive number. Then we have:

$$\chi_R(\omega)=\frac 1 {\hbar Z}\sum_{m,n} \frac {e^{-\beta \hbar \omega_m}-e^{-\beta \hbar \omega_n}} {-\omega_m+\omega_n-\omega-\ti\epsilon} P_{mn}Q_{nm}$$

Then we can write it with the integral and delta function:

$$\chi_R(\omega) = \frac 1 {\hbar} \int_{-\infty}^{\infty} \frac {\td u \ (1-e^{-\beta \hbar u})} {u-\omega-\ti\epsilon} \sum_{m,n}\frac {\exp(-\beta \hbar \omega_m)} {Z} P_{mn}Q_{nm}\delta\big(u-(\omega_n-\omega_m)\big)$$

{{</fold>}}

_[Definition]_ : the `Spectral function` is defined as :

$$A(\omega)=\text{Im} \chi_R(\omega)=\frac {\pi} {\hbar} (1-e^{-\beta \hbar \omega}) \sum_{m,n}p_m P_{mn}Q_{nm}\delta(\omega-(\omega_n-\omega_m))$$

in which \(p_m=Z^{-1}e^{-\beta \hbar \omega_m}\) , and we used the property that \(\frac 1 {x+\ti \epsilon}=\mathcal{P}\frac 1 x-\ti \pi \delta(x)\). If we extend the variable to the complex plane, then we have the `dynamical susceptibility` :

$$\chi(z)=\int \frac {\td u} {\pi} \frac {A(u)} {u-z}$$

Then `retard correlation function` is \(\chi_R(\omega)=\chi(\omega+\ti \epsilon)\) , which is a particular example of Kramers-Kronig relation. And can also define the `advanced correlation function` : \(\chi_A(\omega)=\chi(\omega-\ti\epsilon)\).

_[Theorem]_ : Let correlation function \(S(t-t')=\langle \hat P_I(t)\hat Q_I(t')\rangle\) , and its Fourier transform \(S(\omega)=\int \td t \ e^{\ti \omega t} S(t)\) , we can derive the `quantum fluctuation-dissipation theorem`:

$$S(\omega)=2\hbar (1+f_{BE}(\hbar \omega))A(\omega)$$

In which \(f_{BE}(x)=(e^{\beta x}-1)^{-1}\), is the Bose-Einstein distribution function. Where \(S\) represents the correlation in the ground state \(T=0\) or equilibrium \(T\gt 0\) , and \(A(\omega)\) is the imaginary parti of the retarded response function that represents the dissipation of a system in an external field.

{{<fold "Proof">}}

We have:

$$S(t-t')=\langle \hat P_I(t)\hat Q_I(t')\rangle = \frac 1 Z \sum_{m,n}e^{\ti (\omega_m-\omega_n) (t-t')-\beta\hbar \omega_m} P_{mn}Q_{nm}$$

Then:

$$S(\omega)=2\pi \sum_{m,n}p_m P_{mn}Q_{nm}\delta(\omega+\omega_m-\omega_n)$$

It is obvious that:

$$S(\omega)=2\hbar \frac 1 {1-e^{-\beta \hbar \omega}} A(\omega)$$

The Bose-Einstein distribution function is:

$$f_{BE}(x)=\frac 1 {e^{\beta x} -1}$$

Then we have:

$$S(\omega)=2\hbar (1+f_{BE}(\hbar \omega)) A(\omega)$$

{{</fold>}}

## Symmetry of Retard Correlation Function

_[Theorem]_ : The symmetry of response functions:

$$\begin{aligned}
\chi_R(-\omega)_{\hat P\hat Q} &= [\chi_R(\omega)_{\hat P^\dagger \hat Q^\dagger}]^* \\
\chi_R(\omega)_{\hat P\hat Q} &= \chi_R(\omega)_{\hat Q^T \hat P^T}
\end{aligned}$$

{{<fold "Proof">}}

With the spectral decomposition:

$$\chi_R(\omega)_{\hat P\hat Q}=\frac 1 {\hbar} \sum_{m,n} \frac {p_m - p_n} {\omega_n-\omega_m-\omega -\ti \epsilon} P_{mn}Q_{nm}$$

Then:

$$\begin{aligned}
\big(\chi_R(-\omega)_{\hat P^\dagger \hat Q^\dagger}\big)^* &= \frac 1 {\hbar} \sum_{m,n} \frac {p_m-q_n} {\omega_n-\omega_m-\omega+\ti \epsilon} P_{nm}Q_{mn} \\
&=\frac 1 {\hbar} \sum_{m,n} \frac {p_n-q_m} {\omega_m-\omega_n-\omega+\ti \epsilon} P_{mn}Q_{nm} \\
&= \chi_R(\omega)_{\hat P \hat Q}
\end{aligned}$$

And:

$$\begin{aligned}
\chi_R(\omega)_{\hat Q^T \hat P^T} &= \frac 1 {\hbar} \sum_{m,n} \frac {p_m-q_n} {\omega_n-\omega_m-\omega-\ti \epsilon} (Q^T)_{mn}(P^T)_{nm} \\
&=\frac 1 {\hbar} \sum_{m,n} \frac {p_m-q_n} {\omega_n-\omega_m-\omega-\ti \epsilon} Q_{nm}P_{mn} \\
&=\chi_R(\omega)_{\hat P \hat Q}
\end{aligned}$$

q.e.d.

{{</fold>}}

_[Theorem]_ : In the presence of magnetic field \(\bm{B}\) , time reversal amounts to reversing the direction of the magnetic field such that \(\hat T \hat H(\bm{B})\hat T^{-1}=\hat H(-\bm{B})\) . For electron, \(\hat T=-\ti \sigma^y \hat K\) where \(\hat K\) is the conjugation operator. Andthe reciprocal relation for `spin-independent` operators \(\hat P,\hat Q\) is then:

$$\chi_R(\omega;\bm{B})_{\hat P\hat Q}=\chi_R(\omega;-\bm{B})_{\hat Q^T\hat P^T}$$

{{<fold "Proof">}}

For the energy eigenstates \(\hat H(\bm{B})\ket{n(\bm{B})}=\hbar\omega_n(\bm{B})\ket{n(\bm{B})}\) , under the time-reversal we have:

$$\hat T \hat H(\bm{B})\hat T^{-1}\hat T\ket{n(\bm{B})}=\hbar \omega_n(\bm{B})\hat T\ket{n(\bm{B})}\Rightarrow \omega_n(\bm{B})=\omega_n(-\bm{B}), \ket{n(-\bm{B})}=\hat T\ket{n(\bm{B})}$$

Where we used the fact that energy eigenvalue \(\omega_n(\bm{B})\) is real number, so \(\hat T\) is commutative with it. In the expression of \(\chi_R\) , only \(\omega\) and matrix elements, e.g. \(P_{mn},Q_{mn}\) are dependent of \(\bm{B}\). If \(\hat A\) is independent of spin, it cannot be a function of magnetic field:

$$\begin{aligned}
A_{mn}(-\bm{B}) &= \bra{m(-\bm{B})}\hat A \ket{n(-\bm{B})}=\bra{m(\bm{B})}\hat T^\dagger \hat A\hat T\ket{n(\bm{B})} \\
&=\Big(\hat T\ket{m(\bm{B})},\hat T (\hat T^{-1}\hat A\hat T)\ket{n(\bm{B})}\Big) \\
&=\Big(\hat T^{-1}\hat A\hat T\ket{n(\bm{B})},\ket{m(\bm{B})}\Big) \\
&=\bra{n(\bm{B})} \hat T^\dagger \hat A^\dagger (\hat T^{-1})^\dagger \ket{m(\bm{B})}
\end{aligned}$$

Where in the fourth equality we used the property of \(\hat T\) is an anti-unitary operator.

If \(\hat A\) is independent of spin, so it is commutative with any Pauli matrices. And with that \(\ti \sigma^y\) is a real matrix, it is commutative with \(\hat K\) , so we have \(\ti \sigma^y \hat K (-\ti) \sigma^y \hat K=\hat K^2=1\) , that means that \(\hat T^{-1}=\ti \sigma^y \hat K\). Then:

$$\begin{aligned}
\hat T^{-1}\hat A\hat T&= \ti \sigma^y \hat K \hat A (-\ti)\sigma^y \hat K \\
&=\hat K \hat A \hat K \\
&=\hat A^* = \hat A^T
\end{aligned}$$

Because \(\hat A^\dagger = \hat A\).

So we have the ultimate identity:

$$A_{mn}(-\bm{B})=\bra{n(\bm{B})}(\hat A^T)^\dagger \ket{m(\bm{B})}= (A^T)_{nm}(\bm{B})$$

So:

$$\begin{aligned}
\chi_R(\omega;-\bm{B})_{\hat Q^T \hat P^T} &= \frac 1 {\hbar} \sum_{m,n} \frac {p_m-q_n} {\omega_n(-\bm{B})-\omega_m(-\bm{B})-\omega-\ti \epsilon} (Q^T)_{mn}(-\bm{B})(P^T)_{nm}(-\bm{B}) \\
&=\frac 1 {\hbar} \sum_{m,n} \frac {p_m-q_n} {\omega_n(\bm{B})-\omega_m(\bm{B})-\omega-\ti \epsilon} Q_{nm}(\bm{B})P_{mn}(\bm{B}) \\
&=\chi_R(\omega;\bm{B})_{\hat P \hat Q}
\end{aligned}$$

q.e.d.

{{</fold>}}

# Density Responses

## Non-interacting Electron Gas

A non-interacting system's Hamiltonian is easy to be diagonalized into, here we consider the Fermion system:

$$\hat H=\sum_n \hbar \omega_n \hat a_n^\dagger \hat a_n$$

And operators of interest can be expressed into second-quantization as \(\hat A=\sum_{m,n} A_{mn}\hat a_m^\dagger \hat a_n\) . The time-dependent Fermion operators in the interacting picture can be easily integrated out, with the fact that Hamiltonian has been diagonalized:

$$\hat a_{n,I}(t) = \hat a_n e^{-\ti \omega_n t} \ ; \ \hat a_{n,I}(t)^{\dagger} = \hat a_n^\dagger e^{\ti \omega_n t}$$

Then the retard correlation function (response function) is:

$$\chi_R(t) = \frac {\ti} {\hbar } \Theta(t) \sum_{m,n,k,l} P_{mn}Q_{kl} e^{\ti(\omega_m-\omega_n)t} \langle [\hat a_m^\dagger \hat a_n, \hat a_k^\dagger \hat a_l]\rangle$$

{{<fold "Proof">}}

The operators in the interaction picture is:

$$\hat A_I(t)=\sum_{m,n}A_{mn} \hat a_{m,I}(t)^\dagger \hat a_{n,I}(t)=\sum_{m,n}A_{mn}\hat a_m^\dagger \hat a_n e^{\ti(\omega_m-\omega_n)t}$$

So:

$$\begin{aligned}
\chi_R(t-t')&=\frac {\ti} {\hbar} \Theta(t-t')\langle [\hat P_I(t),\hat Q_I(t')]\rangle \\
&=\frac {\ti} {\hbar} \Theta(t-t')\langle [\hat P_I(t-t'),\hat Q_I(0)]\rangle \\
\Rightarrow & \chi_R(t)=\frac {\ti} {\hbar} \Theta(t) \sum_{m,n,k,l} P_{mn}Q_{kl} e^{\ti(\omega_m-\omega_n)t} \langle [\hat a_m^\dagger \hat a_n, \hat a_k^\dagger \hat a_l]\rangle
\end{aligned}$$

Where we used that:

$$\begin{aligned}
\langle [\hat P_I(t),\hat Q_I(t)]\rangle &= \langle [e^{\ti \hat H t/\hbar} \hat P e^{-\ti \hat H t/\hbar}, e^{\ti \hat H t'/\hbar} \hat Q e^{-\ti \hat H t'/\hbar}]\rangle \\
&=\langle e^{\ti \hat H t/\hbar} \hat P e^{-\ti \hat H(t-t')/\hbar} \hat Q e^{-\ti \hat H t'/\hbar}\rangle-\langle e^{\ti \hat H t'/\hbar}\hat Qe^{\ti \hat H (t-t')/\hbar} \hat P e^{-\ti \hat H t/\hbar} \rangle \\
&= \langle e^{\ti \hat H (t-t')/\hbar} \hat P e^{-\ti \hat H(t-t')/\hbar} \hat Q \rangle-\langle \hat Qe^{\ti \hat H (t-t')/\hbar} \hat P e^{-\ti \hat H (t-t')/\hbar} \rangle \\
&= \langle [\hat P_I(t-t'),\hat Q_I(0)]\rangle
\end{aligned}$$

{{</fold>}}

Compute the thermal average with Wick's Theorem, at last we find:

$$\begin{aligned}
\chi_R(t) &= \frac {\ti} {\hbar} \Theta(t)\sum_{m,n}P_{mn}Q_{nm} e^{\ti (\omega_m-\omega_n)t} (f_m-f_n) \\
\chi_R(\omega) &= \frac 1 {\hbar} \sum_{m,n} P_{mn}Q_{nm} \frac {f_m-f_n} {\omega_n-\omega_m-\omega -\ti \epsilon}
\end{aligned}$$

Where \(f_m\) is the Fermi-Dirac distribution function: \(f_m=(e^{\beta(\hbar\omega_n -\mu)}+1)^{-1}\)

{{<fold "Proof">}}

With the Fermion operators' commutation relation, we have:

$$[\hat a_m^\dagger \hat a_n,\hat a_k^\dagger \hat a_l]=\delta_{nk}\hat a_m^\dagger \hat a_l-\delta_{ml}\hat a_k^\dagger \hat a_n$$

Then we need only compute the trace:

$$\begin{aligned}
\mathcal{Z}\langle \hat a_i^\dagger \hat a_j\rangle &= \text{Tr} e^{-\beta (\hat H+\mu \hat N)} \hat a_i^\dagger \hat a_j \\
&=\sum_{n}\bra{n}\Big(\exp(-\beta \sum_l (\epsilon_l-\mu)\hat a_l^\dagger \hat a_l)\hat a_i^\dagger \hat a_j\Big)\ket{n} \\
&=\delta_{ij} \Big(\sum_{\{n_\alpha=0,1\}} \prod_l e^{-\beta(\epsilon_l-\mu)n_l} n_i \Big)\\
&=\delta_{ij} \prod_{l\neq i}\Big(1+e^{-\beta(\epsilon_l-\mu)}\Big) e^{-\beta (\epsilon_i-\mu)}
\end{aligned}$$

Where \(\epsilon_l=\hbar \omega_l\) , and grand canonical partition function:

$$\mathcal{Z}=\text{Tr} e^{-\beta(\hat H+\mu\hat N)}=\prod_l \Big(1+e^{-\beta(\epsilon_l-\mu)}\Big)$$

So:

$$\langle \hat a_i^\dagger \hat a_j\rangle=\frac {\delta_{ij}} {e^{\beta(\epsilon_i-\mu)}+1}$$

So:

$$\begin{aligned}
\chi_R(t) &= \frac {\ti} {\hbar } \Theta(t) \sum_{m,n,k,l} P_{mn}Q_{kl} e^{\ti(\omega_m-\omega_n)t} \langle [\hat a_m^\dagger \hat a_n, \hat a_k^\dagger \hat a_l]\rangle \\
&=\frac {\ti} {\hbar } \Theta(t) \sum_{m,n,k,l} P_{mn}Q_{kl} e^{\ti(\omega_m-\omega_n)t} \Big(\delta_{nk}\delta_{ml} f_m - \delta_{ml}\delta_{nk}f_n\Big) \\
&=\frac {\ti} {\hbar } \Theta(t) \sum_{m,n} P_{mn} Q_{nm} e^{\ti(\omega_m-\omega_n)t} (f_m-f_n)
\end{aligned}$$

The expression with respect to frequency can also be obtained with:

$$\int \td t \ \Theta(t) e^{\ti \omega t} = \int_0^{\infty} e^{-\epsilon t + \ti \omega t} \td t= - \frac 1 {\ti \omega-\epsilon}$$

{{</fold>}}

## Lindhard Function

When an electric potential energy \(\Phi=-e\phi(\bm{r},t)\), which couples to density \(\hat n\), is imposed on an interacting electron syste, then the perturbation is:

$$\hat H'(t)=\int \td^3 \bm{r} \ \hat n(\bm{r},t)\Phi(\bm{r},t)$$

Where \(\hat n(\bm{r},t)\) is the density operator in the Interaction picture. Then with the linear response theory, we need to assign \(\hat Q_I(t')\) as \(-\hat n(\bm{r}',t')\) and \(\hat P_I(t)=\hat n(\bm{r},t)\) if we want to find the electric susceptibility. And with:

$$\chi_R(\bm{r},\bm{r}',t-t')=\frac {\ti} {\hbar} \langle [\hat n(\bm{r}',t'),\hat n(\bm{r},t)]\rangle \Theta(t-t')$$

The density variation is given by:

$$\delta\langle \hat n\rangle (\bm{r},t)=\int_{-\infty}^{\infty} \td t'\int \td^3 \bm{r}'\chi_R(\bm{r},\bm{r}',t-t')\Phi(\bm{r}',t')$$

One can also introduce the Fourier transformation of the functions:

$$\begin{aligned}
\chi_R(\bm{r},\bm{r}',t-t')&=\int \frac {\td \omega} {2\pi} e^{-\ti \omega (t-t')}\int \frac {\td^3 \bm{k}} {(2\pi)^{3}} \frac {\td^3 \bm{k}'} {(2\pi)^{3}}e^{\ti \bm{k}\cdot \bm{r}} e^{-\ti \bm{k}'\cdot \bm{r}'} \chi_R(\bm{k},\bm{k}',\omega)\\
\chi_R(\bm{k},\bm{k}',\omega)&=\int\td t \ e^{\ti \omega t}\int\td^3 \bm{r}\td^3 \bm{r}' \ e^{-\ti \bm{k}\cdot \bm{r}} e^{\ti \bm{k'}\cdot \bm{r'}} \chi_R(\bm{r},\bm{r}',t)\\
&=\int \td t \ e^{\ti \omega t} \frac {\ti} {\hbar} \langle [\hat n(\bm{k},t) , \hat n(-\bm{k'},0)]\rangle \Theta(t)
\end{aligned}$$

Where \(\hat n(\bm{k},t)=\int \td^3 \bm{r} \  {(2\pi)^{3}} e^{-\ti \bm{k}\cdot \bm{r}} \hat n(\bm{r},t)\) is the Fourier transformation of density operator. It is lightly different from the standard definition in mathematics textbooks, because of \(\hat n\) contains two field operators: \(\hat n = \hat \psi^\dagger \hat \psi\).

Up to now these formulas are derived for general case. Then we will apply what we have obtained for non-interacting system.

_[Theorem]_ : If the system has translation invariance, \(\chi_R\) should be a function of \(\bm{r}-\bm{r}'\) . Then we have: \(\chi_R(\bm{k},\bm{k}',\omega)=(2\pi)^{3} \delta(\bm{k}-\bm{k}')\chi_R(\bm{k},\omega)\) . Then apply the conclusion on the `uniform non-interacting electron gas` , we have:

$$\chi_R(\bm{q},\omega)=\frac 1 {\hbar}\sum_\alpha \int \frac {\td^3 \bm{k}} {(2\pi)^{3}} \frac {f_{\bm{k},\alpha}-f_{\bm{k}+\bm{q},\alpha}} {\omega+\omega_{\bm{k},\alpha}-\omega_{\bm{k}+\bm{q},\alpha}+\ti \epsilon}$$

Where \(\alpha\) denotes the degree of freedom of spin. And \(f_{\bm{k},\alpha}=(1+e^{\beta(\hbar \omega_{\bm{k},\alpha}-\mu)})^{-1}\) . And \(\omega_{\bm{k},\alpha}=\frac {\hbar} {2m} \bm{k}^2\) if the Hamiltonian does not contain the terms coupling with spin. And in this situation, the response function can be simplified further:

$$\chi_R(\bm{q},\omega)=\frac {g_s} {\hbar} \int \frac {\td^3 \bm{k}} {(2\pi)^{3}} \frac {f_{\bm{k}}-f_{\bm{k}+\bm{q}}} {\omega+\omega_{\bm{k}}-\omega_{\bm{k}+\bm{q}}+\ti \epsilon}$$

Where \(g_s=2\) is the spin degeneracy.

{{<fold "Proof">}}

With the discussion we made for non-interacting system, we have:

$$\chi_R(\bm{k},\bm{k'},\omega)=\frac {-1} {\hbar} \sum_{m,n} n_{mn}(\bm{k})n_{nm}(-\bm{k}')\frac {f_m-f_n} {\omega_n-\omega_m-\omega-\ti\epsilon}$$

There is an additional minus sign, because of the perturbation Hamiltonian is different from the minus sign like what we discussed before. The operator of density of many body state can be written as the sum over all single particle states:

$$\hat n(\bm{r})=\sum_i \delta(\bm{r}-\hat {\bm{x}}_i)$$

Where \(\hat {\bm{x}}_i\) is the position operator of \(i\)-th electron. Let we consider the second quantization procedure:

$$\begin{aligned}
\hat n(\bm{r}) &= \sum_{\alpha,\alpha'} \sum_{\bm{k},\bm{k'}} \bra{\bm{k},\alpha} \delta(\bm{r}-\hat{\bm{x}})\ket{\bm{k'},\alpha'} \hat a_{\bm{k},\alpha}^\dagger \hat a_{\bm{k'},\alpha'} \\
&=\sum_{\alpha,\alpha'} \sum_{\bm{k},\bm{k'}} \bra{\bm{k},\alpha} \delta(\bm{r}-\hat{\bm{x}})\sum_\beta\int \td^3 \bm{x}\ket{\bm{x},\beta}\langle \bm{x},\beta\ket{\bm{k'},\alpha'} \hat a_{\bm{k},\alpha}^\dagger \hat a_{\bm{k'},\alpha'} \\
&=\sum_{\alpha,\alpha'} \sum_{\bm{k},\bm{k'}}\bra{\bm{k},\alpha} \delta(\bm{r}-\hat{\bm{x}})\int \td^3 \bm{x}\ket{\bm{x},\alpha'}\frac 1 {\sqrt{V}} e^{\ti \bm{k'}\cdot \bm{x}} \hat a_{\bm{k},\alpha}^\dagger \hat a_{\bm{k'},\alpha'} \\
&=\sum_{\alpha,\alpha'} \int \td\bm{k}\td^3 \bm{k'} \bra{\bm{k},\alpha} \bm{r},\alpha'\rangle\frac 1 {\sqrt{V}} e^{\ti \bm{k'}\cdot \bm{r}} \hat a_{\bm{k},\alpha}^\dagger \hat a_{\bm{k'},\alpha'} \\
&=\sum_{\alpha,\alpha'} \sum_{\bm{k},\bm{k'}} \frac 1 V \delta_{\alpha,\alpha'} e^{\ti (\bm{k'}-\bm{k})\cdot \bm{r}} \hat a_{\bm{k},\alpha}^\dagger \hat a_{\bm{k'},\alpha'} \\
\end{aligned}$$

And:

$$\hat n(\bm{q})=\int \td^3 \bm{r} \ e^{-\ti \bm{q}\cdot \bm{r}}\hat n(\bm{r})=\sum_\alpha \sum_{\bm{k},\bm{k'}} \delta_{\bm{k'},\bm{k}+\bm{q}}\hat a_{\bm{k},\alpha}^\dagger \hat a_{\bm{k'},\alpha}=\sum_\alpha\sum_{\bm{k}} \hat a_{\bm{k},\alpha}^\dagger \hat a_{\bm{k}+\bm{q},\alpha}$$

For the energy eigenstates of non-interacting electron system is the single particle state \(\ket{\bm{k},\alpha}\) , we can directly write down:

$$n_{\bm{k},\alpha;\bm{k'},\alpha'}(\bm{q})=\delta_{\alpha\alpha'}\delta_{\bm{k'},\bm{k}+\bm{q}}$$

Then:

$$\begin{aligned}
\chi_R(\bm{k},\bm{k'},\omega)&=\frac {-1} {\hbar} \sum_{\alpha,\alpha'}\sum_{\bm{q},\bm{q'}} \delta_{\alpha,\alpha'}\delta_{\alpha',\alpha}\delta_{\bm{q'}-\bm{q}-\bm{k}}\delta_{\bm{q}-\bm{q'}+\bm{k'}} \frac {f_{\bm{q},\alpha}-f_{\bm{q'},\alpha'}} {\omega_{\bm{q'},\alpha'}-\omega_{\bm{q},\alpha}-\omega-\ti\epsilon}\\
&=\frac {-1} {\hbar} \sum_{\alpha} \sum_{\bm{q}} \ \delta_{\bm{k},\bm{k'}}\frac {f_{\bm{q},\alpha}-f_{\bm{q}+\bm{k},\alpha}} {\omega_{\bm{q}+\bm{k},\alpha}-\omega_{\bm{q},\alpha}-\omega-\ti\epsilon}
\end{aligned}$$

Here, we need to convert the summation over all energy levels to integral in \(\bm{k}\)-space, consider the electron gas in finite volume \(V\), the \(\bm{k}\) variables are discretized as \(k_i = 2\pi n /L_i\), so as \(L_i\rightarrow \infty\), the summation and the integral have the relationship:

$$\frac {(2\pi)^3} V\sum_{\bm{k}} \sim \int \td^3 \bm{k} \ ; \ \delta_{\bm{k},\bm{k'}} \sim \frac {(2\pi)^3} {V} \delta(\bm{k}-\bm{k'})$$

Then we have the integral form of \(\chi_R(\bm{k},\bm{k'},\omega)\):

$$\chi_R(\bm{k},\bm{k'},\omega) =\delta(\bm{k}-\bm{k'}) \frac {-1} {\hbar} \sum_{\alpha} \int \td^3 \bm{q}\ \frac {f_{\bm{q},\alpha}-f_{\bm{q}+\bm{k},\alpha}} {\omega_{\bm{q}+\bm{k},\alpha}-\omega_{\bm{q},\alpha}-\omega-\ti\epsilon}$$

Apply the property of translation invariance \(\chi_R(\bm{k},\bm{k}',\omega)=(2\pi)^{3} \delta(\bm{k}-\bm{k}')\chi_R(\bm{k},\omega)\): on this expression, we have:

$$\chi_R(\bm{k},\omega)=\frac {-1} {\hbar}\sum_\alpha \int \frac {\td^3 \bm{q}} {(2\pi)^{3}} \frac {f_{\bm{q},\alpha}-f_{\bm{q}+\bm{k},\alpha}} {\omega_{\bm{q}+\bm{k},\alpha}-\omega_{\bm{q},\alpha}-\omega-\ti\epsilon}$$

q.e.d.

{{</fold>}}

The response function for a uniform non-interacting electron gas is known as the `Lindhard function`. Let's discuss its behavior here. <mark>This block is technical and full of mathematical computation.</mark>

{{<fold "Technical details of Lindhard Function">}}

With the dispersion relation of free-electron gas: \(\hbar\omega_{\bm{k}}=\frac {\hbar^2 \bm{k}^2} {2m}\), the response function can be written as:

$$\chi_R(\bm{q},\omega)=\frac {g_2} {\sqrt{2\pi}\hbar} \int \frac {\td^3 \bm{k}} {(2\pi)^{d/2}}\Big\{\frac {f_\bm{k}} {\omega+\omega_{\bm{k}}-\omega_{\bm{k}+\bm{q}}+\ti \epsilon} - \frac {f_{\bm{k}}} {\omega+\omega_{\bm{k}+\bm{q}}-\omega_{\bm{k}}+\ti \epsilon}\Big\}$$

Where we used the property that \(\omega_{\bm{k}}=\omega_{-\bm{k}}\) . And the difference is now evaluated for free-electron gas is:

$$\omega_{\bm{k}}-\omega_{\bm{k}+\bm{q}}=-\frac \hbar {2m}(2\bm{k}\cdot \bm{q}+\bm{q}^2)=-\frac {\hbar} {2m} (2kq\cos \theta+q^2)=-4\omega_F x(r\cos\theta+x)$$

With the dimensionless variables \(x=q/2k_F\ ; \ r=k/k_F\ ; \ z=(\omega+\ti\epsilon)/4\omega_F x\), where \(k_F=\sqrt{2m\epsilon_F}/\hbar\) is the Fermi wave vector, and \(\omega_F=\epsilon_F/\hbar\). Then the integral, at zero-temperature \(T=0\Rightarrow f_{\bm{k}}=\Theta(\epsilon_F-\epsilon_{\bm{k}})\) is:

$$\begin{aligned}
\chi_{R}^{(T=0)}(\bm{q},\omega)&=\frac {g_s} {\hbar}\frac {k_F^d} {4\omega_F x (2\pi)^{d/2}}\int_{r\leq 1} \td^3 \bm{r} \Big(\frac 1 {z-r\cos\theta-x} - \frac 1 {z+r\cos\theta+x}\Big)\\
&=\frac {g_s m k_F^{d-2}} {2\hbar^2 (2\pi)^{d/2}x} \int_0^1 \td r \ r^{d-1} \int \td \Omega_d\Big(\frac 1 {z-r\cos\theta-x} - \frac 1 {z+r\cos\theta+x}\Big)
\end{aligned}$$

Where \(\td \Omega_d\) is the \(d\)-solid angle element.

With the `density of states` on the Fermi level `per volume per spin` is given by:

$$\begin{aligned}
g(0)&=\frac 1 {V g_s} \frac {\td} {\td \epsilon} \sum_\alpha \int \frac {\td^3 \bm{x}\td^3 \bm{p}} {(2\pi\hbar)^d} \Theta(\epsilon-\frac {\hbar^2 \bm{p}^2} {2m}) \Bigg|_{\epsilon=\epsilon_F}\\
&= \frac {\td } {\td \epsilon} \frac {\Omega_d k(\epsilon)^d} {(2\pi)^d d} \Bigg|_{\epsilon=\epsilon_F}\\
&=\frac {\Omega_d} {(2\pi)^d} \frac {mk_F^{d-2}} {\hbar^2}
\end{aligned}$$

Where \(\epsilon=\hbar^2 k^2/2m\) has been applied, and \(\Omega_1=2, \Omega_2=2\pi, \Omega_3=4\pi\) .

So we obtain the `zero-temperature` response function for a free electron gas:

$$\chi_R(\bm{q},\omega)^{(T=0)}=g_sg(0)\frac 1 {2x} \big(X(z-x)-X(z+x)\big)$$

Where:

$$X(z)=\int_0^1 \td r \ r^{d-1} \int \frac {\td \Omega_d} {\Omega_d} \frac 1 {z-r\cos\theta}$$

Where used the fact that \(X(-z)=-X(z)\). And the response function \(\chi_R^{(T=0)}(\bm{q},\omega)\) is a function of the magnitude of \(\bm{q}\) vector.

When \(d=3\) , one has the analytic form of \(X\):

$$X(z)=\frac 1 2 \Big(z-\frac {z^2-1} 2 \log \frac {z+1} {z-1}\Big) \ ; \ \text{for } d=3$$

One can also write the `spectral function` , which is the imaginary part of response function:

$$A^{(T=0)}(\bm{q},\omega)=\frac {g_s \pi} {\sqrt{2\pi}\hbar}\int \frac {\td^3 \bm{k}} {(2\pi)^{d/2}} \Big(\Theta(\omega_F-\omega_{\bm{k}+\bm{q}})-\Theta(\omega_F-\omega_{\bm{k}})\Big)\delta(\omega-\omega_{\bm{k}+\bm{q}}+\omega_{\bm{k}})$$

And for the case of \(d=3\) , one has:

$$A^{(T=0)}(\bm{q},\omega)=\frac {g_s g(0)\pi} {8x} \Big\{\Big(1-(\frac {u} x+x)^2\Big)\Theta\Big(1-(\frac {u} x+x)^2\Big)-\Big(1-(\frac {u} x-x)^2\Big)\Theta\Big(1-(\frac {u} x-x)^2\Big)\Big\}$$

Where \(u=\omega/4\omega_F\).

{{</fold>}}

## Spin Density Response

In the presence of a Zeeman field:

$$\hat H' = - \frac 1 2 g_e \mu_B \bm{B}\cdot \bm{\sigma}$$

where \(\bm{\sigma} = \sum_{i=1}^3 \bm{e}_i \sigma^i\) and \(g_e\) is the gyromagnetic ratio of an electron(g-factor). In this section, we show the method to treat the density and spin-density responses within a unified framework. A general external field reads:

$$F(x) = (e\phi(x), - \frac 1 2 g_e \mu_B \bm{B}(x)) \equiv (F^0, F^1, F^2, F^3)$$

Then the generalized density operator is:

$$\hat H' = - \int \td^3 \bm{r}$$

# Current Response

## General Theory

Consider the many-body Hamiltonian for an \(N\)-electron system:

# Conduction in an Electron Gas

For a non-interacting system, the current response function can be factored into single particle Green's functions and velocity vertices. The process of doing so will also reveal more information regarding the structure of the retarded current-current correlation.

## Kubo-Greenwood Formula for Conductivity

In energy eigenstates basis, the Hamiltonian of non-interacting electron system can be written as: \(\hat H=\sum_n \hbar \omega_n \hat c_n^\dagger(t)\hat c_n(t)\) . And the Fermion field operator is \(\hat \psi(\bm{r},t)=\sum_n \bra{\bm{r}}E_n\rangle \hat c_n(t)=\sum_n \phi_n(\bm{r})\hat c_n(t)\). Thus, the retarded current-current correlation function can be massaged as follows: (use \(x\) to denote 4-component variable \(\bm{r},t\) as usual)

$$K_{ab}(x,x')= \frac {\ti} \hbar \Theta(t-t') \langle [\hat j_a(x),\hat j_b(x')]\rangle$$

With the property of time translation invariance, this correlation function should be a function of time difference. So with the Fourier transform we have:

$$K(\bm{r},t;\bm{r'},t')=\int \frac {\td \omega} {\sqrt{2\pi}} e^{-\ti \omega (t-t')} K_{ab}(\bm{r},\bm{r'},\omega)$$

And:

$$K_{ab}(\bm{r},\bm{r'},\omega)=\frac {e^2 \hbar} {\sqrt{2\pi} m^2} \sum_{i,j} \frac {f_i -f_j} {\omega+\omega_i-\omega_j+\ti \epsilon} \big[\phi_i^*(\bm{r})\overset {\leftrightarrow} {\partial_a} \phi_j(\bm{r})\big]\big[\phi_j^*(\bm{r'})\overset {\leftrightarrow} {\partial_{b'}} \phi_i(\bm{r'})\big]$$

Where operator \(f \overset {\leftrightarrow} {\partial_\mu} g\equiv f\partial_\mu g - (\partial_\mu f)g\)

## Diagrammatic Expansion of the Disorder Averaging

Now we try to handle the disorder averaging appeared before. First of all, we note that the retarded/advanced Green's function should be corrected under the impurity potential \(H'(\bm{r})\) . For this, when the impurity potential is static we havethe two-point Dyson equations:

$$\begin{aligned}
G_R(\bm{k},\bm{k'},\epsilon) &= G_R^0(\bm{k},\bm{k'},\epsilon) + \int \frac {\td^d \bm{p}} {(2\pi)^{d/2}} G_R^0(\bm{k},\epsilon) H'(\bm{k}-\bm{p}) G_R(\bm{p},\bm{k'},\epsilon)\\
G_A(\bm{k},\bm{k'},\epsilon) &= G_A^0(\bm{k},\bm{k'},\epsilon) + \int \frac {\td^d \bm{p}} {(2\pi)^{d/2}} G_A(\bm{k},\bm{p},\epsilon) H'(\bm{p}-\bm{k'}) G_A(\bm{k'},\epsilon)
\end{aligned}$$

Where \(H'(\bm{k})=\int \frac {\td^d \bm{r}} {(2\pi)^{d/2}} e^{-\ti \bm{k}\cdot \bm{r}} H'(\bm{r})\) , and \(G_{R/A}^0(\bm{k},\bm{k'},\epsilon)=\delta(\bm{k}-\bm{k'})G_{R/A}^0(\bm{k},\epsilon)\) is the Green's function for the system without the impurity potential.
