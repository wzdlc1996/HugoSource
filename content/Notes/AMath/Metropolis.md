---
title: "Metropolis Algorithm"
date: 2019-10-29T23:00:00+08:00
draft: true
tags: ["math"]
series: ["Applied-Mathematics"]
categories: ["Mathematics"]
toc: true
summary: "This is an introduction to Metropolis Algorithm, so-called Markov Chain Monte Carlo Method. We will begin with basic knowledge about Stochastic Process and Markov Chain, then we show how Metropolis works."
---

# Metropolis Algorithm

## Introduction to Stochastic Process

_[Definition]_ : A (real valued) **Stochastic Process** is a map: \(X: T\otimes \Omega \rightarrow \mathbb{R}\) , in which \(\Omega\) is sample space of probability space \((\Omega, \mathcal{F}, \mathbb{P})\) . And \(T\) is a subset of \(\mathbb{R}\) . Usually, we call the process is `discrete` if \(T = \mathbb{N}\), and if \(T = \mathbb{R}\) it is `Continuous`.

_[Definition]_ : **Filtration** is a "increasing" sigma algebra. i.e.: a set of sigma algebra indexed by elements of \(T\) : \(\{\mathcal{F}_t\}_{t\in T}\) , and \(s\lt t \Rightarrow \mathcal{F}_s \subset \mathcal{F}_t\)

_[Definition]_ : A **Filtrated Probability Space** is a probability space which is equipped with a Filtration \(\{\mathcal{F}_t\}_t\).

_[Definition]_ : A stochastic process is called **adapted to filtration** \(\{\mathcal{F}_t\}\) , if for all \(t\in T\) one has \(X_t\) is \(\mathcal{F}_t\)-measurable.

Filtration can be used to study the amount of information contained in a given stochastic process at time \(t\). The intuition of filtration is that as time passed, more and more information on \(X_t\) is known or available, which is captured in \(\{\mathcal{F}_t\}\), resulting a finer and finer partition of \(\Omega\).

## Markov Process

**Markov process** is one of the most important stochastic processes in application. Roughly speaking, A Markov process is independent of the past. In this post, we only consider the `finite state Markov chain`, i.e., the codomain of stochastic process at each time is a finite set.

According to the above introduction, the core property of a Markov process can be written as:

$$\mathbb{P}(X_{n+1} = i_{n+1}|\{X_m=i_m\}_{m=1}^n) = \mathbb{P}(X_{n+1}=i_{n+1}|X_n = i_n)$$

This property is also called `Markov property` or `Memoryless property` .

In the following discussion, without loss of generality(The general case can be realized by composing a value map: \(i\mapsto s_i\)) we let state set be \(S=\{1,\cdots,N\}\), i.e., \(X_n\)'s value should be in \(S\).

_[Definition]_ : For `finite state Markov chain` , one can define the **Transition Probabilities** :

$$p_{j,k}(n) = \mathbb{P}(X_{n+1}=k|X_n = j)$$

_[Theorem]_ : **Chapman-Kolmogorov equation** , for a Markov process, one has:

$$\mathbb{P}(X_n=j|X_0=i) = \sum_k \mathbb{P}(X_n=j | X_m = k)\mathbb{P}(X_m = k|X_0=i) \ ; \ 1\leq m \leq n-1 $$

{{% fold "Proof"%}}

According to the Markov property of \(X_n\) , one has:

$$\mathbb{P}(X_n=j |X_{n-1} = k, X_0 = i) = \mathbb{P}(X_n=j|X_{n-1}=k)$$

Then:

$$\begin{aligned}\mathbb{P}(X_n=j , X_{n-1}=k, X_0=i) &= \mathbb{P}(X_n=j|X_{n-1}=k, X_0=i) \mathbb{P}(X_{n-1}=k, X_0=i) \\
&= \mathbb{P}(X_n=j|X_{n-1}=k)\mathbb{P}(X_{n-1}=k|X_0=i)\mathbb{P}(X_0=i) \\
\Rightarrow \mathbb{P}(X_n=j|X_0=i) &= \frac {\sum_k \mathbb{P}(X_n=j,X_{n-1}=k,X_0=i)} {\mathbb{P}(X_0=i)} \\ &= \sum_k \mathbb{P}(X_{n}=j|X_{n-1}=k)\mathbb{P}(X_{n-1}=k|X_0=i)
\end{aligned}$$

Moreover, this property do not need the "condition" is \(X_0\) , one can change it into any \(X_l\) . So we have:

$$\forall n,l; \mathbb{P}(X_n=j|X_l=i) = \sum_k \mathbb{P}(X_n=j|X_{n-1}=k)\mathbb{P}(X_{n-1}=k|X_l=i)$$

Then, for \(n-2\) we have:

$$\begin{aligned}
\mathbb{P}(X_n=j|X_0=i) &= \sum_{k_1}\mathbb{P}(X_n=j|X_{n-1}=k_1)\sum_{k_2}\mathbb{P}(X_{n-1}=k_1|X_{n-2}=k_2)\mathbb{P}(X_{n-2}=k_2|X_0=i) \\
&= \sum_{k_2} \mathbb{P}(X_n=j|X_{n-2}=k_2)\mathbb{P}(X_{n-2}=k_2|X_0=i)
\end{aligned}$$

Where we used the fact that:

$$\sum_{k}\mathbb{P}(X_n=j|X_{n-1}=k)\mathbb{P}(X_{n-1}=k|X_{n-2}=k') = \mathbb{P}(X_{n}=j|X_{n-2}=k')$$

{{% /fold%}}

_[Definition]_ : A Markov chain is called **stationary** or **time-homogeneous** , if \(p_{j,k}(n)\) is independent of \(n\). From know on we will discuss only stationary Markov chain. And let \(\bm{P}\) be the matrix whose \((i,j)\)-th element is `transition probability` \(p_{i,j}\) , that is why \(\bm{P}\) is called the `Transition Probability Matrix`(TPM)

So with transition probabilities matrix and the Chapman-Kolmogorov equation, one have:

$$\mathbb{P}(X_n=j|X_{0}=i) = \big(\bm{P}^n\big)_{ij} \ ; \ \mathbb{P}(X_0=i_0,X_1=i_1,\cdots,X_n=i_n) = (\bm{\mu}_0)_{i_0}p_{i_0,i_1}\cdots p_{i_{n-1},i_n}$$

Where \(\bm{\mu}_0\) is the initial distribution, i.e. \((\bm{\mu}_0)_{l} = \mathbb{P}(X_0=l)\)

Then, given the initial distribution, one has the distribution of \(X_n\) as (The solution of Markov chain):

$$\bm{\mu}_n = \bm{\mu}_0 \bm{P}^n$$

Rewrite the Markov chain in recurrence form: \(\bm{\mu}_n = \bm{\mu}_{n-1}\bm{P}\) , the dynamics is:

$$(\bm{\mu}_n)_i = (\bm{\mu}_{n-1})_i (1-\sum_{j\neq i} p_{ji}) + \sum_{j\neq i} (\bm{\mu}_{n-1})_j p_{ji}$$

The equation can be interpreted as a diffusion process, it has probability of \(1-\sum_{j\neq i} p_{ji}\) to stay at \(i\) , and probability of \(p_{ji}\) to jump to \(j\) from \(i\).

_[Definition]_ : `Transition probability matrix` has the following special properties:

$$p_{ij} \geq 0 \ ; \ \sum_{j=1}^N p_{ij} = 1$$

Any matrix who has such property is called **Stochastic matrix**

## Perron-Frobenius Theorem

Now, the Markov process has been reduced into a matrix problem (the core is Transition probability matrix). Before continuing our discussion about Markov chain, let us show one of the most important result for nonnegative matrices: Perron-Frobenius Theorem

_[Definition]_ : A matrix \(\bm{P}\) is called **reducible** , if there exists a `permutation` matrix \(\bm{Q}\) such that:

$$\bm{Q}\bm{P}\bm{Q}^T = \begin{bmatrix}\bm{A}_1 & \bm{B} \\ \bm{0} & \bm{A}_2\end{bmatrix}$$

is a blocked-upper-triangular matrix. Otherwise \(\bm{P}\) is called **irreducible**

_[Definition]_ : A matrix \(\bm{P}\) is called **primitive**, if there exist an natural number \(s\) such that:

$$(\bm{P}^s)_{ij}\gt 0 \ ; \ \forall i,j$$

_[Remark]_ : We show the relation between `primitive` and `reducibility` in handwaving manner:

1.  A matrix is `primitive` then it must be `irreducible`. If it is reducible, then \(\bm{Q}\bm{P}^s\bm{Q}^{T}\) will always be block upper triangular, and \(\bm{Q}\) is permutation then \(\bm{P}\) should not be primitive.
2.  A matrix is `irreducible` and not `periodic`, i.e., there exists natural number \(s > 1\) such that \(\bm{P}^s = \bm{P}\), then it must be primitive.

_[Theorem]_ : **(Perron-Frobenius)** . Let \(\bm{A}\) be an `irreducible` nonnegative matrix, and let \(\rho(\bm{A})\) be its spectral radius: \(\rho(\bm{A}) = \max_\lambda |\lambda|\), where \(\lambda\) are eigenvalues of \(\bm{A}\). Then:
1.  There exists a positive `right` eigenvector \(\bm{x}\) of \(\bm{A}\), such that:

    $$\bm{A}\bm{x} = \rho(\bm{A})\bm{x}$$

    where every component of \(\bm{x}\) is positive.

2.  \(\lambda = \rho(\bm{A})\) is a simple eigenvalue. i.e., it is an eigenvalue of multiplicity 1, or eigen-subspace of \(\lambda=1\) has dimension of \(1\).

3.  Any other eigenvectors (except the \(\bm{x}\) in 1 with a positive factor) are not positive. i.e., every eigenvector has at least one negative or complex component.

There are much more contents of the Perron-Frobenius theorem. For further reading see:

1. [WikiPedia/Perron-Frobenius Theorem](https://en.wikipedia.org/wiki/Perron%E2%80%93Frobenius_theorem)
2. [Matrix Analysis/Chap.8](https://web.archive.org/web/20100307021652/http://www.matrixanalysis.com/Chapter8.pdf)

## Properties of Markov Chain

Now let us be back to the Markov chain.

_[Definition]_ : The **Invariant Distribution** of Markov chain of transition matrix \(\bm{P}\) is the solution of equation:

$$\bm{\pi} = \bm{\pi} \bm{P}$$

i.e., if \(\bm{\mu}_t = \bm{\pi}\) , then \(\bm{\mu}_{t+1} = \bm{\pi}\) . That is why \(\bm{\pi}\) is called `invariant`.

Note that matrix \(\bm{P}\) always has an eigenvalue of \(1\), because vector \(\bm{1} = (1,1,\cdots,1)^T\) is its right eigenvector of \(1\) (note \(\sum_{j} p_{ij} = 1\))

_[Theorem]_ : TPM of a Markov chain is \(\bm{P}\), then:

1.  If \(\bm{P}\) is `irreducible` , then there exists exactly one invariant distribution
2.  If \(\bm{P}\) is `reducible`, then there might be infinity many invariant distributions

{{% fold "Proof"%}}

First of all, let us consider the spectral radius of \(\bm{P}\) :

For arbitrary matrix \(\bm{A}\) , we have:

$$\rho(\bm{A}) \equiv \max_{\lambda} |\lambda| = \frac {\|\bm{A}\bm{x}\|} {\|\bm{x}\|}\Bigg|_{\bm{A}\bm{x} = \lambda_{\max}\bm{x}} \leq \sup_{\bm{x}\neq \bm{0}} \frac {\|\bm{A}\bm{x}\|} {\|\bm{x}\|} $$

Then consider the infinity norm of vector: \(\|\bm{x}\|_{\infty} = \max_i |x_i|\) we have:

$$\sup_{\bm{x}\neq \bm{0}} \frac {\|\bm{A}\bm{x}\|_{\infty}} {\|\bm{x}\|_{\infty}} = \sup_{\bm{x}\neq \bm{0}}\frac {\max_i |\sum_j A_{ij} x_j|} {\max_i |x_i|}\leq \sup_{\bm{x}\neq \bm{0}}\frac {\max_i \sum_j |A_{ij}| |x_j|} {\max_i |x_i|} = \max_i \sum_j |A_{ij}|$$

So we have for arbitrary matrix \(\bm{A}\), its spectral radius:

$$\rho(\bm{A})\leq \max_i \sum_j |A_{ij}|$$

For TPM \(\bm{P}\) , its elements are nonnegative, so:

$$\rho(\bm{P}) \leq \max_i \sum_j p_{ij} = 1$$

Note that \(1\in \text{spec}\bm{P}\) , then we have: \(\rho(\bm{P}) = 1\).

If \(\bm{P}\) is irreducible, according to the Perron-Frobenius theorem, \(\bm{P}^T\) has a unique right positive eigenvector \(\bm{v}\) of eigenvalue \(1\). So \(\bm{v}^T \bm{P} = \bm{v}^T\) . And if we normalize \(\bm{v}\) it would be the unique invariant distribution of this Markov chain.

If \(\bm{P}\) is reducible, so we can find two permutation \(\bm{Q}\) let it be block upper triangular:

$$\bm{Q}\bm{P}\bm{Q}^T = \begin{bmatrix}\bm{A}_1 & \\ \bm{0} & \bm{A}_2 \\ \bm{0} & \bm{0} & \bm{A}_3 \\ \cdots\end{bmatrix} = \bm{U}$$

If there are more than 1 stochastic matrices in these \(\{\bm{A}_i\}\), we can find some subspaces governed by these stochastic matrices. And in these subspace one can find several independent invariant distributions. Their convex combination would be a new invariant distribution in the whole state space.

Obviously, such argument might be not true if \(\bm{U}\) does not have more than 1 stochastic matrices in its block diagonal, i.e., reducibility is not a sufficient condition for the non-uniqueness of the invariant distribution.

{{% /fold%}}

_[Theorem]_ : If the TPM is primitive, (\(exists s \in \mathbb{N}\Rightarrow \forall i,j; (\bm{P}^s)_{ij} \gt 0\)), then:

1.  There exists a unique invariant distribution \(\bm{\pi}\) , \(\bm{\pi}\) is strictly positive

2.  For any \(\bm{\mu}_0\) :

    $$\bm{\mu}_n = \bm{\mu}_0 \bm{P}^n \rightarrow \bm{\pi} \ , \ \text{exponentially fast as } n \rightarrow \infty$$

{{% fold "Proof"%}}

We need only prove the second assertion, because the first has been proved by Perron-Frobenius theorem if we notice \(\text{primitive}\Rightarrow \text{irreducible}\)

Give two distributions \(\bm{\mu}, \bm{\nu}\) , we define the `total variation distance` by:

$$d(\bm{\mu},\bm{\nu}) = \frac 1 2 \sum_{i\in S}|\mu_{i} - \nu_i|$$

Since:

$$0 = \sum_{i}(a_i-b_i) = \sum_{i} (a_i-b_i)^+ + \sum_i (a_i-b_i)^-$$

Where \(x^+ = \max(a,0) \ ; \ x^- = \max(-x,0)\) , we also have:

$$d(\bm{\mu},\bm{\nu}) = \frac 1 2 \sum_{i\in S}\Big((\mu_i-\nu_i)^++(\mu_i-\nu_i)^-\Big) = \sum_{i\in S}(\mu_i-\nu_i)^+ \leq 1$$

Now consider \(\bm{P}^s\) is a strictly positive matrix (primitive) . Let \(\bm{\mu}_s = \bm{\mu}_0 \bm{P}^s \ ; \ \bm{\nu}_s = \bm{\nu}_0 \bm{P}^s\) , we have:

$$\begin{aligned}
d(\bm{\mu}_s,\bm{\nu}_s) &= \sum_{i\in S}\Big(\sum_{j\in S}(\mu_{0,j}-\nu_{0,j}) (\bm{P}^s)_{ji}\Big)^+ \\
&= \sum_{i\in A} \sum_{j\in S}(\mu_{0,j}-\nu_{0,j}) (\bm{P}^s)_{ji} \\
&= \sum_{j\in S} (\mu_{0,j}-\nu_{0,j}) \sum_{i\in A}(\bm{P}^s)_{ji} \\
&\leq \sum_{j\in S} (\mu_{0,j}-\nu_{0,j})^+ \sum_{i\in A} (\bm{P}^s)_{ji}
\end{aligned}$$

Where set \(A\) is the subset of indices where \(\sum_{j}(\mu_{0,j}-\nu_{0,j})(\bm{P}^s)_{ji} \gt 0\). Note that \(A\) cannot be empty or equal to \(S\) , because these two subtracting terms both sum to \(1\). So one cannot be greater than the other for all indices.

Note \(\bm{P}^s\) 's all elements are positive and each row sums to \(1\). So there exists \(\alpha \in(0,1)\) such that:

$$(\bm{P}^s)_{ji} \geq \alpha \forall i,j \ ; \ \sum_{i\in A}(\bm{P}^s)_{ji} \leq 1-\alpha \lt 1$$

Therefore:

$$d(\bm{\mu}_s,\bm{\nu}_s)\leq d(\bm{\mu}_0,\bm{\nu}_0)(1-\alpha)$$

In the other word, the Markov chain is contractive after every \(s\) steps. For any \(m\gt 0\):

$$d(\bm{\mu}_n, \bm{\mu}_{n+m}) \leq d(\bm{\mu}_{n-sk},\bm{\mu}_{n+m-sk})(1-\alpha)^k \leq (1-\alpha)^k = (1-\alpha)^{\text{floor}{n/s}}$$

Where \(k\) is the largest integer such that \(n-sk \geq 0\) . So if \(n\) is sufficiently large, the right-hand-side can be made arbitrarily small. Therefore the sequence \(\{\bm{\mu}_n\}\) is a Cauchy sequence. Hence it has to converge to a limit \(\bm{\pi}\) . And:

$$\bm{\pi} = \lim_{n\rightarrow \infty} \bm{\mu}_0 \bm{P}^{n+1} = \bm{\pi}\bm{P}$$

i.e., it is definitely the invariant distribution.

As for the convergence speed, note that in the discussion above we did not assume the detail of \(\bm{\mu} , \bm{\nu}\) , now let \(\bm{\nu}_n = \bm{\pi}\) , we can directly get:

$$d(\bm{\mu}_{n},\bm{\pi}) \leq d(\bm{\mu}_{n-sk},\bm{\pi})(1-\alpha)^k\leq (1-\alpha)^{\text{floor}(n/s)}$$

That is to say, the sequence converges exponentially.

{{% /fold%}}

This theorem hold for a weaker condition(irreducible):

_[Theorem]_ : If the TPM is irreducible, (\(\forall i,j;\exists s \in \mathbb{N} \Rightarrow (\bm{P}^s)_{ij} \gt 0\), note the difference between primitive and irreducible), then:

1.  There exists a unique invariant distribution \(\bm{\pi}\) , \(\bm{\pi}\) is strictly positive

2.  For any \(\bm{\mu}_0\) :

    $$\bm{\pi}_n  = \frac 1 n \sum_{j=1}^n \bm{\mu}_0 \bm{P}^j \rightarrow \bm{\pi} \ , \ \text{exponentially fast as } n\rightarrow \infty$$
