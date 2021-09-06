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

The dynamical equation in quantum mechanics always has the form of generical Schrodinger Equation as

$$
\ti \frac {\td} {\td t} \ket{\psi} = \hat H \ket{\psi},
$$

in which we set $\hbar = 1$. The quantum state (wavefunction) $\ket{\psi}\in\mathcal{H}$ is a vector in an abstract Hilbert space, while $\hat H: \mathcal{H} \rightarrow \mathcal{H}$ is a Linear operator on it. For the closed system, $\hat H$ is Hermitian, while for the effective theory for open system, $\hat H$ could be non-Hermitian to simulate the particle loss and gaining during the time evolution. 

In non-Relativistic quantum theory, the state is usually represented as function of coordinates, and Hamiltonian $\hat H$ is the classical energy with the "quantization" $\hat{\bm{p}} \rightarrow -\ti \nabla$. In relativistic theory, i.e., quantum field theory, spatial coordinates is one degree of freedom of $\ket{\psi}$ (like the subscription of particles in non-relativistic many body system). In this case, the Hilbert space $\mathcal{H}$ is tensor product of infinitly many local Hilbert spaces: $\mathcal{H} = \otimes_x \mathcal{H}_x$, and the equation of motion still has the form of Schrodinger equation, with the Lorentz covariance required by the Special Relativistic theory.

Generally, to numerically solve the Schrodinger equation, we need a set of basis $\ket{x}$ and rewrite the equation as matrix form

$$
\ti \frac {\td} {\td t} \bm{\psi} = \bm{H}\bm{\psi} \ ; \ (\bm{\psi})_x = \braket{x|\psi}, (\bm{H})_{x,x'} = \braket{x|\hat H|x'}.
$$

When the time evolution is closed in a finite subspace of $\mathcal{H} = \textrm{span} \{\ket{x}\}$, the equation of motion becomes a finite dimensional linear ODE. There has been much algorithms to handle this case like **Exact Diagonalization** to find the exact solution and **Runge-Kutta Method** for finite precision solution. The problem get serious when we cannot find such finite subspace, this can be led by the initial condition and system itself. If the dynamics is constraint, we can use some cutoff strategy to make it be finite approximately. This procedure is usually completed by analyzing the symmetry of the system. The worst case is the case of the system do not allowed such effective cutoff, like most systems in field theory whose degree of freedom is infinity. This problem attracts much attentions recently and many models friendly to numerical simulation, like lattice field theory, are developed. 

In this note, we will focused on the easy problems: the system who can be treated as finite dimensional system. We discuss the numerical algorithm to effectively solve such ODEs. This is also important since the dimension of Hilbert space is usually exponential to the system size and exact diagonalization might not be always the best choice. How to find the cutoff is also our goal. However, usually it does not have a unified strategy. We will discuss this on some frequently used models. 

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

<!--$$
\ti \frac {\psi^{n+1} - \psi^n} {\Delta t} = -\frac 1 4 \Big([\nabla^2 \psi^{n+1}]_{\Delta x} + [\nabla^2 \psi^{n}]_{\Delta x}\Big) + \frac 1 2 (V^{n+1}\psi^{n+1} + V^n\psi^n).
$$-->

$$
\psi^{n+1} + \frac {\ti \Delta t} 2\Big(-\frac 1 2 [\nabla^2\psi^{n+1}]_{\Delta x} + V^{n} \psi^{n+1}\Big) = \psi^{n} - \frac {\ti \Delta t} 2 \Big(-\frac 1 2 [\nabla^2 \psi^n]_{\Delta x} + V^n \psi^n\Big).
$$

Or simplified form $(1+\ti \Delta t \hat H/2) \psi^{n+1} = (1-\ti \Delta t \hat H/2) \psi^n$.

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
\ti \frac {\xi_k - 1} {\Delta t} = \frac {1-\cos k\cdot \Delta x} {\Delta x^2} + V^n \Rightarrow \xi_k = 1- \ti \Big(\frac {2\Delta t} {\Delta x^2} \sin^2 \frac {k\cdot \Delta x} {2} + V^n\Big).
$$

It shows $|\xi_k|^2 \gt 1$ at finite $\Delta t, \Delta x$ for some $k$ and $x$, i.e., the error grows exponentially. This analysis is known as **von Neumann Stability Analysis**, see [wikipedia/Von_Neumann_stability_analysis](https://en.wikipedia.org/wiki/Von_Neumann_stability_analysis) for more information. It is not the only stability analysis method, but usually a good start. 

Since the Schrodinger equation has an imaginary time step term, the explicit method is often unstable. The Crank-Nicolson method can be approximately viewed as the average of both sides of forward naive propagation and backward propagation. We will see adding the backward propagation stabilizes the algorithm.

$$
\Big(1 + \frac {\ti \Delta t} 2 \Big(\frac {2\sin^2 k\cdot \Delta x/2} {\Delta x^2} + V^{n}\Big)\Big)\xi_k = \Big(1 - \frac {\ti \Delta t} 2 \Big(\frac {2\sin^2 k\cdot \Delta x/2} {\Delta x^2} + V^{n}\Big)\Big) \Rightarrow |\xi_k| = 1.
$$

Which means the method is not only stable, but also unitary. Thus we even do not need normalize the wavefunction at each time step. This is also why we not use the exact average of forward and backward (Note the potential $V$ at left-hand-side is at time $n$ rather than time $n+1$).

{{% /fold %}}

This implicit method is unitary. The price is we need to solve a linear system with tri-diagonal matrix. With proper algorithm this would cost as $\mathcal{O}(D)$ of dimension of Hilbert space.



# Conclusion

