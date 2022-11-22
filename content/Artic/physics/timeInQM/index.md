---
title: "Time in Quantum Mechanics"
date: 2021-09-25T18:00:00+08:00
lastmod: 2021-09-25T18:00:00+08:00
draft: false
tags: ["quantum"]
categories: ["Reviews"]
toc: true
summary: "Time in quantum mechanics is always left as an parameter in the equation of motion. In the non-relativistic quantum theory we find time in the derivative of wavefunction, while in the relativistic quantum field theory, it is not at the same status of spatial position: we introduce the space-time dependent field operator only for Lorentz covariance for the equation of motion. Whether can we have an intrinsic interpretation of time flow in quantum mechanics was early discussed by Don Page and William Wootters with the purpose to match the energy superselection rule. Though it may not be a correct theory for our world or even 'close' to it, it is worthy to discuss in modern view here as a consistent approach to the time puzzle."
---

# Introduction

Time might be the most mysterious concept in physics theory. Before the relativistic theory, time was long considered as the global parameter controlling the world. Einstein told us time and space should be linked as one and influenced by matter. However, the most fundamental two theory of physics, quantum theory and general relativistics are still not unified well. The former one gives us the best description about basic particles and their motion. The latter discuss how matter influence the spacetime, the stage of the motion. These two theories deal time quite differently and make it still an unsolved puzzle to scientists. In 1983, Page and Wootters discussed the approach to treat the time as an emergent phenomena instead of the parameter isolated from theory. They proposed a strategy to define time and dynamics within a stationary system. Recently, the time is emergent from quantum correlation become popular in the community <!-- Need reference -->. It is worthy to discuss their original work and some modern development here. 

This post is arranged as three parts. First we show the original Page-Wootters (PaW) mechanism of time. Then we discuss how the equation of motion appear in such scenario. At last, we discuss the recent development about introducing the interaction between clock and system. 

# Page-Wootters(PaW) Mechanism

<!--ref: the original paper [by Page & Wootters](https://journals.aps.org/prd/pdf/10.1103/PhysRevD.27.2885)-->

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

<!--

## An Example: How does Internal Clock Work?

This is the example to illustrate how does conditional probability work in Page and Wootters' original paper. 

Consider the system (Universe) of two large but distinguishable spins denoted as $1, 2$. The Hamiltonian of the Universe is made up with the kinetic energy of them with **NO** interaction. With the eigenstates of $\hat S_{i, z} , i=1,2$, the Hamiltonian reads

$$
\hat H = \hbar \omega \hat S_{1,z}+ \hbar \omega \hat S_{2,z}  = \sum_{m_1=-s}^{s} \sum_{m_2=-s}^{s} \hbar \omega m_1 \ket{m_1}\bra{m_1} \otimes \hat I_2 + \hbar\omega m_2 \hat I_1 \otimes \ket{m_2}\bra{m_2}.
$$

Since there is no interaction between spin 1 and 2, the composite motion is just the direct product of two free rotations along the z-axis. Suppose the initial condition of the composite system is the product state of the eigenstates of $\hat S_{1,x}$ and $\hat S_{2,x}$ with maximum magnitude. With the theory of quantum angular momentum, such states should be

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
&=\frac 1 {2^{s+1}} \Big(\sum_m \sqrt{\frac{(2s)!(s+m+1)} {(s-m-1)!(s+m)!}} \ket{m+1} + \sqrt{\frac {(2s)!(s-m+1)} {(s+m-1)!(s-m)!}} \ket{m-1} \Big) \\
&=\frac 1 {2^{s+1}} \Big(\sum_{m=-s+1}^s \sqrt{\frac{(2s)!(s+m)} {(s-m)!(s+m-1)!}} \ket{m} + \sum_{m=-s}^{s-1}\sqrt{\frac {(2s)!(s-m)} {(s+m)!(s-m-1)!}} \ket{m} \Big)  \\
&=\frac 1 {2^{s+1}} \Big(\sum_{m=-s}^s \sqrt{\frac{(2s)!} {(s-m)!(s+m)!}}(s+m) \ket{m} + \sum_{m=-s}^{s}\sqrt{\frac {(2s)!} {(s+m)!(s-m)!}}(s-m) \ket{m} \Big) \\
&=s \ket{x}
\end{aligned}
$$

We change the range of sum for the added term should be zero by the sum rule. Thus the state $\ket{x}$ should be the eigenstate of $\hat S_x$ with the possibly maximum eigenvalue. This means the spin oriented along $x$ axis.

{{% /fold %}}

The second spin would be our internal clock. The observer (spin 1) cannot be asked any question about its motion with the respect to coordinate time $t$ (though there is indeed absolute motion in this case). One can only ask the conditional probability of spin-1 with the condition of spin-2 state. This procedure cannot be done in real world, since such prediction of probability can only get demonstration via some infinite ensemble of the universe. This fault is the same as many-world interpretation: the theory of the transition probability of the irreversible procedure cannot verified preciously via experiment.   

To illustrate how the internal clock works, we show how spin-1 and spin-2 get correlated via a set of "stationary operators". The system itself does not have any entanglement during the evolution. This is one of the novelty of Page and Wootters' work. 

The operators, or measurement is chosen to be the spin component along $x$ axis. To determine the conditional probability, we need the induced projector by measure spin-2 and spin-1&2 together by

$$
\hat P_{c} = \hat I_1 \otimes \ket{x, 2}\bra{x, 2} \ ; \ \hat P(k) = \ket{J_{1,x} = s-k, 1}\bra{J_{1,x}=s-k,1}\otimes \ket{x,2}\bra{x,2}.
$$

In the Heisenberg picture, one can write down the explicit expression for eigenstate of $\hat J_{x}(t)$ as

$$
\ket{J_x=s-k} = \sum_{m=-s}^s \sqrt{\frac {C_{2s}^k} {C_{2s}^{s+m}}} \sum_{l=0}^k C_k^l C_{2s-k}^{s+m-l} 2^{-s} (-1)^l e^{-\ti m \omega t} \ket{m}.
$$

Since projector $\hat P_c$ and $\hat P(k)$ are both dependent of time in the Heisenberg picture (i.e., they are not stationary operators). The authors considered the long time average of these projectors for the conditional probability as

$$
\mathbb{P}(J_{1,x}=s-k|J_{2,x}=s) = \frac {\braket{\psi|\overline{\hat P(k)}|\psi}} {\braket{\psi|\overline{\hat P}_j|\psi}},
$$

with $\overline{\hat O} = \lim_{T\rightarrow \infty} \frac 1 {2T}\int_{-T}^T e^{\ti \hat H t} \hat O e^{-\ti \hat H t} \td t$. By their result, the conditional probability reads

$$
\mathbb{P}(J_{1,x} = s-k|J_{2,x}=s) = 2^{-4s} \frac {C_{8s}^{4s} C_{2s}^k C_{4s}^k} {C_{4s}^{2s}C_{8s}^{2k}} \sim_{s\rightarrow \infty} 2^{-1/2 - 3k} C_{2k}^k.
$$

This performs a strong concentration around $k=0$, i.e., these two spin illustrate the correlation by the conditional probability through the stationary operators.

-->

# Physical Theory with Clock Time

<!--ref: the recent Nat. Comm. paper [Nat Commun 12, 1787 (2021).](https://www.nature.com/articles/s41467-021-21782-4.pdf)-->

## The Classical Analog

In the classical mechanics, we can assign a dynamical variable as the time instead of coordinate time and obtain the analog of PaW mechanism. 

Let us begin with the system described by the clock time $\tau$, which can be the dynamical variable of one additional degree of freedom or another subsystem. The classical mechanics for the subsystem apart from the internal clock can be expressed as the action
$$
S = \int \td \tau \ L_S\Big(q, \frac {\td q} {\td \tau}\Big).
$$
Without loss of the generality, we choose a time-independent Lagrangian for the system. Then according to the PaW picture, we can derive the mechanics of the universe with respect to the coordinate time $t$. The transformation can be down by noting $\tau = \tau(t)$ is a dynamical variable. The action evolving all degrees of freedom(subsystem and the clock) should be
$$
S = \int \td t \ \dot{\tau} L_S(q, \dot{q} / \dot{\tau}) = \int\td t\ L(q, \dot{q}, \dot{\tau}).
$$
We denoting all time derivative of dynamical variables with respect to coordinate time $t$ as the dot-notation. Then the Lagrangian of the universe which leads to the classical theory for dynamics should be
$$
L(q, \dot{q}, \dot{\tau}) = \dot{\tau} L_S(q, \dot{q}/\dot{\tau}).
$$
The Hamiltonian of the universe can also be obtained by the full Legendre transformation including $\tau$ as
$$
\begin{aligned}
H &= \frac {\partial L} {\partial \dot{\tau}} \dot{\tau} + \frac {\partial L} {\partial \dot{q}} \dot{q} - L \\
&= L_S\dot{\tau}+\dot{\tau}\partial_2 L_S \cdot (-\dot{q} / \dot{\tau}^2) \dot{\tau}+\dot{\tau} \partial_2L_S(1/\dot{\tau})\dot{q} - \dot{\tau}L_S \\
&=0.
\end{aligned}
$$

This vanishing Hamiltonian means that this classical universe is stationary. However such form of the Lagrangian $L$ for universe leads to the non-vanishing effective dynamics for the subsystem with respect to internal clock time $\tau$. With this result, we can legally make a conjecture that there is no "absolute" motion of the universe. Our feeling for the time flow is caused by the careful choice of the clock time $\tau$, since the universe's Lagrangian $L$ could lead to a non-vanishing motion of the subsystem with respect to $\tau$. This is the core idea of PaW mechanism.

## "Derive" the Schrodinger Equation

Our next work is to apply the analysis to the quantum system. The approach was originally proposed in Page and Wootters' paper. Recently, their idea got mathematically strict expression in [Nat Commun 12, 1787 (2021).][4] We follow the Page & Wootters' language here since it is simple and enough to show the method.

Consider the composite system (universe) of clock $C$ and system $S$ without interaction. The Hamiltonian reads
$$
\hat H = \hat H_S\otimes \hat I_C + \hat I_S \otimes \hat H_C.
$$
Without loss of generality, let the universe is at the eigenstate of energy to be zero. The global energy shift can only lead to the overall phase factor(coordinate time dependent) that is not observable. That means
$$
\hat H \ket{\Psi} = 0.
$$
Without further explanation, we use upper Greek letters to denote the universe and lower case for the (sub)system.

It is necessary in this theory that $\hat H_C$ generates a set of clock states. In Page & Wootters' original paper, they required
$$
e^{\ti \hat H_C s}\ket{0} = \ket{s} \ ; \ \hat I_C = \int \td s \ \ket{s}\bra{s}.
$$
This is actually a non-trivial requirement for $\hat H_C$. One can easily find the conjugate operator of any spectral operator like position in the Hilbert space of clock match this. However, such $\hat H_C$ would not have a lower bound and harmful for the quantum theory. Such clock works for showing PaW mechanism in this toy model. However, one should be carefully to use this for further research. One should also note that this fault is not fatal for the discussion of local procedure during short time interval. For those global cases with a long time interval, the unbounded Hamiltonian from below is questioned because of multiple instability issues. 

By Page & Wootters' setup, the (conditional) expectation value of operator $\hat O$ on the Hilbert space of subsystem $S$ at clock time $\tau$ should be 
 
$$
\begin{aligned}
\langle \hat O(\tau)\rangle &= \sum_j \frac {\bra{\Psi} (\ket{O=O_j}\bra{O=O_j} \otimes \ket{\tau}\bra{\tau}) \ket{\Psi}} {\bra{\Psi} (\hat I_S \otimes \ket{\tau}\bra{\tau})\ket{\Psi}} O_j \\
&= \frac {\textrm{Tr} \hat \rho (\hat O \otimes \ket{\tau}\bra{\tau})} { \textrm{Tr} \hat \rho (\hat I_S \otimes \ket{\tau}\bra{\tau})}.
\end{aligned}
$$

With the definition of clock states $\ket{\tau}$ and the fact that $[\hat \rho, \hat H] = 0$, one has

$$
\begin{aligned}
\textrm{Tr} \hat \rho (\hat O \otimes \ket{\tau}\bra{\tau}) &= \textrm{Tr} \hat \rho \Big(\hat O \otimes e^{-\ti \hat H_C \tau} \ket{0}\bra{0} e^{\ti \hat H_C \tau}\Big) \\
&= \textrm{Tr} \ e^{-\ti \hat H \tau} \hat \rho e^{\ti \hat H \tau} e^{-\ti \hat I_S \otimes \hat H_C \tau} (\hat O \otimes \ket{0}\bra{0}) e^{\ti \hat I_S \otimes\hat H_C \tau} \\
&= \textrm{Tr} \hat \rho \Big((e^{\ti \hat H_S \tau} \hat O e^{-\ti \hat H_S \tau} )\otimes \ket{0}\bra{0}\Big).
\end{aligned}
$$

Thus, the expectation value of the operator at (clock) time $\tau$ should be 

$$
\braket{\hat O(\tau)} = \frac {\textrm{Tr}\hat \rho (\hat O \otimes \ket{\tau}\bra{\tau})} {\textrm{Tr} \hat\rho (\hat I_S \otimes \ket{\tau}\bra{\tau})}  = \frac {\textrm{Tr}\hat \rho (e^{\ti \hat H_S \tau} \hat O e^{-\ti \hat H_S \tau}\otimes \ket{0}\bra{0})} {\textrm{Tr} \hat \rho (\hat I_S \otimes \ket{0}\bra{0})} = \braket{e^{\ti \hat H_S \tau} \hat O(\tau = 0)e^{-\ti \hat H_S \tau}}.
$$

That is to say, the dynamics of expectation of observables obeys the Heisenberg equation. By the equivalence between the Heisenberg picture and Schrodinger picture, PaW mechanism provides us the same scene as common quantum mechanics with respect to coordinate time $t$.


# Interacting Clock and System 

ref: the work of [Alexander R. H. Smith1 and Mehdi Ahmadi-](https://quantum-journal.org/papers/q-2019-07-08-160/pdf/)

In the most generic case, we cannot assume that there is no interaction between the clock and the system. There should at least the gravitational interaction between them. Even when we consider the local theory so the gravity is neglectable, the mechanism cannot escape discussing the interaction. As the clock time matches our feeling to the time flow, we need at least an observer to connect the clock and the system. These two subsystem should be entangled to the observer at the same time. This leads to the information exchange between them, for example, by photons. The existence of this procedure requires the interaction. 

With the same setup of the clock states and the universe state (Hamiltonian constraint)

$$
\Big(\hat H_S\otimes \hat I_C + \hat I_S \otimes \hat H_C + \hat H_{\textrm{int}}\Big) \ket{\Psi} = 0,
$$

we can derive the "clock time" dependent wavefunction for system $S$: $\ket{\psi_S(\tau)} = \braket{\tau| \Psi} \equiv \sum_j \ket{j} \Big(\bra{j} \otimes \bra{\tau} \ket{\Psi}\Big)$. The equation of motion for it should be

$$
\begin{aligned}
\ti \frac {\td} {\td \tau} \ket{\psi_S(\tau)} &= \ti\sum_j \ket{j} \Big(\bra{j} \otimes \bra{0} \frac {\td } {\td \tau} e^{\ti \hat H_C \tau} \Big)\ket{\Psi} \\
&= \sum_j \ket{j} \Big(\bra{j} \otimes \bra{\tau}\Big) (-\hat I_S \otimes \hat H_C) \ket{\Psi} \\
&=\sum_j \ket{j} \Big(\bra{j} \otimes \bra{\tau}\Big) (\hat H_S \otimes \hat I_C + \hat H_{\textrm{int}}) \ket{\Psi} \\
&= \hat H_S \ket{\psi_S(\tau)} + \int \td \tau' \ K(\tau, \tau') \ket{\psi_S(\tau')}
\end{aligned}
$$

The integral kernel $K(\tau, \tau') = \braket{\tau|\hat H_{\textrm{int}}| \tau'}$ is the operator on the Hilbert space of $S$. Such equation is firstly introduced in ([Alexander R. H. Smith, 2019][5]) as the direct conclusion of PaW mechanism with clock-system interaction.

Generally, this equation is not local in time, i.e., the motion of $\psi_S$ (time derivative) is dependent of the previous states (history) rather than the state at time $\tau$ only. Further more, the equation of motion does not automatically preserve the inner product of $\psi_S(\tau)$. This requires the interaction cannot be of arbitrary form or the physical states of $\psi_S$ is limited. 

# Conclusion

It has been a long mystery for the answer of what time is. In the past theoretical approach to the nature this question was evaded by introduce the global parameter since Newton's "absolute time" ([wikipedia/absolute_space_and_time][6]). Page and Wootters gave us a novel way to treat time as an emergent phenomena in quantum mechanics. Though there are still some issues in this framework for example

1.  Orthogonal clock states with the stable universe Hamiltonian.
2.  The choice of clock states is also an instance of preferred basis problem.
2.  How about the time arrow in microscopic systems?
2.  ... ...

PaW mechanism is still valuable for the modern research for quantum theory for gravity. 

With PaW mechanism, one can also make further interesting discussion of novel quantum procedure that not allowed with the coordinate time. Like the history representation for the time arrow, time machine with respect to clock time, and the similar approach (conditional probability interpretation) for the spatial coordinates and momentum. 

<!--In quantum field theory, (flat) space and time are treated as parameters (indices of degree of freedom). It would be interesting to reformulate them as the conditional probability with respect some reference frame and discuss the Lorentz invariability. -->

<!--# Reference-->

[1]: https://en.wikipedia.org/wiki/Superselection
[2]: https://link.springer.com/article/10.1007/BF02741478
[3]: https://journals.aps.org/prd/abstract/10.1103/PhysRevD.27.2885
[4]: https://www.nature.com/articles/s41467-021-21782-4.pdf
[5]: https://quantum-journal.org/papers/q-2019-07-08-160/pdf/
[6]: https://en.wikipedia.org/wiki/Absolute_space_and_time