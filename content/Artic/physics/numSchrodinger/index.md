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
\nabla^2 \psi = \sum_{i=1}^3 \partial_i^2 \psi =  \sum_{i=1}^3 \frac {\psi(x^i + \Delta x) + \psi(x^i - \Delta x) - 2\psi(x^i)} {\Delta x^2} + \mathcal{O}(\Delta x^2) = [\nabla^2 \psi]_{\Delta x} + \mathcal{O}(\Delta x^2).
$$

The error scaling can be obtained by Taylor expansion along each axis. Then we can calculate the time step by different order according to our demand.

With this discretization, the Crank-Nicolson method suggests (with superscript denoting time point)

<!--$$
\ti \frac {\psi^{n+1} - \psi^n} {\Delta t} = -\frac 1 4 \Big([\nabla^2 \psi^{n+1}]_{\Delta x} + [\nabla^2 \psi^{n}]_{\Delta x}\Big) + \frac 1 2 (V^{n+1}\psi^{n+1} + V^n\psi^n).
$$-->

$$
\begin{aligned}
&\ti \frac {\psi^{n+1} - \psi^n} {\Delta t} = -\frac 1 4 \Big([\nabla^2 \psi^{n+1}]_{\Delta x} + [\nabla^2 \psi^{n}]_{\Delta x}\Big) + V^n \frac {\psi^{n+1} + \psi^n} 2 \\
\Leftrightarrow \indent &
\psi^{n+1} + \frac {\ti \Delta t} 2\Big(-\frac 1 2 [\nabla^2\psi^{n+1}]_{\Delta x} + V^{n} \psi^{n+1}\Big) = \psi^{n} - \frac {\ti \Delta t} 2 \Big(-\frac 1 2 [\nabla^2 \psi^n]_{\Delta x} + V^n \psi^n\Big).
\end{aligned}
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

Crank-Nicolson method is unitary and has the second order local truncation error. This makes it popular in numerical solution of Schrodinger equation.

{{% fold "Note: error of Crank-Nicolson method" %}}

The **Local Truncation Error** is defined as the difference between numerical solution and exact solution led by single time step. We can compute it with the Taylor expansion at time $t$:

$$
\psi^{n+1} = \psi(t + \Delta t) = \psi(t) + \psi_t \Delta t + \frac 1 2 \psi_{tt}\Delta t^2 + \mathcal{O}(\Delta t^3).
$$

Then substitute this into the Crank-Nicolson method iteration, we have

$$
\begin{aligned}
\textrm{l.h.s.} &= (1+\ti \Delta t \hat H /2)\Big(\psi(t) + \psi_t \Delta t + \frac 1 2 \psi_{tt}\Delta t^2 + \mathcal{O}(\Delta t^3) \Big) \\
&=(1+\ti \Delta t \hat H /2) \psi(t) + (1+\ti \Delta t \hat H / 2) (-\ti \hat H \psi(t)) \Delta t + \frac 1 2 \psi_{tt} \Delta t^2 + \mathcal{O}(\Delta t^3) \\
&=(1-\ti \Delta t \hat H /2) \psi(t) + \mathcal{O}(\Delta t^3) \\
&=\textrm{r.h.s.} + \mathcal{O}(\Delta t^3)
\end{aligned}
$$

The exact (up to third order) local truncation error is (considering error of gradient)

$$
\begin{aligned}
T(t) &= \psi(t+\Delta t) - \psi^{n+1}\Big|_{\psi^n = \psi(t)} \\
&\approx \psi(t+\Delta t) -\psi(t) - \ti\Delta t\Big(\frac {1} {4}([\nabla^2 \psi(t+\Delta t)]_{\Delta x} + [\nabla^2 \psi(t)]_{\Delta x}) - \frac {V(t) (\psi(t+\Delta t) + \psi(t))} 2 \Big) \\
&=\psi_t \Delta t + \frac 1 2 \psi_{tt}\Delta t^2 - \ti \Delta t\Big(\frac 1 2 \nabla^2 \psi - V\psi + \frac 1 4 \nabla^2 \psi_t \Delta t + \frac 1 {24}\psi_{xxxx}\Delta x^2 - \frac 1 2 V\psi_t \Delta t -\frac 1 4 V\psi_{tt}\Delta t^2 + \cdots\Big)\\
&=- \ti \Delta t \Big(\frac 1 {24}\psi_{xxxx}\Delta x^2 - \frac 1 4 V \psi_{tt}\Delta t^2 + \cdots \Big)
\end{aligned}
$$

Note that the local error is of third order, thus the approximation in second line (substitute all $\psi^{n+1}$ to exact value $\psi(t+\Delta t)$) would not break the result. Accumulating this local error we can estimate the global error, note $\sum \Delta t = \textrm{Const.}$, we have

$$
\psi(t) - \psi^n \sim \mathcal{O}(\Delta x^2, \Delta t^2).
$$

{{% /fold %}}

Crank-Nicolson method is an implicit method. The price is that we need to solve a linear system with (in 1-D) tri-diagonal matrix. With proper algorithm this would cost as $\mathcal{O}(D)$ of dimension of Hilbert space. For higher dimension, the coefficient matrix by direct Crank-Nicolson method would be more complicate. Then we need to use other optimization. 

<!--{{% fold "Note: Alternating-direction implicit method" %}}

To overcome the heavy cost of solving the linear system in higher dimension, the **alternating-direction implicit(ADI)** is proposed. See [wikipedia/Alternating-direction_implicit_method](https://en.wikipedia.org/wiki/Alternating-direction_implicit_method) for more information. 

One understanding about ADI for Schrodinger equation can be illustrated by the Crank-Nicolson method for a 2-D Schrodinger equation. The time evolution reads

$$
\Big(1 + \frac {\ti \Delta t} 2 \big(-\frac 1 2 \partial_x^2 -\frac 1 2 \partial_y^2 + V^n\big)\Big)\psi^{n+1} = \Big(1 - \frac {\ti \Delta t} 2 \big(-\frac 1 2 \partial_x^2 -\frac 1 2 \partial_y^2 + V^n\big)\Big)\psi^{n}.
$$

{{% /fold %}}-->

{{% fold "Fast & stable Explicit Method" %}}

This is originally proposed in [Computers in Physics 5, 596 (1991)](https://aip.scitation.org/doi/abs/10.1063/1.168415). As it was introduced, it is an explicit algorithm with second-order accurate in time and as stable as Crank-Nicolson method. Here we make a brief discussion for it. 

The algorithm computes the real and imaginary part of wavefunction separately at different time sequence. Letting $\psi = \psi_r + \ti \psi_i$, the Schrodinger equation reads

$$
\frac {\td \psi_r} {\td t} = \hat H \psi_i \ ; \ \frac {\td \psi_i} {\td t} = -\hat H \psi_r.
$$

The algorithm requires $\psi_r, \psi_i$ at different time sequence as $\psi_r^n = \psi_r(t=n \Delta t), \psi_i^n = \psi_i(t = (n+1/2) \Delta t)$. Then the time evolution is performed as

$$
\begin{aligned}
\psi_r^{n+1} &= \psi_r^n + \Delta t \hat H \psi_i^n \\
\psi_i^{n+1} &= \psi_i^n - \Delta t \hat H \psi_r^{n+1}
\end{aligned}
$$

Different from the implicit method, this method requires the initial condition at two different time points as $\psi_r^0 = \textrm{Re}\psi(t=0), \psi_i^0 = \textrm{Im}\psi(t=\Delta t/2)$. Thus to implement this method we may need to compute one step time evolution by implicit method for higher accuracy. 

The probability along two time sequences are computed in a different way as

$$
\begin{aligned}
P(t = n\Delta t) &= (\psi_r^n)^2 + \psi_i^n \psi_i^{n-1} \\
P(t = (n+1/2)\Delta t) &= \psi_r^{n+1} \psi_r^n + (\psi_i^n)^2
\end{aligned}
$$

This explicit method is different from Crank-Nicolson method in the stability. Here we discuss the stability condition of the method. The discretized iteration equation can be expressed as matrix form as

$$
\begin{bmatrix}
\psi_r^{n+1} \\
\psi_i^{n+1}
\end{bmatrix} = 
\begin{bmatrix}
1 & \Delta t \hat H \\
-\Delta t \hat H & 1 - \Delta t^2 \hat H^2
\end{bmatrix}\begin{bmatrix}
\psi_r^{n} \\
\psi_i^{n}
\end{bmatrix}
$$

{{% /fold %}}



# Conclusion

