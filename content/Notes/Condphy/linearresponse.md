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

{{%fold "Proof"%}}

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

{{%/fold%}}

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

{{%fold "Proof"%}}

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

{{%/fold%}}

# Spectral Representation

## General Spectral Decomposition

_[Definition]_ : The `Spectral representation` , or the `spectral decomposition` of the response function, is to rewrite it with the complete set of energy eigenstates of the unperturbed system: \(\hat H_0\ket{m}=\hbar \omega_m \ket{m}\) (note that if there is degeneracy of energy level, the summation below should cover it). Then with that \(\bra{m}\hat P \ket{n}=P_{mn}\), we have:

$$\chi_R(\omega)=\int \frac {\td t} {\sqrt{2\pi}} e^{-\ti \omega t} \chi_R(t)=\frac 1 {\hbar \sqrt{2\pi}} \int_{-\infty}^{\infty} \frac {\td u \ (1-e^{-\beta \hbar u})} {u-\omega-\ti\epsilon} \sum_{m,n}\frac {\exp(-\beta \hbar \omega_m)} {Z} P_{mn}Q_{nm}\delta\big(u-(\omega_n-\omega_m)\big)$$

{{%fold "Proof"%}}

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
\chi_R(\omega) &= \int \frac {\td t} {\sqrt{2\pi}} e^{\ti\omega t} \chi_R(t) \\
&= \int_0^{\infty} \frac {\ti \td t} {\hbar Z \sqrt{2\pi}} \sum_{m,n}e^{\ti (\omega_m-\omega_n+\omega) t} P_{mn}Q_{nm}\big(e^{-\beta \hbar \omega_m}-e^{-\beta \hbar \omega_n}\big)
\end{aligned}$$

Consider the integral:

$$\int_0^{\infty} \ti \td t \ e^{\ti \alpha t}=\ti \frac {e^{(\ti \alpha-\epsilon) t}} {\ti \alpha-\epsilon}\Bigg|_0^\infty=\frac {-\ti} {\ti \alpha -\epsilon}$$

Where \(\epsilon\) is a infinitesimal positive number. Then we have:

$$\chi_R(\omega)=\frac 1 {\hbar Z \sqrt{2\pi}}\sum_{m,n} \frac {e^{-\beta \hbar \omega_m}-e^{-\beta \hbar \omega_n}} {-\omega_m+\omega_n-\omega-\ti\epsilon} P_{mn}Q_{nm}$$

Then we can write it with the integral and delta function:

$$\chi_R(\omega) = \frac 1 {\hbar \sqrt{2\pi}} \int_{-\infty}^{\infty} \frac {\td u \ (1-e^{-\beta \hbar u})} {u-\omega-\ti\epsilon} \sum_{m,n}\frac {\exp(-\beta \hbar \omega_m)} {Z} P_{mn}Q_{nm}\delta\big(u-(\omega_n-\omega_m)\big)$$

{{%/fold%}}

_[Definition]_ : the `Spectral function` is defined as :

$$A(\omega)=\text{Im} \chi_R(\omega)=\frac {\pi} {\hbar \sqrt{2\pi}} (1-e^{-\beta \hbar \omega}) \sum_{m,n}p_m P_{mn}Q_{nm}\delta(\omega-(\omega_n-\omega_m))$$

in which \(p_m=Z^{-1}e^{-\beta \hbar \omega_m}\) , and we used the property that \(\frac 1 {x+\ti \epsilon}=\mathcal{P}\frac 1 x-\ti \pi \delta(x)\). If we extend the variable to the complex plane, then we have the `dynamical susceptibility` :

$$\chi(z)=\int \frac {\td u} {\pi} \frac {A(u)} {u-z}$$

Then `retard correlation function` is \(\chi_R(\omega)=\chi(\omega+\ti \epsilon)\) , which is a particular example of Kramers-Kronig relation. And can also define the `advanced correlation function` : \(\chi_A(\omega)=\chi(\omega-\ti\epsilon)\).

_[Theorem]_ : Let correlation function \(S(t-t')=\langle \hat P_I(t)\hat Q_I(t')\rangle\) , and its Fourier transform \(S(\omega)=\int \frac {\td t} {\sqrt{2\pi}} e^{\ti \omega t} S(t)\) , we can derive the `quantum fluctuation-dissipation theorem`:

$$S(\omega)=2\hbar (1+f_{BE}(\hbar \omega))A(\omega)$$

In which \(f_{BE}(x)=(e^{\beta x}-1)^{-1}\), is the Bose-Einstein distribution function. Where \(S\) represents the correlation in the ground state \(T=0\) or equilibrium \(T\gt 0\) , and \(A(\omega)\) is the imaginary parti of the retarded response function that represents the dissipation of a system in an external field.

{{%fold "Proof"%}}

We have:

$$S(t-t')=\langle \hat P_I(t)\hat Q_I(t')\rangle = \frac 1 Z \sum_{m,n}e^{\ti (\omega_m-\omega_n) (t-t')-\beta\hbar \omega_m} P_{mn}Q_{nm}$$

Then:

$$S(\omega)=\frac {2\pi} {Z\sqrt{2\pi}} \sum_{m,n}p_m P_{mn}Q_{nm}\delta(\omega+\omega_m-\omega_n)$$

It is obvious that:

$$S(\omega)=2\hbar \frac 1 {1-e^{-\beta \hbar \omega}} A(\omega)$$

The Bose-Einstein distribution function is:

$$f_{BE}(x)=\frac 1 {e^{\beta x} -1}$$

Then we have:

$$S(\omega)=2\hbar (1+f_{BE}(\hbar \omega)) A(\omega)$$

{{%/fold%}}

## Symmetry of Retard Correlation Function

_[Theorem]_ : The symmetry of response functions:

$$\begin{aligned}
\chi_R(-\omega)_{\hat P\hat Q} &= [\chi_R(\omega)_{\hat P^\dagger \hat Q^\dagger}]^* \\
\chi_R(\omega)_{\hat P\hat Q} &= \chi_R(\omega)_{\hat Q^T \hat P^T}
\end{aligned}$$

{{%fold "Proof"%}}

With the spectral decomposition:

$$\chi_R(\omega)_{\hat P\hat Q}=\frac 1 {\hbar \sqrt{2\pi}} \sum_{m,n} \frac {p_m - p_n} {\omega_n-\omega_m-\omega -\ti \epsilon} P_{mn}Q_{nm}$$

Then:

$$\begin{aligned}
\big(\chi_R(-\omega)_{\hat P^\dagger \hat Q^\dagger}\big)^* &= \frac 1 {\hbar \sqrt{2\pi}} \sum_{m,n} \frac {p_m-q_n} {\omega_n-\omega_m-\omega+\ti \epsilon} P_{nm}Q_{mn} \\
&=\frac 1 {\hbar \sqrt{2\pi}} \sum_{m,n} \frac {p_n-q_m} {\omega_m-\omega_n-\omega+\ti \epsilon} P_{mn}Q_{nm} \\
&= \chi_R(\omega)_{\hat P \hat Q}
\end{aligned}$$

And:

$$\begin{aligned}
\chi_R(\omega)_{\hat Q^T \hat P^T} &= \frac 1 {\hbar \sqrt{2\pi}} \sum_{m,n} \frac {p_m-q_n} {\omega_n-\omega_m-\omega-\ti \epsilon} Q^T_{mn}P^T_{nm} \\
&=\frac 1 {\hbar \sqrt{2\pi}} \sum_{m,n} \frac {p_m-q_n} {\omega_n-\omega_m-\omega-\ti \epsilon} Q_{nm}P_{mn} \\
&=\chi_R(\omega)_{\hat P \hat Q}
\end{aligned}$$

q.e.d.

{{%/fold%}}

## Connection to Spectroscopy
