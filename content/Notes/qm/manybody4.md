---
title: "Manybody: Effective Action Theory and Energy Functionals"
date: 2019-03-21T19:20:32+08:00
draft: true
tags: ["statistical-phys"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "This note introduces the basic effective action theory and energy functionals which is useful in computation. The main idea of the effective action theory is that: note that one can always express the physical quantities (especially thermodynamical potentials) like partition functions, grand potentials as some functionals of the exact Green's function of the system. With such functionals, one can make some conserving approximation to handle the divergence in perturbation calculations. And with such framework, the main task for manybody theory is to find the functional with some given constraints and physical thoughts, but not the calculate the exact Green's function."
---

# Generating Functional and Effective Action

## Generating Functional

_[Definition]_ : `External source` is introduced into the system by adding a term to the Hamiltonian. Like:

1.  **Linear Source**:

    $$\hat S=\sum_\alpha \int \td \tau \big\{J_\alpha^*(\tau)\hat a_\alpha(\tau)+\hat a_\alpha^\dagger(\tau)J_\alpha(\tau)\big\}$$

    in which \(J(\tau)\) is Grassmann function for Fermions

2.  **Bilinear Source**

    $$\hat S=\sum_{\alpha,\beta}\int \td\tau_1\td\tau_2 \Big\{\hat a_\alpha^\dagger(\tau_1)\hat a_\beta(\tau_2) V_{\alpha,\beta}(\tau_1,\tau_2)+\hat a_\alpha^\dagger(\tau_1)\hat a_\beta^\dagger (\tau_2)\Delta_{\alpha,\beta}(\tau_1,\tau_2)+\text{c.c.}\Big\}$$

    in which \(V_{\alpha,\beta}\) is a scalar potential, and \(\Delta_{\alpha,\beta}\) is the pairing potential which appears in the superconductivity theory. In the following discussion we will focus on the scalar potential source.

_[Definition]_ : `Generating functional`: is defined as the quotient of the (grand) partition function with external field \(V\) over the (grand) partition function with external field \(V=0\):

$$\mathscr{G}[V]:= \frac {\mathcal{Z}[V]} {\mathcal{Z}[V=0]}=$$
