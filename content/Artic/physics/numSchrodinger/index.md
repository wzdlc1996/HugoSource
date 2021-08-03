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



# Numerical Method for Eigensystem Problem

# Numerical Method for Time Dependent Schrodinger Equation

# Conclusion

