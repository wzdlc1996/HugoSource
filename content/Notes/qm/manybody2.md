---
title: "Manybody: Green's Function"
date: 2019-03-19T18:48:01+08:00
draft: true
tags: ["statistical-phys"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "This is the first classnote for the class in PKU: 'Quantum Theory for Manybody System'. This note gives a review for theory of Green's function. Covers the definition of real-time Green's function of the many body theory at temperature is zero, and the thermal Green's function , or temperature Green's function, and the relation between it and the analytical extension of real-time Green's function: the complex-time Green's function. And discussion how to extract information from Green's function."
---

# Green's Function

# Observables and Green's Functions

## Evaluation of Expectation Values of Observables

Green's function contains sufficient information to evaluate the expectation values of observables. Here, we show some formula about the application of Green's function: to derive some expectation values of observables. We will use the one-particle Green's function in coordinate representation:

$$\ti G(\bm{r},t;\bm{r'},t'):=\Big\langle \mathcal{T}\big\{\hat \psi(\bm{r},t) \hat \psi(\bm{r'},t')^\dagger\big\}\Big\rangle$$

Where \(\hat \psi(\bm{r},t), \hat \psi(\bm{r},t)^\dagger\) are field operators of particle in Heisenberg picture, they are actually the annihilation/creation operator in coordinate basis:

$$\hat \psi(\bm{r},t)^\dagger \equiv \hat \psi^\dagger(\bm{r},t) = \sum_{\alpha} \bra{\bm{r}}\alpha \rangle \hat a_{\alpha}^\dagger (t) $$

Where \(\ket{\alpha}\) is a set of complete single-particle states.

When the system has the spatial-time translation invariance, this Green's function should just be the function of displacement and time interval. So it should has a Fourier transformation form:

$$G(\bm{r},t;\bm{r'},t')=\int \frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4/2}} e^{\ti \bm{k}\cdot (\bm{r}-\bm{r'})-\ti \omega(t-t')}\tilde {G}(\bm{k},\omega)$$

1.  **Kinetic energy**

    The second quantized `kinetic energy` operator has the form of:

    $$\hat T = -\frac {\hbar^2} {2m} \int \td^3 \bm{r} \ \hat \psi^\dagger(\bm{r},t) \nabla^2 \hat \psi(\bm{r},t)$$

    Then we have its expectation value with Green's function as:

    $$\langle \hat T\rangle = \ti \zeta \int \td^3 \bm{r} \ \Big[-\frac {\hbar^2} {2m} \nabla_{\bm{r}} G(\bm{r},t;\bm{r'},t+\epsilon)\Big]_{\bm{r}=\bm{r'},\epsilon\rightarrow 0^+}$$

    Or for spatial-time translation symmetric system:

    $$\langle \hat T\rangle = \ti \zeta \int \frac {\td^3\bm{k}\td \omega} {(2\pi)^{4/2}} e^{\ti \omega \epsilon} \frac {\hbar^2 \bm{k}^2} {2m} \tilde{G}(\bm{k},\omega)$$
