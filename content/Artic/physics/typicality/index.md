---
title: "Typicality in Quantum Statistical Physics"
date: 2019-02-10T15:54:07+08:00
lastmod: "2019-02-10T18:00:00+08:00"
draft: true
tags: ["quantum","statistical-phys"]
categories: ["Reviews"]
toc: true
summary: "Typicality is such a phenomenon that in a Hilbert space with extremely high dimension, almost all state vectors have similar performance. It is a pure mathematical property of the high-dimensional-space geometry. However, in quantum physics, if one admits that the state of a system with some macroscopical constraints (like energy shell) is a random vector in the Hilbert space, then many things like equal a priori probability hypothesis, entropy, and relaxation can be understood. Here we will show the typicality methodology, and show the typicality of entropy and observables."
---

# Probability Space of Pure States

Pure states can be described by a state vector, or a point in a Hilbert space. Usually we need only deal with finite-dimensional Hilbert space because of some energy-cutoff and other constraints. So with the basis(orthonormal) fixed, the Hilbert space looks like a \(N\)-dimensional complex sphere:

$$\mathcal{H}(N)=\Big\{\ket{\psi}=\sum_{i=1}^N c_i \ket{\xi_i} : \sum_{i=1}^N |c_i|^2=1\Big\}\cong \mathcal{H}_N=\Big\{z\in \mathbb{C}^N : \sum_{i=1}^N |z_i|^2 = 1\Big\}$$

The probability space is generated by the uniformly sampling on the \(\mathcal{H}(N)\) , then any function of state vector can be treated as a random variable. And the state vector can be treated as a random vector on \(\mathcal{H}_N\) .

Formally, the definition is:

_[Definition]_ : For any (continuous) function of state vector and basis:

$$F: \mathcal{H}_N \otimes U(N)\rightarrow \mathbb{R}$$

If one fixes the basis, it is a random variable respects to the `probability space` induced by the `normalized uniform spherical measure` of \(\mathcal{H}_N\sim S^{2N-1}\) .

It is also the probability space of the function \(F\) with state fixed, and basis are uniformly sampled by the `Haar measure` on \(U(N)\).

_[Remark 1]_ : With this definition, the probability space can be treated as an ensemble as a set of pure states. And it is uniformly distributed, namely has the maximum entropy.

_[Remark 2]_ : One can generate such a probability space with the `energy-shell constraints` , which requires that the states should be linearly combined with a set of energy-eigenstates , whose energy are in the interval \([E,E+\Delta E]\) , where \(\Delta E/E\ll 1\) . And this is the `micro-canonical ensemble` in text books.

# Observables and Entropy

## Observables and Their Moments

For given observable \(\hat A\) , its `expected value` is independent of the basis. That is:

$$F(\ket{\psi})=\bra{\psi}\hat A\ket{\psi}\sim F(z)=\sum_{i,j=1}^N z_i^* A_{ij} z_j$$

Where \(A_{ij}=\bra{\xi_i}\hat A\ket{\xi_j}\)

### Expected value and moments

_[Theorem]_ : The expected value of \(F(z)\) is(with \(z\) treated as random variable)

$$\mathbb{E}(F(z))=\frac 1 N \text{Tr}_{\mathcal{H}(N)}\hat A = \frac 1 N \text{Tr}\Big(\hat P_{\mathcal{H}(N)}\hat A \hat P_{\mathcal{H}(N)}\Big)$$

Where \(\hat P_{\mathcal{H}(N)}\) is the projector towards \(\mathcal{H}(N)\equiv\text{span}\{\xi_i\}\) .

{{<fold "Proof">}}

If \(i\neq j\) , \(\mathbb{E}(z_i^* z_j)=0\) because of it is an odd function. And if \(i=j\) , it is \(\mathbb{E}(|z_i|^2)=\frac {\Gamma(N)\Gamma(2)} {\Gamma(1+N)}=\frac 1 {N}\) , Then:

$$\mathbb{E}(F(z))=\frac 1 N \sum_{i,j=1}^N A_{ij}\delta_{ij}=\frac 1 N \text{Tr}_{\mathcal{H}(N)} \hat A$$

{{</fold>}}

_[Theorem]_ : The n-th moment of \(F(z)\) is:

$$\mathbb{E}\Big(\big(F(z)-\mathbb{E}F(z)\big)^n\Big)=\frac {\Gamma(n+1)\Gamma(N)} {\Gamma(n+N)} \sum_{k_1+\cdots+k_N=n}  \prod_{i=1}^N \lambda_i^{k_i}$$

Where \(\lambda_i\) is the eigenvalue of matrix: \(B_{ij}=A_{ij}-\mathbb{E}(F(z))\delta_{ij}\).

{{<fold "Proof">}}

Let \(\hat B = \hat A-\mathbb{E}(F(z))\), then one has \(F(z)-\mathbb{E}F(z)=\bra{\psi}\hat B\ket{\psi}\) . That is to say, we need only compute the moment: \(\mathbb{E}(|\bra{\psi}\hat B\ket{\psi}|^n)\) with \(\ket{\psi}\) is random variable.

With the invariance of the spherical mean under the unitary transformation, we rewrite it with the eigenstates of \(\hat B\) in space \(\mathcal{H}(N)\) .

$$\begin{aligned}
\mathbb{E}((\sum_{i,j=1}^N z_i^* B_{ij} z_j)^n) &= \mathbb{E}\Big(\big(\sum_{i=1}^N |z_i|^2 \lambda_i\big)^n\Big) \\
&= \sum_{k_1+\cdots+k_N=n} \frac {n!} {k_1! \cdots k_N!} \prod_{i=1}^N \lambda_i^{k_i} \cdot \mathbb{E}\big(\prod_{i=1}^N |z_i|^{2k_i}\big) \\
&= \sum_{k_1+\cdots+k_N=n} \frac {n!} {k_1! \cdots k_N!} \prod_{i=1}^N \lambda_i^{k_i} \frac {\Gamma(k_1+1)\cdots \Gamma(k_N+1)\Gamma(N)} {\Gamma(k_1+\cdots+k_N+N)} \\
&=\frac {\Gamma(n+1)\Gamma(N)} {\Gamma(n+N)} \sum_{k_1+\cdots+k_N=n}  \prod_{i=1}^N \lambda_i^{k_i}
\end{aligned}$$

Where the summation of \(k\) is taken over all nonnegative integer indices \(k_1,\cdots,k_N\) , and assign \(\lambda_i^{k_i}=1\) if \(\lambda_i=0, \ k_i=0\) here.

Let \(R_n(\{\lambda_i\})=\sum_{k_1+\cdots+k_N=n}  \prod_{i=1}^N \lambda_i^{k_i}\), one can check that the Z-transform:

$$\sum_{n=0}^{\infty} x^n R_n(\{\lambda_i\})=\sum_{k_1=1}^\infty\cdots \sum_{k_N=1}^\infty \prod_{i=1}^N (x\lambda_i)^{k_i}=\prod_{i=1}^N \frac 1 {1-x\lambda_i}\equiv G\{\lambda_i\}(x)$$

If \(x\lt 1/(\max |\lambda_i|)\) . And:

$$R_n(\{\lambda_i\})=\frac 1 {n!} \frac {\td^n} {\td x^n} G\{\lambda_i\}(x)\Bigg|_{x=0}$$

{{</fold>}}

### Variance

We can write down the case of \(n=2\), which is the variance:

$$\mathbb{E}\big((F(z)-\mathbb{E}F(z))^2\big)=\frac {\Gamma(3)\Gamma(N)} {\Gamma(2+N)}\Big(\sum_{i=1}^N \lambda_i^2+\frac 1 2 \sum_{i\neq j}\lambda_i\lambda_j\Big)=\frac 1 {N(N+1)}\Big(\sum_{i=1}^N \lambda_i^2\Big)$$

If \(\sum_{i=1}^N \lambda_i^2\) grows slower than \(N^2\) , it has the limit zero as \(N\rightarrow \infty\) . Which means the expected value of observable converges in the 2-rd mean.

## Entropy of Pure State

The well-known `von-Neumann Entropy` is always zero for pure state. Here we use the `Shannon Entropy of an observable` (or `Generalized Wigner-von Neumann Entropy` in [[Arxiv/1812.10020][2]]):

$$S(\ket{\psi},\{\ket{\xi_i}\})=-\sum_{i=1}^N |\bra{\xi_i}\psi\rangle|^2 \log |\bra{\xi_i}\psi\rangle|^2 $$

Or \(S(z)=-\sum_{i=1}^N |z_i|^2 \log |z_i|^2\) . Noting that here we can interpreter it in two ways:

1.  Given the basis \(\{\ket{\xi_i}\}\) , state \(\ket{\psi}\) is the random vector in the Hilbert space \(\mathcal{H}(N)\) , and generates the random variable \(S(z)\) .

2.  Given the pure state \(\ket{\psi}\) , basis \(\{\ket{\xi_i}\}\) is the random variable generated by unitary group \(U(N)\) , and generates the random variable \(S(z)\).

### Expected value

_[Theorem]_ : The expected value of \(S(z)\) is (with \(z\) treated as random variable)

$$\mathbb{E}S(z)= \Psi_0(N+1)-\Psi_0(2)\sim_{N\gg 1} \ \log N-1+\gamma$$

Where \(\Psi_0(x)=\frac {\td \Gamma(x)} {\Gamma(x)\td x}\) is the Digamma function.

{{<fold "Proof">}}

One can check that:

$$S(z)=-\frac {\partial} {\partial \alpha} \sum_{i=1}^N |z_i|^{2\alpha}\Bigg|_{\alpha=1}$$

Then:

$$\mathbb{E}S(z) =-\frac {\partial} {\partial \alpha} \mathbb{E}\big(\sum_{i=1}^N |z_i|^{2\alpha}\big) \Bigg|_{\alpha=1} = -\frac {\partial} {\partial \alpha} \frac {\Gamma(N+1)\Gamma(1+\alpha)} {\Gamma(\alpha+N)}\Bigg|_{\alpha=1}=\frac {\Gamma'(N+1)} {\Gamma(N+1)}-\frac {\Gamma'(2)} {\Gamma(2)} $$

With the asymptotic expansion, one can check that as \(N\rightarrow \infty\) :

$$\mathbb{E}S(z)= \log N -1 +\gamma + \mathcal{O} (N^{-1})$$

{{</fold>}}

It is similar to the form of `Boltzmann Entropy` defined by the `number of microscopic states`

### Variance of entropy

_[Theorem]_ : The variance of \(S(z)\) is:

$$\mathbb{E}\Big(|S(z)-\mathbb{E}S(z)|^2\Big)=\frac 1 {N+1}\Big(\frac {\pi^2} 3 -2\Big)-\Psi_1(N+1)$$

{{<fold "Proof">}}

One can check that:

$$S^2(z)=\frac {\partial^2} {\partial \alpha_1 \partial \alpha_2} \sum_{i_1=1}^N\sum_{i_2=1}^N  |z_{i_1}|^{2\alpha_1}|z_{i_2}|^{2\alpha_2}\Bigg|_{\alpha_1=\alpha_2=1}$$

Then:

$$\mathbb{E}S^2(z)=\frac {\partial^2} {\partial \alpha_1 \partial \alpha_2}\Big(N \frac {\Gamma(N)\Gamma(\alpha_1+\alpha_2+1)} {\Gamma(\alpha_1+\alpha_2+N)}+N(N-1)\frac {\Gamma(N)\Gamma(\alpha_1+1)\Gamma(\alpha_2+1)} {\Gamma(\alpha_1+\alpha_2+N)}\Big)\Bigg|_{\alpha_1=\alpha_2=1}$$

Then:

$$\mathbb{E}\Big(|S(z)-\mathbb{E}S(z)|^2\Big)=\frac 1 {N+1}\Big(\frac {\pi^2} 3 -2\Big)-\Psi_1(N+1)$$

Where \(\Psi_1(x)=\frac {\td^2 \log \Gamma(x)} {\td x^2}\)

One maybe need to use the property (\(\Psi(x)=\frac {\td \log \Gamma(x)} {\td x}\))

$$\Psi(z+1)=\Psi(z)+\frac 1 {z}$$

{{</fold>}}

# Thermalization and Relaxation Time

## Definition

The term `Thermalization` here is defined for some real valued functions of a quantum state \(f: \mathcal{H}\ni \ket{\psi(t)}\mapsto f(\ket{\psi(t)})\in \mathbb{R}\) . Or with the time-evolution operator:

$$F(t,\ket{\psi},\{\ket{\xi_i}\})=f(\hat U(t)\ket{\psi})$$

Here function \(F\) is dependent of time \(t\) and initial state \(\ket{\psi}\) , and sometimes it is dependent of basis \(\{\ket{\xi_i}\}\) , like entropy. It is a generic form of the functions we may meet in quantum mechanics.

_[Definition]_ : `Thermalization` of some functions \(F(t,\ket{\psi},\{\ket{\xi_i}\})\) is such a `property` of their `statistical behavior of time` :

1.  `Equilibration`: \(F(t,\ket{\psi},\{\ket{\xi_i}\})\) should "stay" at a explicit quantity for a `long`, `continuous` time. Namely, define the `time-mean`:

    $$\mu = \lim_{T\rightarrow \infty} \frac 1 T\int_0^{T} F(t,\ket{\psi},\{\ket{\xi_i}\})\td t$$

    Then the `time-variance` should be sufficient small:

    $$\sigma^2 :=\lim_{T\rightarrow \infty} \frac 1 T \int_0^T \big|F(t,\ket{\psi},\{\ket{\xi_i}\})-\mu\big|^2 \td t\ll 1$$

2.  `initial state independence` : For those states of the same `macroscopic condition` , the equilibrium value \(\mu\) and the property \(\sigma^2\ll 1\) should hold independently.

    Here, the term `macroscopic condition` is only to say the energy shell. Or the Hilbert space \(\mathcal{H}(N)\) . Namely, we require \(\mu\) is just the function of energy and some other macroscopic parameters which are independent of the initial state \(\ket{\psi(t=0)}\) .

In another word, such a quantity \(F(t,\ket{\psi},\{\ket{\xi_i}\})\) can get static near the time-mean \(\mu\) in a finite long time \(\tau\), which is the `relaxation time` of \(F\). The fluctuation along the time axis should not be very large. And it behaves like such no matter what initial state is.

## Relaxation of Expected Value of Observable

Consider the observable \(\hat A\), and our time-dependent function is:

$$F(t,\ket{\psi})=\bra{\psi}\hat U(t)^\dagger \hat A \hat U(t)\ket{\psi}$$

It is independent of the choice of basis. But in the quantum dynamics, it is convenient to use the eigenstates of Hamiltonian as basis: \(\hat H \ket{E,a}=E\ket{E,a}\) , where \(a\) denote the degeneracy, and the `degree of degeneracy` is \(d(E)=\sum_{a,\text{states of } E} 1\)

$$\hat A=\sum_{E,E';a,a'}A_{E,a;E',a'}\ket{E,a}\bra{E',a'}$$

Here, we still obey the constraint of Hilbert space \(\mathcal{H}(N)\) .  In this basis, we have the evolving state, with \(\hbar =1\).

$$\ket{\psi(t)}=\hat U(t)\ket{\psi}=\sum_{E,a}c_{E,a}e^{-\ti E t}\ket{E,a}$$

Then:

$$F(t,\ket{\psi})\equiv F(t,\{c_{E,a}\})=\sum_{E,a;E',a'}A_{E,a;E',a'}c_{E,a}^*c_{E',a'}e^{-\ti(E-E')t}$$

_[Theorem]_ : The time-mean and time-variance, as the function of random vector \(\ket{\psi}\sim \{c_{E,a}\}\) , is:

$$\begin{aligned}
\mu_A(\{c_{E,a}\}) &= \sum_{E} \sum_{a,a'=1}^{d(E)} A_{E,a;E,a'} c_{E,a}^* c_{E,a'} \\
\sigma_A^2 (\{c_{E,a}\})+ \mu_A^2 &= \sum_{E_1-E_1'+E_2-E_2'=0}\sum_{a,a';b,b'} A_{E_1,a;E_1',a'}c_{E_1',a'}c_{E_1,a}^* A_{E_2,b;E_2',b'}c_{E_2',b'}c_{E_2,b}^*
\end{aligned}$$

{{<fold "Proof">}}

With the definition of quantities of time-statistic:

$$\begin{aligned}
\mu_A &= \lim_{T\rightarrow \infty} \frac 1 T \int_0^T \bra{\psi(t)}\hat A\ket{\psi(t)} \td t \\
&= \lim_{T\rightarrow \infty} \frac 1 T \int_0^T \Big\{\sum_{E,a;E',a'}A_{E,a;E',a'}c_{E,a}^*c_{E',a'}e^{-\ti(E-E')t}\Big\}\td t\\
&= \sum_{E,a;E',a'} A_{E,a;E',a'}c_{E,a}^*c_{E',a'}\delta_{E,E'} \\
&= \sum_{E} \sum_{a,a'=1}^{d(E)} A_{E,a;E,a'} c_{E,a}^* c_{E,a'}
\end{aligned}$$

And:

$$\begin{aligned}
\sigma_A^2+\mu_A^2 &= \lim_{T\rightarrow \infty} \frac 1 T \int_0^T \Big(\bra{\psi(t)}\hat A\ket{\psi(t)}\Big)^2 \td t \\
&=\lim_{T\rightarrow \infty} \frac 1 T \int_0^T\td t \Big\{\sum_{E_1,a_1;E_1',a_1'}\sum_{E_2,a_2;E_2',a_2'}A_{E_1,a_1;E_1',a_1'}c_{E_1,a_1}^*c_{E_1',a_1'}A_{E_2,a_2;E_2',a_2'}c_{E_2,a_2}^*c_{E_2',a_2'}\\
&\indent \cdot e^{-\ti\big((E_1-E_1')+(E_2-E_2')\big)t}\Big\}\\
&=\sum_{E_1,a_1;E_1',a_1'}\sum_{E_2,a_2;E_2',a_2'}A_{E_1,a_1;E_1',a_1'}c_{E_1,a_1}^*c_{E_1',a_1'}A_{E_2,a_2;E_2',a_2'}c_{E_2,a_2}^*c_{E_2',a_2'} \delta_{E_1-E_1',-(E_2-E_2')}\\
&=\sum_{E_1-E_1'+E_2-E_2'=0}\sum_{a,a';b,b'} A_{E_1,a;E_1',a'}c_{E_1',a'}c_{E_1,a}^* A_{E_2,b;E_2',b'}c_{E_2',b'}c_{E_2,b}^*
\end{aligned}$$

If we treated the initial state \(\ket{\psi}\) as the random vector in \(\mathcal{H}(N)\) , then these two quantities are random variables.

{{</fold>}}

_[Theorem]_ : The mean and variance of random variable \(\mu_A\) are:

$$\begin{aligned}
\mathbb{E}\mu_A &=\frac 1 N \text{Tr}_{\mathcal{H}(N)} \hat A \\
\mathbb{E}\big(|\mu_A-\mathbb{E}\mu_A|^2\big)&=\frac 1 {N+1}\Big\{\frac {\sum_E \text{Tr}_{E-\text{subspace}} \hat A^2} {N}-\Big(\frac {\text{Tr}_{\mathcal{H}(N)}\hat A} {N}\Big)^2\Big\}
\end{aligned}$$

Where \(\text{Tr}_{E-\text{subspace}}\hat A^2\) means:

$$\text{Tr}_{E-\text{subspace}} \hat A^2 = \sum_{a,a'}\bra{E,a}\hat A \ket{E,a'}\bra{E,a'}\hat A\ket{E,a}$$

{{<fold "Proof">}}

First, to compute the mean of \(\mu_A\) , we need:

$$\begin{aligned}
\mathbb{E}\mu_A &= \sum_{E} \sum_{a,a'=1}^{d(E)} A_{E,a;E,a'} \mathbb{E}(c_{E,a}^* c_{E,a'}) \\
&=\sum_{E} \sum_{a,a'=1}^{d(E)} A_{E,a;E,a'} \frac 1 N \delta_{a,a'} \\
&=\frac 1 N \text{Tr}_{\mathcal{H}(N)} \hat A
\end{aligned}$$

Where we used the property that the spherical mean of an odd function is zero. Then:

$$\begin{aligned}
\mathbb{E}\mu_A^2 &= \sum_{E_1,E_2} \sum_{a,a'=1}^{d(E_1)}\sum_{b,b'=1}^{d(E_2)} A_{E_1,a;E_1,a'}A_{E_2,b;E_2,b'}\mathbb{E}(c_{E_1,a}^*c_{E_1,a'}c_{E_2,b}^*c_{E_2,b'})\\
&=\sum_{E_1,E_2} \sum_{a,a'=1}^{d(E_1)}\sum_{b,b'=1}^{d(E_2)} A_{E_1,a;E_1,a'}A_{E_2,b;E_2,b'}\Big(\frac {\Gamma(N)} {\Gamma(N+2)}\Bigg|_{a=a';b=b';E_1\neq E_2}\\
&\indent + \frac {\Gamma(N)} {\Gamma(N+2)}\Bigg|_{a=a';b=b';a\neq b;E_1=E_2}+\frac {\Gamma(N)} {\Gamma(N+2)}\Bigg|_{a=b';a'=b;a\neq a';E_1=E_2}\\
&\indent + \frac {2\Gamma(N)} {\Gamma(N+2)}\Bigg|_{a=a'=b=b';E_1=E_2}+0\Big|_{\text{otherwise}}\Big)\\
&=\Bigg\{\sum_{E_1\neq E_2} \sum_{a,b} A_{E_1,a;E_1,a} A_{E_2,b;E_2,b} + \sum_{E} \sum_{a\neq b} A_{E,a;E,a} A_{E,b;E,b} \\
&\indent + \sum_{E}\sum_{a\neq b} A_{E,a;E,b} A_{E,b;E,a} + 2 \sum_{E}\sum_a A_{E,a;E,a}^2 \Bigg\} \frac 1 {N(N+1)} \\
&=\Bigg\{\sum_{E_1,E_2} \sum_{a,b} A_{E_1,a;E_1,a} A_{E_2,b;E_2,b}  + \sum_{E}\sum_{a, b=1}^{d(E)} A_{E,a;E,b} A_{E,b;E,a} \Bigg\} \frac 1 {N(N+1)} \\
&= \frac 1 {N(N+1)}\Big\{(\text{Tr}_{\mathcal{H}(N)}\hat A)^2+\sum_E \text{Tr}_{E-\text{subspace}}\hat A^2 \Big\}
\end{aligned}$$

Or we can use the invariance of mean under unitary transformation, let eigenvalues of \(\hat A\) in \(E\)-subspace are \(\lambda_i(E) \ ; \ i=1,\cdots,d(E)\) , one has:

$$\begin{aligned}
\mathbb{E}\mu_A^2 &= \mathbb{E}\sum_{E_1,E_2} \sum_{i_1=1}^{d(E_1)}\sum_{i_2=1}^{d(E_2)} \lambda_{i_1}(E_1)|z_{E_1,i_1}|^2 \lambda_{i_2}(E_2)|z_{E_2,i_2}|^2 \\
&= \sum_{E_1,E_2}\sum_{i_1,i_2} \lambda_{i_1}(E_1)\lambda_{i_2}(E_2) \Big\{\frac {1} {N(N+1)}\Bigg|_{1\neq 2}+\frac {2} {N(N+1)}\Bigg|_{1= 2}\Big\} \\
&=\frac {1} {N(N+1)}\Big\{\sum_E \sum_{i\neq j} \lambda_i(E)\lambda_j(E)+\sum_{E_1\neq E_2}\sum_{i,j}\lambda_i(E_1)\lambda_j(E_2)+2\sum_E\sum_i \lambda_i(E)^2\Big\}\\
&= \frac 1 {N(N+1)}\Big\{\sum_{E,i}\lambda_i(E)^2+\sum_{E_1,E_2}\sum_{i_1,i_2}\lambda_{i_1}(E_1)\lambda_{i_2}(E_2)\Big\} \\
&= \frac 1 {N(N+1)}\Big\{(\text{Tr}_{\mathcal{H}(N)}\hat A)^2+\sum_E \text{Tr}_{E-\text{subspace}}\hat A^2 \Big\}
\end{aligned}$$

Which is the same as the result above. In fact, one can also compute this quantity with the generic 4-point function, and it also induces the same conclusion. Then we can write down the variance of \(\mu_A\):

$$\begin{aligned}
&\mathbb{E}\big(|\mu_A-\mathbb{E}\mu_A|^2\big)=\mathbb{E}\mu_A^2-(\mathbb{E}\mu_A)^2\\
=&\frac 1 {N^2 (N+1)}\Big(N \cdot \sum_{E}\sum_{a, b=1}^{d(E)} A_{E,a;E,b} A_{E,b;E,a}-\sum_{E_1,E_2} \sum_{a=1}^{d(E_1)}\sum_{b=1}^{d(E_2)} A_{E_1,a;E_1,a} A_{E_2,b;E_2,b}\Big)\\
&=\frac {\sum_E \text{Tr}_{E-\text{subspace}} \hat A^2} {N(N+1)}-\frac {\big(\text{Tr}_{\mathcal{H}(N)}\hat A\big)^2} {N^2(N+1)}
\end{aligned}$$

{{</fold>}}

The mean of time-mean is the same as the statical case. And is consistent with the equal-priori principle. If the variance of it has the limit zero (as \(N\rightarrow \infty\)), one can say that: there is an overwhelming large probability to find a state whose time-mean is equal to the prediction of equal-priori principle, or the statistical mechanics' prediction.

_[Theorem]_ : The mean and variance of random variable \(\sigma_A^2\) are:

$$\mathbb{E}\sigma_A^2 = \text{Var}(\sigma_A^2)=0$$

{{<fold "Proof">}}

First, compute the mean of \(\sigma_A\):

$$\begin{aligned}
\mathbb{E}(\sigma_A^2+\mu_A^2) &= \sum_{E_1-E_1'+E_2-E_2'=0} \sum_{a_1,a_1';a_2,a_2'} A_{E_1,a_1;E_1',a_1'} A_{E_2,a_2;E_2',a_2'}\mathbb{E}(c_{E_1',a_1'}c_{E_1,a_1}^*c_{E_2',a_2'}c_{E_2,a_2}^*)
\end{aligned}$$

Let us consider the generic four-point-function, with the theorem about the spherical mean and Gaussian integral(see Appendix), we have:

$$\begin{aligned}
G(1',1,2',2)&=\mathbb{E}(c_{E_1',a_1'}c_{E_1,a_1}^*c_{E_2',a_2'}c_{E_2,a_2}^*)\\
&=\frac {\Gamma(N)} {\Gamma(N+2)} \partial_{w_{1'}^*}\partial_{w_{1}}\partial_{w_{2'}^*}\partial_{w_2} e^{\bm{w}^\dagger \bm{w}} \Bigg|_{\bm{w}=0} \\
&=\frac 1 {N(N+1)}\Big(\delta_{(E_1',a_1'),(E_2,a_2)}\delta_{(E_2',a_2'),(E_1,a_1)}+\delta_{(E_1',a_1'),(E_1,a_1)}\delta_{(E_2',a_2'),(E_2,a_2)}\Big)\\
&=\frac 1 {N(N+1)}\Big(\delta_{E_1',E_2}\delta_{a_1',a_2}\delta_{E_2',E_1}\delta_{a_2',a_1}+\delta_{E_1',E_1}\delta_{a_1',a_1}\delta_{E_2',E_2}\delta_{a_2',a_2}\Big)\\
\end{aligned}$$

Then:

$$\begin{aligned}
\mathbb{E}(\sigma_A^2+\mu_A^2) &= \sum_{E_1-E_1'+E_2-E_2'=0} \sum_{a_1,a_1';a_2,a_2'} \frac {A_{E_1,a_1;E_1',a_1'} A_{E_2,a_2;E_2',a_2'}} {N(N+1)}\delta_{E_1',E_2}\delta_{a_1',a_2}\delta_{E_2',E_1}\delta_{a_2',a_1} \\
&\indent +\sum_{E_1-E_1'+E_2-E_2'=0} \sum_{a_1,a_1';a_2,a_2'} \frac {A_{E_1,a_1;E_1',a_1'} A_{E_2,a_2;E_2',a_2'}} {N(N+1)}\delta_{E_1',E_1}\delta_{a_1',a_1}\delta_{E_2',E_2}\delta_{a_2',a_2}\\
&=\sum_{E,E'} \sum_{a,a'}\frac {A_{E,a;E',a'} A_{E',a';E,a}} {N(N+1)}+\sum_{E,E'}\sum_{a,b} \frac {A_{E,a;E,a} A_{E',b;E',b}} {N(N+1)}\\
&=\frac {\text{Tr}_{\mathcal{H}(N)} \hat A^2} {N(N+1)} + \frac {\big(\text{Tr}_{\mathcal{H}(N)}\hat A\big)^2} {N(N+1)}
\end{aligned}$$

Then:

$$\begin{aligned}
\mathbb{E}\sigma_A^2&=\frac 1 {N(N+1)}\Big\{\text{Tr}_{\mathcal{H}(N)} \hat A^2 - \sum_E \text{Tr}_{E-\text{subspace}}\hat A^2\Big\}\\
&=\frac 1 {N(N+1)}\Big\{\sum_{E}\sum_{a}\bra{E,a}\hat A^2\ket{E,a}-\sum_E\sum_{a,a'}\bra{E,a}\hat A\ket{E,a'}\bra{E,a'}\hat A\ket{E,a}\Big\} \\
&= \frac 1 {N(N+1)}\text{Tr}_{\mathcal{H}(N)}\Big(\hat A^2-\hat A\hat P_E\hat A\Big)
\end{aligned}$$

{{</fold>}}

## Relaxation of Entropy

Consider the entropy for pure state, obviously it is dependent of the basis we choose. But we have a special model to describe its relaxation.

Let the initial state is \(\ket{\psi(t=0)}\) , then with the notation \(\ket{\psi(t=0)}^{\bot}\) denoting those \(N-1\) orthonormal states which orthogonal to the \(\ket{\psi(t=0)}\) , or its `Orthogonal complement`. Then we have:

$$S(\ket{\psi(t)},\{\ket{\psi(t=0)},\ket{\psi(t=0)}^{\bot}\})\Big|_{t=0}=0$$

But the left-hand-side of the equality above is a random variable which is dependent of the choice of those \(N-1\) orthogonal complement, or it is generated by the \(U(N-1)\) group. We define the "entropy" of the system as a function of initial state and time is the mean of this random variable \(S(\ket{\psi(t)},\{\ket{\psi(t=0)},\ket{\psi(t=0)}^{\bot}\})\) over all possible orthonormal complements. And this induces the following theorem:

_[Theorem]_ : The entropy defined by the model above is a function of initial state \(\ket{\psi}\) and time \(t\) is:

$$S(t,\ket{\psi}):=\mathbb{E}_{\{\ket{\psi}^\bot\}}\Big(S\big(\hat U(t)\ket{\psi},\{\ket{\psi},\ket{\psi}^\bot\}\big)\Big)=(\Psi(N)-\Psi(2))\big(1-P(t)\big)-f(P(t))$$

Where \(P(t)=|\bra{\psi}\hat U(t)\ket{\psi}|^2\) is so called as `survival probability` , it is a quantity in \([0,1]\) . And \(f(x)=x\log x+(1-x)\log (1-x)\).

{{<fold "Proof">}}

Let \(\{\ket{\psi}^\bot\}=\{\ket{\phi_1},\cdots,\ket{\phi_{N-1}}\}\) , then we have the expansion of \(\ket{\psi(t)}=\hat U(t)\ket{\psi(t)}\):

$$\ket{\psi(t)}=\ket{\psi}\bra{\psi}\psi(t)\rangle + \sum_{j=1}^{N-1} \ket{\phi_j} x_j$$

Where the normalization condition is \(\sum_{j=1}^{N-1} |x_j|^2=1-|\bra{\psi}\psi(t)\rangle|^2=1-P(t)\). And the average on \(\{\phi_j\}\) is the same as average on the \(N-1\) complex sphere of \(\{x_j\}\). With:

$$\begin{aligned}
S\big(\hat U(t)\ket{\psi},\{\ket{\psi},\ket{\psi}^\bot\}\big)&=-P(t)\log P(t)-\sum_{j=1}^{N-1} |x_j|^2 \log |x_j|^2 \\
&=-P(t)\log P(t) - (1-P(t)) \sum_{j=1}^{N-1} \frac {|x_j|^2} {1-P(t)} \log \frac {|x_j|^2} {1-P(t)}\\
&\indent - (1-P(t))\log (1-P(t)) \\
&= -f(P(t)) + (1-P(t)) S^{(N-1)}(y)
\end{aligned}$$

Where \((N-1)\)-random vector \(y\) is uniformly distributed on the \(N-1\) unit complex sphere. So we have:

$$S(t,\ket{\psi}):=\mathbb{E}_{\{\ket{\psi}^\bot\}}\Big(S\big(\hat U(t)\ket{\psi},\{\ket{\psi},\ket{\psi}^\bot\}\big)\Big)=-f(P(t))+(1-P(t))\mathbb{E}S^{N-1}(y)$$

q.e.d.

{{</fold>}}

Then \(f(P(t))\sim\mathcal{O}(1)\) , which means when the dimension of Hilbert space \(N\) is sufficient large, we can simply approximate the function as:

$$S(t,\ket{\psi})\approx S_{\text{eq}}\big(1-P(t)\big)$$

Where \(S_{\text{eq}}\) is the entropy of equilibrium state, which is

$$S_{\text{eq}}=\Psi(N+1)-\Psi(2)\sim \log N-1+\gamma$$

Then the entropy looks like the expected value of an initial-state-dependent observable:

$$S(t,\ket{\psi})=\bra{\psi(t)}\Big(S_{\text{eq}}(1-\ket{\psi}\bra{\psi})\Big)\ket{\psi(t)}$$

Using the energy-eigenbasis, we have the entropy as a function of time and energy amplitude:

$$S(t,\ket{\psi})\equiv S(t,\{c_{E,a}\})=S_{\text{eq}}\Big(1-\sum_{E,E'}\sum_{a,a'}|c_{E,a}|^2|c_{E',a'}|^2 e^{-\ti(E-E')t}\Big)$$

Without loss of generality, we consider the `relative error of entropy`:

$$s(t,\ket{\psi}):=\frac {S_{\text{eq}}-S(t,\ket{\psi})} {S_{\text{eq}}}=\sum_{E,E'}\sum_{a,a'}|c_{E,a}|^2|c_{E',a'}|^2 e^{-\ti(E-E')t}$$

below.

_[Theorem]_ : The time-mean and time-variance of \(s(t,\ket{\psi})\), as the function of random vector \(\ket{\psi}\sim\{c_{E,a}\}\), is:

$$\begin{aligned}
\mu_s(\{c_{E,a}\}) &= \sum_E p(E)^2 \\
\sigma_s^2(\{c_{E,a}\})+\mu_s^2&=\sum_{E_1-E_1'=E_2-E_2'} p(E_1)p(E_1')p(E_2)p(E_2')
\end{aligned}$$

Where \(p(E)=\sum_{a=1}^{d(E)} |c_{E,a}|^2\) is the probability of initial state is in the \(E\)-subspace.

{{<fold "Proof">}}
The time-mean is easily to be obtained with the definition of time-statistic. And the variance is:

$$\begin{aligned}
\sigma_s^2+\mu_s^2 &=  \lim_{T\rightarrow \infty}\frac 1 T \int_0^T s(t,\ket{\psi})^2 \td t \\
&= \lim_{T\rightarrow \infty}\frac 1 T \int_0^T \td t \ e^{-\ti (E_1-E_1')t+\ti(E_2-E_2')t} \\
&\indent \cdot \sum_{E_1,E_1',E_2,E_2'}\sum_{a_1,a_1';a_2,a_2'} |c_{E_1,a_1}|^2 |c_{E_1',a_1'}|^2 |c_{E_2,a_2}|^2 |c_{E_2',a_2'}|^2 \\
&= \sum_{E_1-E_1'=E_2-E_2'} \sum_{a_1,a_1';a_2,a_2'} |c_{E_1,a_1}|^2 |c_{E_1',a_1'}|^2 |c_{E_2,a_2}|^2 |c_{E_2',a_2'}|^2
\end{aligned}$$

q.e.d.

{{</fold>}}

_[Theorem]_ : The mean and variance of random variable \(\mu_s\) are:

$$\begin{aligned}
\mathbb{E}\mu_s &= \\
\mathbb{E}\big(|\mu_s-\mathbb{E}\mu_s|^2\big) &=
\end{aligned}$$

{{<fold "Proof">}}

To compute the \(\mathbb{E}(p(E)^2)\) we need the 4-point function:

$$\begin{aligned}
G(1',1,2',2)&=\mathbb{E}(c_{E_1',a_1'}c_{E_1,a_1}^*c_{E_2',a_2'}c_{E_2,a_2}^*)\\
&=\frac 1 {N(N+1)}\Big(\delta_{E_1',E_2}\delta_{a_1',a_2}\delta_{E_2',E_1}\delta_{a_2',a_1}+\delta_{E_1',E_1}\delta_{a_1',a_1}\delta_{E_2',E_2}\delta_{a_2',a_2}\Big)\\
\end{aligned}$$

And

$$\begin{aligned}
\mathbb{E}(p(E)^2)&=\sum_{a,a'} \mathbb{E} (c_{E,a} c_{E,a}^* c_{E,a'} c_{E,a'}^*) \\
&= \frac 1 {N(N+1)} \sum_{a,a'}\Big(\delta_{a,a'}\delta_{a',a}+\delta_{a,a}\delta_{a',a'}\Big) \\
&= \frac 1 {N(N+1)}\sum_{a,a'=1}^{d(E)} (1+\delta_{a,a'}) \\
&= \frac {d(E)^2+d(E)} {N(N+1)}
\end{aligned}$$

Then with that \(\sum_E d(E)=N\), we have:

$$\mathbb{E}\mu_s=\frac {\sum_E d(E)^2} {N(N+1)}+ \frac 1 {N+1}$$

Then we need to compute:

$$\mathbb{E}\mu_s^2=\sum_{E,E'} \mathbb{E}(p(E)^2 p(E')^2)$$

We can begin with the generic 8-point function:

$$\begin{aligned}
G(x_1,x_1',\cdots,x_4,x_4') &= \mathbb{E}(z_{x_1}z_{x_1'}^*\cdots z_{x_4}z_{x_4'}^*) \\
&= \frac {\Gamma(N)} {\Gamma(N+4)} \sum_{\sigma\in S_4} \delta_{x_1,\sigma(x_1')}\delta_{x_2,\sigma(x_2')}\delta_{x_3,\sigma(x_3')}\delta_{x_4,\sigma(x_4')}
\end{aligned}$$

Then:

$$\begin{aligned}
\mathbb{E}(|c_{E_1,a_1}|^2|c_{E_2,a_2}|^2|c_{E_3,a_3}|^2|c_{E_4,a_4}|^2)&= G(x_1,x_1'=x_1,\cdots,x_4,x_4'=x_4) \\
&=\frac {\Gamma(N)} {\Gamma(N+4)} \sum_{\sigma\in S_4} \prod_{i=1}^4 \delta_{x_i,\sigma(x_i)} \\
&= \frac {\Gamma(N)} {\Gamma(N+4)} \sum_{\sigma\in S_4} \prod_{i=1}^4 \delta_{E_i,\sigma(E_i)}\delta_{a_i,\sigma(a_i)} \\
\end{aligned}$$

If we sum all indices \(a\) , then with the fact that \(\delta_{a_i,\sigma(a_i)}\) always appears with \(\delta_{E_i,\sigma(E_i)}\) , which means we do not need to worry if the summation will be out of range. So we have the energy-occupation 4-point function:

$$\begin{aligned}
& \mathbb{E}(p(E_1)p(E_2)p(E_3)p(E_4))=\frac {\Gamma(N)} {\Gamma(N+4)}\sum_{\sigma\in S_4}\prod_{i=1}^4 \delta_{E_i,\sigma(E_i)}\sum_{a_1,a_2,a_3,a_4}\prod_{i=1}^4 \delta_{a_i,\sigma(a_i)} \\
=&\frac {\Gamma(N)} {\Gamma(N+4)} \Big(d_1d_2d_3d_4+d_1d_2d_3(\delta_{34}+\delta_{24}+\delta_{14})+d_2d_3d_4(\delta_{12}+\delta_{13})+d_1d_2d_4\delta_{23} \\
&\indent + 2(d_1d_2 \delta_{234}+d_2d_3 \delta_{134}+d_3d_4 \delta_{124} + d_4d_1\delta_{123}) + d_1d_3\delta_{12}\delta_{34}+d_1d_2\delta_{13}\delta_{24}\\
&\indent + d_1 d_2\delta_{14}\delta_{23} + 6 d_1 \delta_{1234} \Big)
\end{aligned}$$

Where \(\delta_{ij}=\delta_{E_i,E_j} \ ; \ \delta_{ijk}=\delta_{E_i,E_j}\delta_{E_j,E_k} \ ; \ \delta_{ijkl}=\delta_{E_i,E_j}\delta_{E_j,E_k}\delta_{E_k,E_l}\) , and \(!n\) is derangement of \(n\) .

Then:

$$\begin{aligned}
\sum_{E,E'}\mathbb{E}(p(E)^2p(E')^2)&=\sum_{E_1,E_2,E_3,E_4}\mathbb{E}(p(E_1)p(E_2)p(E_3)p(E_4))\delta_{E_1,E_2}\delta_{E_3,E_4}\\
&=\frac {\Gamma(N)} {\Gamma(N+4)}\Big(\sum_{E,E'}\big(d(E)^2d(E')^2+d(E)^2d(E')+d(E)d(E')^2\\
&\indent +d(E)d(E')\big)+\sum_E \big(4d(E)^3+8d(E)^2+2d(E)^2+6 d(E)\big)\Big)\\
&=\frac {\Gamma(N)} {\Gamma(N+4)}\Big((\sum_E d(E)^2)^2+(2N+10) \sum_E d(E)^2+4\sum_E d(E)^3\\
&\indent +6 N+N^2\Big)
\end{aligned}$$

Then:

$$\begin{aligned}
\mathbb{E}\big(|\mu_s-\mathbb{E}\mu_s|^2\big)&=\mathbb{E}(\mu_s^2)-\big(\mathbb{E}\mu_s\big)^2\\
&=\frac {D_2^2+2(N+5)D_2+4D_3+6D_1+D_1^2} {N(N+1)(N+2)(N+3)} - \frac {(D_1+D_2)^2} {N^2(N+1)^2}\\
\end{aligned}$$

Where we define:

$$D_n=\sum_E d(E)^n$$

Obviously that \(D_{n-1} \leq D_n\leq N^n\). And \(D_1=N\).

When \(D_n=N^n\) , that means the energy levels are full-degeneracy, then the variance is zero, this result is trivial. But if \(D_n=N\) , that means the energy levels are non-degeneracy, then:

$$\mathbb{E}\big(|\mu_s-\mathbb{E}\mu_s|^2\big)\sim \frac 4 {N^3}$$

{{</fold>}}

# Density Matrix of Sub-system

# Appendix

## Convergence of Random Variables

-  **Convergence in distribution**

    _[Definition]_ : A sequence \(\{X_n\}\) of `real-valued` random variables is said to `converge in distribution`, or `converge weakly`, or `converge in law` to a random variable \(X\) , if:

    $$\lim_{n\rightarrow \infty} F_n(x)=F(x)$$

    Where \(F_n(x)=\mathbb{P}(X_n\leq x)\) and \(F(x)=\mathbb{P}(X\leq x)\) is the `cumulative distribution functions` of \(X_n\) and \(X\) respectively. Denote as:

    $$X_n\rightarrow_d X$$

-  **Convergence in probability**

    _[Definition]_ : A sequence \(\{X_n\}\) of random variables is said to `converge in probability` towards the random variable \(X\) if for all \(\epsilon>0\)

    $$\lim_{n\rightarrow \infty} \mathbb{P}(|X_n-X|\gt \epsilon) =0$$

    Denote as:

    $$X_n\rightarrow_p X$$

-  **Almost sure convergence**

    _[Definition]_ : A sequence \(\{X_n\}\) of random variables (respect to the same probability space \((\Omega,\mathcal{F},\mathbb{P})\) is said to converges `almost surely` , or `almost everywhere` or `with probability `, or `strongly` towards \(X\) means that:

    $$\mathbb{P}\Big(\{\omega\in \Omega:\lim_{n\rightarrow \infty} X_n(\omega)=X(\omega)\}\Big)=1$$

    Denote as:

    $$X_n\rightarrow_{a.s.} X$$

-  **Convergence in mean**

    _[Definition]_ : Given a `real number` \(r\geq 1\) , the sequence \(\{X_n\}\) of random variables is said to `converge in the r-th mean` towards the random variable \(X\) , if the \(r\)-th `absolute moments` \(\mathbb{E}(|X_n|^r) \ , \ \mathbb{E}(|X|^r)\) of \(X_n,X\) exist, and:

    $$\lim_{n\rightarrow \infty} \mathbb{E}\Big(|X_n-X|^r\Big)=0$$

    Denote as:

    $$X_n \rightarrow_{L^r} X$$

-  **Properties**

    1.  The relationship among those three convergence is:

        $$\rightarrow_{a.s.} \ \Rightarrow \ \rightarrow_{p} \ \Rightarrow \ \rightarrow_{d}$$

    2.  The relationship among convergence in mean and convergence in probability is:

        $$\rightarrow_{L^s} \ \Rightarrow_{s\gt r\geq 1} \ \rightarrow_{L^r} \ \Rightarrow \ \rightarrow_{p}$$

## Spherical Mean

Usually we need to compute the means of some quantities respect to the uniformly distribution on a \(N\)-dimensional Complex sphere:

$$\mathcal{H}_N=\{(z_1,z_2,\cdots,z_N)\in \mathbb{C}^N : \sum_{i=1}^N |z_i|^2=1 \}\sim S^{2N}$$

Where \(S^{2N-1}\) is the real-sphere in real-Euclid space. In fact, \(\mathcal{H}_N\) is the \(N\)-dimensional Hilbert space with the basis fixed.

_[Theorem]_ : [[Baker 1997][1]] Suppose \(0\leq a\lt b\) and a \(n\)-ball: \(B^n(a,b)=\{x\in \mathbb{R}^n \ : \ a\leq |x|\leq b\}\) . The real valued function \(f: B^n(a,b)\rightarrow \mathbb{R}\) is continuous, then one has:

$$\int_{B^n(a,b)} f(x)\td x=\int_a^b r^{n-1}\Big(\int_{S^{n-1}} f(rs)\td \sigma_{n-1}(s)\Big)\td r$$

Where \(S^{n-1}=\{x\in\mathbb{R}^n:\sum_{i=1}^n x_i^2=1\}\) is the real \(n\)-sphere, and integral with measure \(\td \sigma_{n-1}\) is ordinary integral over sphere.

_[Theorem]_ : `Generic result for real-sphere`. For given \(\{n_j\}_{j=1}^m\) with \(\sum_{j=1}^m n_j=n\) , and \(\alpha_1,\cdots,\alpha_m\in \mathbb{R}_+\). One has:

$$\Big\langle \big(\sum_{i=1}^{n_1} x_{i}^2\big)^{\alpha_1}\cdots\big(\sum_{i=n_1+\cdots+n_{m-1}+1}^{n} x_{i}^2\big)^{\alpha_m}\Big\rangle_{S^{n-1}} = \frac {\Gamma(\frac n 2)\Gamma(\alpha_1+\frac {n_1}2)\cdots \Gamma(\alpha_m+\frac {n_m} 2)} {\Gamma(\frac {n_1} 2)\cdots \Gamma(\frac {n_m} 2)\Gamma(\alpha+\frac {n} 2)} $$

Where \(\langle F\rangle_{S^{n-1}}\equiv \frac {\int_{S^{n-1}}F \td \sigma_{n-1}}{ \int_{S^{n-1}}\td \sigma_{n-1}}\)

{{<fold "Proof">}}

With the Baker's theorem, one can prove a corollary, which connects the integral in unit ball and sphere of a homogeneous function of degree \(\rho\): \(f(kx)=k^\rho f(x)\).

$$\int_{B^n} f(x)\td x = \frac 1 {\rho+n} \int_{S^{n-1}} f(s)\td \sigma_{n-1}(s)$$

Let \(T_k=\sum_{i=n_1+\cdots+n_{k-1}+1}^{n_1+\cdots+n_{k-1}+n_k} x_i^2\) , and \(T_1=\sum_{i=1}^{n_1} x_i^2\) . Then we have that \(\sum_{k=1}^m T_k=1\) . The quantity we need to compute is \(\langle T_1^{\alpha_1} T_2^{\alpha_2}\cdots T_m^{\alpha_m}\rangle_{S^{n-1}}\) . And \(F(x)=T_1^{\alpha_1} T_2^{\alpha_2}\cdots T_m^{\alpha_m}\) is a homogeneous function of degree \(2\alpha\equiv 2\sum_{i=1}^m \alpha_i\) . Then one have:

$$\begin{aligned}
\int_{S^{n-1}} F(s)\td \sigma_{n-1}(s) &= (2\alpha+n)\int_{B^n} F(x)\td x \\
&= (2\alpha+n) \int_{B^{n-n_m}} T_1^{\alpha_1}\cdots T_{m-1}^{\alpha_{m-1}} \td^{n-n_m}x \int_{B^{n_m}(0,\sqrt{1-\sum_{i=1}^{n-n_m} x_i^2)}} T_m^{\alpha_m}\td^{n_m}x \\
&= (2\alpha+n) \int_{B^{n-n_m}} T_1^{\alpha_1}\cdots T_{m-1}^{\alpha_{m-1}} \td^{n-n_m}x \\
&\indent \cdot \int_0^{\sqrt{1-\sum_{i=1}^{n-n_m}x_i^2}} r^{n_m-1}\Big(r^{2\alpha_m} \int_{S^{n_m-1}} T_m^{\alpha_m}\td\sigma_{n_m-1} \Big)\td r \\
&= (2\alpha+n) \int_{B^{n-n_m}} T_1^{\alpha_1}\cdots T_{m-1}^{\alpha_{m-1}} \td^{n-n_m}x \cdot \frac {(1-\sum_{i=1}^{n-n_m} x_i^2)^{\alpha_m+n_m/2}} {2\alpha_m+n_m}\\
&\indent \cdot \int_{S^{n_m-1}} T_m^{\alpha_m}\td\sigma_{n_m-1}  \\
&=(2\alpha+n)\int_0^1 r^{n-n_m-1} \Big(\int_{S^{n-n_m-1}}r^{2\alpha_1+\cdots+2\alpha_{m-1}}T_1^{\alpha_1}(s)\cdots T_{m-1}^{\alpha_{m-1}}(s)\\
&\indent \cdot \frac {(1-r^2\sum_{i=1}^{n-n_m}s_i^2)^{\alpha_m+n_m/2}} {2\alpha_m+n_m}\td \sigma_{n-n_m-1}(s)\Big)\td r \int_{S^{n_m-1}} T_m^{\alpha_m}\td \sigma_{n_m-1} \\
&=\frac {2\alpha+n} {2\alpha_m+n_m} \int_0^1 r^{n-n_m-1+2\alpha_1+\cdots+2\alpha_{m-1}}(1-r^2)^{\alpha_m+n_m/2} \td r \\
&\indent \cdot \int_{S^{n-n_m-1}} T_1^{\alpha_1}\cdots T_{m-1}^{\alpha_{m-1}} \td \sigma_{n-n_m-1} \int_{S^{n_m-1}} T_m^{\alpha_m}\td \sigma_{n_m-1}\\
&= \frac {2\alpha+n} {2\alpha_m+n_m} \frac {\Gamma(\alpha_1+\alpha_2+\cdots+\alpha_{m-1}+\frac {n-n_m} 2)\Gamma(\alpha_m+\frac {n_m} 2+1)} {2(\alpha+n/2)\Gamma(\alpha+\frac {n} 2)} \\
&\indent \cdot \int_{S^{n-n_m-1}} T_1^{\alpha_1}\cdots T_{m-1}^{\alpha_{m-1}} \td \sigma_{n-n_m-1} \int_{S^{n_m-1}} T_m^{\alpha_m}\td \sigma_{n_m-1}
\end{aligned}$$

Where we used \(\sum s_i^2=1\) in the penultimate equality. With the property of: \(\int_{S^{n-1}} (\sum_{i=1}^n x_i^2)^{\alpha_m} \td \sigma_{n-1}=\int_{S^{n-1}} \td \sigma_{n-1}\), one can use this recursively and obtain:

$$\begin{aligned}
\int_{S^{n-1}} T_1^{\alpha_1}T_2^{\alpha_2}\cdots T_m^{\alpha_m}\td \sigma_{n-1}&=\frac {\Gamma(\alpha_1+\cdots+\alpha_{m-1}+\frac {n-n_m} 2)\Gamma(\alpha_m+\frac {n_m} 2+1)} {(2\alpha_m+n_m)\Gamma(\alpha+\frac n 2)}\\
&\indent \cdot \int_{S^{n-n_m-1}}T_1^{\alpha_1}\cdots T_{m-1}^{\alpha_{m-1}}\td \sigma_{n-n_m-1} \int_{S^{n_m-1}} \td \sigma_{n_m-1} \\
&= \frac {\Gamma(\alpha_1+\frac {n_1} 2 )\Gamma(\alpha_2 + \frac {n_2} 2 ) \cdots \Gamma(\alpha_m +\frac {n_m} 2 )} {2^{m-1}\Gamma(\alpha+\frac n 2)} \prod_{j=1}^m \int_{S^{n_j-1}}\td \sigma_{n_j-1}
\end{aligned}$$

With the surface area of \(S^{n-1}\) :

$$\int_{S^{n-1}}\td \sigma_{n-1}=\frac {2\pi^{n/2}} {\Gamma(n/2)}$$

We have:

$$\Big\langle \big(\sum_{i=1}^{n_1} x_{i}^2\big)^{\alpha_1}\cdots\big(\sum_{i=n_1+\cdots+n_{m-1}+1}^{n} x_{i}^2\big)^{\alpha_m}\Big\rangle_{S^{n-1}} = \frac {\Gamma(\frac n 2)\Gamma(\alpha_1+\frac {n_1}2)\cdots \Gamma(\alpha_m+\frac {n_m} 2)} {\Gamma(\frac {n_1} 2)\cdots \Gamma(\frac {n_m} 2)\Gamma(\alpha+\frac {n} 2)} $$

{{</fold>}}

_[Corollary 1]_ : For the mean of monomial on complex sphere \(\mathcal{H}_{N}\) , is similar to that \(n_i=2\) and \(n=2N\) real sphere:

$$\Big\langle |z_1|^{2\alpha_1}\cdots |z_N|^{2\alpha_N}\Big\rangle_{\mathcal{H}_N}=\frac {\Gamma(N)\Gamma(\alpha_1+1)\Gamma(\alpha_2+1)\cdots \Gamma(\alpha_N+1)} {\Gamma(\alpha_1+\cdots +\alpha_N+N)}$$

_[Corollary 2]_ : For the \(n_i=2m\) situation, which can be used in the discussion of sub-system, one has:

$$\Big\langle\prod_{k=1}^n\big(\sum_{i=1}^m |z_{i+(k-1)m}|^2\big)^{\alpha_k}\Big\rangle_{\mathcal{H}_{nm}}=\frac {\Gamma(mn)\Gamma(\alpha_1+m)\cdots \Gamma(\alpha_n+m)} {\Gamma(m)^n \Gamma(\alpha_1+\cdots+\alpha_n + nm)}$$

_[Theorem]_ : `multi-point correlation function computing` If function \(f:\mathbb{R}^n\rightarrow \mathbb{R}\) is a homogeneous function of degree \(\alpha\) , that is to say \(f(rx)=r^\alpha f(x)\). Then with the Baker's theorem we have its spherical mean is:

$$\langle f\rangle = \frac {\int e^{-\sum_i x_i^2} f(x)\td^n x } {\int_{S^{n-1}}\td \sigma_{n-1}\int_0^{\infty} e^{-r^2} r^{n-1+\alpha}\td r }= \frac {\Gamma(\frac n 2)\int e^{-\sum_i x_i^2} f(x)\td^n x } {\pi^{n/2}\Gamma(\frac {n+\alpha} 2)}$$

{{<fold "Proof">}}

It can be easily proven by substituting \(\exp(-\sum_i x_i^2)f\) into Baker's theorem. We have:

$$\begin{aligned}
\int e^{-\sum_i x_i^2} f(x)\td^n x&=\int_0^{\infty} r^{n-1}\td r \Big(\int_{S^{n-1}} e^{-\sum_i (rs_i)^2} f(rs)\td \sigma_{n-1}(s)\Big) \\
&=\int_0^{\infty} e^{-r^2} r^{\alpha+n-1} \td r \int_{S^{n-1}} f(s)\td \sigma_{n-1}(s) \\
&=\frac 1 2 \int_0^{\infty} e^{-u} u^{\frac {\alpha+n} 2 -1} \td u \langle f\rangle \int_{S^{n-1}} \td \sigma_{n-1} \\
&=\frac {\pi^{n/2}} {\Gamma(n/2)} \Gamma(\frac {\alpha+n} 2) \langle f\rangle
\end{aligned}$$

q.e.d.

{{</fold>}}

_[Corollary 1]_ : `Generic multi-point correlation function on complex sphere` \(\mathcal{H}_N\) .

$$\Big\langle \prod_{j=1}^{n}z_{i_j}^{\alpha_j}z_{i_j}^{*\beta_j}\Big\rangle_{\mathcal{H}_N}=\frac {\Gamma(N)} {\Gamma\big(N+(\sum_j \alpha_j+\beta_j)/2\big)}\prod_{j=1}^n\partial_{w_{i_j}}^{\beta_j}\partial_{w_{i_j}^*}^{\alpha_j} \exp\big(\sum_{i=1}^N w_i w_i^*\big)\Bigg|_{\bm{w}=0}$$

{{<fold "Proof">}}

It can be handled in \(2N\)-real sphere, then function \(f\):

$$f(x)=\prod_{j=1}^n (x_{i_j,r}+\ti x_{i_j,i})^{\alpha_j} (x_{i_j,r}-\ti x_{i_j,i})^{\beta_j} $$

is a homogeneous function of degree \(g=\sum_j \alpha_j+\beta_j\). Then with the theorem above:

$$\begin{aligned}
\big\langle f(x)\big\rangle_{\mathcal{H}_N} &= \frac {\Gamma(N)} {\pi^{N}\Gamma(N+g/2)}\int e^{-\sum_i x_{i,r}^2+x_{i,i}^2} f(x) \td^{2N} x \\
&= \frac {\Gamma(N)} {\pi^{N}\Gamma(N+g/2)} \prod_{j=1}^n\partial_{w_{i_j}}^{\beta_j}\partial_{w_{i_j}^*}^{\alpha_j} \int \exp\Big(-\sum_i \big(x_{i,r}^2 +x_{i,i}^2-w_i^* z_i-w_i z_i^*\big)\Big)\td^{2N}x\Bigg|_{\bm{w}=0} \\
&=\frac {\Gamma(N)} {\Gamma(N+g/2)}\prod_{j=1}^n\partial_{w_{i_j}}^{\beta_j}\partial_{w_{i_j}^*}^{\alpha_j} \int \exp\Big(-\bm{z}^\dagger \bm{z} +\bm{w}^\dagger \bm{z}+\bm{w}\bm{z}^\dagger\big)\Big)\prod_i \frac {\td \text{Re}z_i \td \text{Im}z_i} {\pi}\Bigg|_{\bm{w}=0} \\
&=\frac {\Gamma(N)} {\Gamma(N+g/2)}\prod_{j=1}^n\partial_{w_{i_j}}^{\beta_j}\partial_{w_{i_j}^*}^{\alpha_j} \exp\Big(\bm{w}^\dagger\bm{w}\Big) \Bigg|_{\bm{w}=0}
\end{aligned}$$

Where the gaussian integral can be easily checked.

{{</fold>}}

_[Corollary 2]_ : `A special case of multi-point function on complex sphere` \(\mathcal{H}_N\) . The special case means that all indices are \(1\), and the number of normal complex variables is equal to that of their conjugations:

$$\begin{aligned}
\Big\langle \prod_{j=1}^n z_{p_j} z_{q_j}^* \Big\rangle_{\mathcal{H}_N} = \frac {\Gamma(N)} {\Gamma(N+n)} \sum_{\sigma \in S_n} \prod_{j=1}^n \delta_{p_j,\sigma(q_j)}
\end{aligned}$$

Where \(S_n\) is \(n\)-permutation group.

It can be easily proved with the corollary 1, and the fact that only when differentials fully act on monomial factor so the result is a constant products with the exponential function can the function be not zero.

And this is the only non-zero case of multi-point function, and the case of existing indices are not \(1\) can be easily get by let indices \(p_j,q_j\) can duplicate.

[1]:http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.383.9227&rep=rep1&type=pdf
[2]:https://arxiv.org/abs/1812.10020
