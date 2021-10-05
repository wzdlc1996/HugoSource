---
title: "Time in Quantum Mechanics"
date: 2021-09-25T18:00:00+08:00
lastmod: 2021-09-25T18:00:00+08:00
draft: true
tags: ["quantum"]
categories: ["Reviews"]
toc: true
summary: "Time in quantum mechanics is always left as an parameter in the equation of motion. In the non-relativistic quantum theory we find time in the derivative of wavefunction, while in the relativistic quantum field theory, it is not at the same status of spatial position: we introduce the space-time dependent field operator only for Lorentz covariance for the equation of motion. Whether can we have an intrinsic interpretation of time flow in quantum mechanics was early discussed by Don Page and William Wootters with the purpose to match the energy superselection rule. Though it may not be a correct theory for our world or even 'close' to it, it is worthy to discuss in modern view here as a consistent approach to the time puzzle."
---

# Introduction

# Page-Wootters Mechanism

ref: the original paper [by Page & Wootters](https://journals.aps.org/prd/pdf/10.1103/PhysRevD.27.2885)

## Motivation

The motivation of Page and Wootters' work is the **superselection rule** in quantum mechanics (see [wikipedia/Superselection][1] for more information). Simply speaking, superselection rule think the Hamiltonian of the whole universe has a special structure such that some additive physics quantity (as operator) is commute to it. This leads to the Hilbert space of universe can be separated into several sectors. Observers, as the subsystem in the universe, are not allowed to recognize whether the universe is in a coherent superposition of distinct sectors or just a mixture of them. If the initial state of universe is in one sector, then during the time evolution there should be a global conservation rule existing. Wigner might be the first one to consider such observable limitation leading specific conservation rules like the total charge ([Wightman, 1995][2]).

Page and Wootters thought there should be also a total energy superselection rule, and the universe should be at some energy eigenstate ([Page & Wootters, 1983][3]). By the quantum mechanics, this leads to the stationary picture of the universe dynamics as

$$
\ket{\psi(t): \textrm{universe}} = e^{\ti E t /\hbar} \ket{\psi(0): \textrm{universe}}.
$$

In such case, there should be no "time evolution" and violates our intuition: time flow does exists and we can even check it by experiment. To overcome this issue, Page and Wootters illustrate an interesting analysis for a closed system and introduced the "clock time" via the entanglement of parties. The "clock time", instead of the "coordinate time" $t$ in the Schrodinger equation, should be the one we realizable in the real world. This analysis, by their original paper, may not be correct but consistent. It is interesting to discuss, especially recently there are some new progress in this context. 


## Theory: Conditional Probability Interpretation

The core idea of Page and Wootters' is described in ([Page & Wootters, 1983][3]) as

> ... although the dependence of a system upon coordinate time is completely unobservable, one can observe a dependence upon an internal clock time. 

The dependence of the dynamical variables to the clock time is described as the **Conditional Probability**. 

Let the composite system be split into the subsystem we concern as $S$ and the clock $C$. The clock time $\tau$ (we use different notation to distinguish coordinate time $t$) is some observable on $C$, i.e. described as an operator on the subspace $\mathcal{H}_C$. Our naive calling for "Something happened to $S$ at time $\tau$" means we find the system $S$ at some state, with the condition of $C$ reads $\tau$. Mathematically speaking, the state of $S$ at time $\tau$ means the following conditional probability distribution

$$
\mathbb{P}(S \textrm{ at state } s| C \textrm{ at } \tau).
$$

Thus the time flow can be separated into two aspects. One is the evolution of coordinate time $t$, which could leave no observable difference on the universe $S+ C$ or any subsystem. Another is the evolution of clock time. Our perception of such evolution comes from the correlation between the subsystem and the internal clock.


## An Example: How does Internal Clock Work?

This is the example to illustrate the theory of time via conditional probability in Page and Wootters' original paper. Here we discuss it with modern view and language. 

Consider the system (Universe) of two large but distinguishable spins denoted as $1, 2$. The Hamiltonian of the Universe is made up with the kinetic energy of them with **NO** interaction. With the eigenstates of $\hat S_{i, z} , i=1,2$, the Hamiltonian reads

$$
\hat H = \hbar \omega_1 \hat S_{1,z}+ \hbar \omega_2 \hat S_{2,z}  = \sum_{m_1=-s_1}^{s_1} \sum_{m_2=-s_2}^{s_2} \hbar \omega_1 m_1 \ket{m_1}\bra{m_1} \otimes \hat I_2 + \hbar\omega_2 m_2 \hat I_1 \otimes \ket{m_2}\bra{m_2}.
$$

Since there is no interaction between spin 1 and 2, the composite motion is just the direct product of two free rotations along the z-axis. Suppose the initial condition of the composite system is the product state of the eigenstates of $\hat S_{1,x}$ and $\hat S_{2,x}$ with $s_1$ and $s_2$. With the theory of quantum angular momentum, such states should be

$$
\ket{x}=\frac 1 {2^s} \sum_{m=-s}^s \sqrt{\frac {(2s)!} {(s-m)!(s+m)!}} \ket{m} \Rightarrow \hat S_x \ket{x} = \hbar s \ket{x}.
$$

{{% fold "Note: Checking for this eigenstate" %}}

One can check this is the eigenstate of $\hat S_x$ with possibly largest eigenvalue by the ladder operator in $\hat S_z$ eigenbasis representation.

$$
(\hat S_x \pm \ti \hat S_y) \ket{s, m} = \hbar \sqrt{s(s+1) - m(m\pm 1)} \ket{s,m\pm 1} \\
\Rightarrow \hat S_x =\frac \hbar 2 \sum_{m=-s}^s \sqrt{s(s+1)-m(m+1)}\ket{m+1}\bra{m} + \sqrt{s(s+1)-m(m-1)}\ket{m-1}\bra{m}.
$$

Then, there is

$$
\begin{aligned}
\frac 1 \hbar \hat S_x \ket{x} &= \frac 1 {2^{s+1}}\sum_m \sqrt{C_{2s}^{s+m}}\Big(\sqrt{(s-m)(s+m+1)}\ket{m+1} + \sqrt{(s+m)(s-m+1)}\ket{m-1}\Big) \\
&=\frac 1 {2^{s+1}} \Big(\sum_m \sqrt{\frac{(2s)!(s+m+1)} {(s-m-1)!(s+m)!}}\Big)
\end{aligned}
$$

{{% /fold %}}


# Physical Theory with Clock Time

ref: the recent Nat. Comm. paper [Nat Commun 12, 1787 (2021).](https://www.nature.com/articles/s41467-021-21782-4.pdf)

# Interacted Clock and System 

ref: the work of [Alexander R. H. Smith1 and Mehdi Ahmadi](https://quantum-journal.org/papers/q-2019-07-08-160/pdf/)

# Conclusion

# Reference

[1]: https://en.wikipedia.org/wiki/Superselection
[2]: https://link.springer.com/article/10.1007/BF02741478
[3]: https://journals.aps.org/prd/abstract/10.1103/PhysRevD.27.2885