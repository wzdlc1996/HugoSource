---
title: "Time Reversal in Physics"
date: "2021-02-24T19:41:00+08:00"
lastmod: "2021-02-24T19:41:00+08:00"
draft: true
tags: ["quantum","symmetry"]
categories: ["Reviews"]
toc: true
summary: "Time reversal symmetry is one of the fundamental requirement of most physics theories. However, it is also one of the most strange concepts in the physics, since there is no one can make an experiment to implement the time reversal procedure. In this note, we will discuss how time reversal is introduced in physics and what we actually mean by mentioning it. The note covers the time reversal in classical mechanics and its representation in quantum theory. Some essential mathematical knowledge is required but can be found in Notes/qm."
---

# Time Reversal in Physics

## Introduction

In the historical view, the time reversal is firstly presented in the regime of classical motion of massive objects. A slightly modern model (but tricky) to understand it can be a rewind video. Imagine a ball falling freely and we record its motion, the rewind version of it will not make you feel wired. You may think that there is someone who throw it up from a lower height. **Time reversal** means such the transformation, we do not have a clear definition yet, which can map a motion to its rewind version. 

Before further digging in this concept, let us do some critics to the understanding above. 

1.  To rewind the motion one needs the motion last `finite` temporal interval. 

    It is usually prefered by theoretists that a concept or theory should be defined `locally`. For example, Newton's law of motion can help us get to know the future motion as long as we know the forces and instant state (position and momentum). This understanding based on rewind limits our discussion in a duration of motion, i.e., non-local. This property makes it hard to use. 

2.  Time reversal is `more` than the rewind of `re-order the stages during motion`. 

    The word "stage during motion" is ambiguous here. In the sense of completely description of the configuration, each stage should be a group of real numbers for the positions of objects. Rewind just returns the time series of such stages in the reversed order. But once we notice that we should use position and momentum together in the dynamics, such re-ordering is different from the time reversal. 
    Moreover, in the modern physics, it is necessary to handle the motion of many new concepts like spin. Generally, they may have no correspondance like that velocity is actually the time direvative of position thus its sign should change.

## General Discussion for Time Reversal

The **symmetry** in physics, which can be used to describe a theory or a system, usually means it is invariant under a group of specific operations. Just like many other symmetries like spatial translation and permutation between identical particles, time reversal defines an operation on the theory, which is obviously dependent of the contents and mathematical form of the theory itself. This fact makes it difficult to find a general frame work for time reversal without the detail of physics theory. In this section, we will show a framework and the language for how to define a operation for a theory and what it means by saying the symmetry of a system. They would be based on some essential requirements of a physics theory. But note it could be too general to be useful. In the following sections, the detailed definition of time reversal would be given for commonly accepted theories like classical mechanics, quantum mechanics and field theory.

In general, a physics theory covers the "complete" description of the physical system. It (here we call it state noted as $s$) could be a point on a symplectic manifold (classical mechanics) or a complex vector in a Hilbert space (quantum theory). A dynamical equation (or equation of motion(EOM)) is usually required. EOM is usually local, i.e., the derivative with respect to time of $s(t)$ is the function of current state. Mathematically, we assume EOM has the form of

$$\frac {\td} {\td t} s(t) = D(s(t)).$$

Time reversal should map $t$ to $T(t)$ which decreases over time. But besides reversing the time order, we need time reversal hold the duration between any two given moments. That means the time reversal acting on time should be $T(t) = t_0-t$. The center of reversal $t_0$ is arbitrary. However, it is widely admitted that physics should have time translation invariance, at least those theories for small scale of spacetime. Thus we let $t_0=0$. This is also why we assume $D(\cdot)$ is independent of time.

It is impossible to specify how time reversal acts on state $s(t)$. The time reversal on the state at time $t$ is denoted as $s(t)\rightarrow s'(t') = T(s(-t))$ in which $t' = T(t) = -t$. Thus, two sides of equation of motion under time reversal reads

$$\begin{aligned}
\frac {\td} {\td t} s(t) &\rightarrow \frac {\td} {\td t'} s'(t') = -\frac {\td} {\td t} T(s(-t)) \\
D(s(t)) &\rightarrow D'(s'(t')) = D'(T(s(-t)))
\end{aligned}.$$

For the same reason of time reversal on state, $D'$ can still not determined. However, in many cases, $D$ describes how to find the the flow in tangent space of state space. This external rule should be left invariant under time reversal. For example, in classical mechanics, $D$ is related to the gradient of Hamiltonian with a symplectic matrix. The matrix is invariant while the Hamiltonian and its derivative is not. Another example is the Quantum mechanics, $D(s)$ is $\hat H \ket{\psi}$, in which $\hat H$ will changed while such linear form does not.

The theory has time reversal symmetry means these two terms under time reversal are still equal such that the form of EOM holds. 


One may argue that in quantum mechanics, we can directly point out that the Hamiltonian of $\sum_i \hat a_i \hat a_{i+1}+\text{c.c.}$ has the translation symmetry if the summation over $i$ is evaluated in a periodic boundary condition even the operators $\hat a$ is not given. But to make this statement one still assume that the spatial translation leaves $\hat a$ invariant! 

## Time Reversal in Classical Mechanics

## Time Reversal in Quantum Mechanics

## Time Reversal in Field Theory

## Reference