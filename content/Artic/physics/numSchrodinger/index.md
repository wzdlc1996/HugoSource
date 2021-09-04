---
title: "Numerical Methods for Schrodinger Equation"
date: 2021-07-22T22:50:00+08:00
lastmod: 2021-07-22T22:50:00+08:00
draft: true
tags: ["quantum"]
categories: ["Reviews"]
toc: true
summary: "The first problem we meet in the practice about quantum mechanics is to simulate the quantum time evolution on computer. Formally, it is the numerical simulation of the (time-dependent) Schrodinger Equation. In this review, we discuss various numerical method for the Schrodinger equation and quantum time evolution, including their implementation and error analysis."
---

# Outline

begin with the generic Schrodinger equation of

$$
\ti \frac {\td } {\td t} \ket{\psi} = \hat H \ket{\psi}
$$

If the dimension of Hilbert space is finite, it is a problem about linear ODE. However, if the Hilbert space is countable infinite, it is a PDE with different boundary condition. The eigenvalue problem can be solved by imagenary time evolution, which is equivalent to Lancoz method. The dynamics can be simulated by the unitarized RK method and Trotters-Suzuki decomposition, the cumulating error and stability is discussed. 

Read the book of 

1.  Computational Physics by Koonin Steven E
2.  Computational methods for physicists by Sirca Smion Horvat.

# Introduction

# Generic Discussion

# Numerical Method for Eigensystem Problem

# Numerical Method for Time Dependent Schrodinger Equation

Let us continue for the single particle Schrodinger equation with potential (now it can be dependent of time) of

$$
\ti \frac {\partial }{\partial t} \psi(x, t) = -\frac 1 2 \nabla^2 \psi(x, t) + V(x, t) \psi(x, t).
$$

## Unitary Finite Difference

We can always compute the right-hand-side by finite difference to obtain the addition on time domain, and use Eular method to compute the wavefunction $\psi$ at each discretized time step, like the ODE numerical method.

With the Catersian system with spatial resolution $\Delta x$, the Laplacian in right-hand-side can be estimated as

$$
\nabla^2 \psi = \sum_{i=1}^3 \partial_i^2 \psi =  \sum_{i=1}^3 \frac {\psi(x^i + \Delta x) + \psi(x^i - \Delta x) - 2\psi(x^i)} {\Delta x^2} + \mathcal{O}(\Delta x^3) = [\nabla^2 \psi]_{\Delta x} + \mathcal{O}(\Delta x^3).
$$

The error scaling can be obtained by Taylor expansion along each axis. Then we can calculate the time step by different order according to our demand.

With this discretization, the Crank-Nicolson method suggests (with superscript denoting time point)

$$
\ti \frac {\psi^{n+1} - \psi^n} {\Delta t} = -\frac 1 4 \Big([\nabla^2 \psi^{n+1}]_{\Delta x} + [\nabla^2 \psi^{n}]_{\Delta x}\Big) + \frac 1 2 (V^{n+1}\psi^{n+1} + V^n\psi^n).
$$

{{% fold "Note: why not naive propagation" %}}

The naive propagation is defined by the discretization equation

$$
\ti \frac {\psi^{n+1} - \psi^n} {\Delta t} = -\frac 1 2[\nabla^2 \psi^{n}]_{\Delta x} + V^n\psi^n.
$$

Different with Crank-Nicolson method, naive propagation is an explicit method, i.e., given the value of $\psi^n$, we can directly compute the next time $\psi^{n+1}$. Crank-Nicolson method is implicit since we need further to solve a linear system to obtain $\psi^{n+1}$.

The reason why we do not use naive propagation is that it is not numerical stable. To see this, we analyze the growth factor of error. Since the original differential equation is linear, the propagation of error function is same to the equation for $\psi$, as

$$
\ti \frac {\epsilon^{(n+1)} - \epsilon^{(n)}} {\Delta t} = -\frac 1 2[\nabla^2 \epsilon^{(n)}]_{\Delta x} + V^n\epsilon^{(n)}.
$$

Assuming the growth of $\epsilon$ is

$$
\epsilon^{(n)} = \sum_k \xi_k^n e^{\ti k\cdot x}.
$$

The growth factor at mode $k$ is $\xi_k$, and it should be of the order by

$$
\ti \frac {\xi_k - 1} {\Delta t} = \frac {1-\cos k\cdot \Delta x} {\Delta x^2} + V^n
$$

{{% /fold %}}



# Conclusion

