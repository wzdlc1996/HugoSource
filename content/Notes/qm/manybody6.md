---
title: "Manybody6"
date: 2019-04-07T17:09:13+08:00
draft: true
tags: ["statistical-phys"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "Classnote for the class in PKU: 'Quantum Theory for Manybody System'. In this note we will pay attention on constructing a general framework(Landau theory) for the phase transition, which can be treated as one of the most important physics phenomenas. Then we will use Landau theory to discuss two important phase transition: Bose-Einstein condensation and superconductivity."
---

# General Theory

## Phase Transition

**Equation of state** is defined in the space of three variables:

1.  Temperature \(T\)
2.  External field. Like pressure \(p\) , magnetic field \(H\), etc.
3.  The thermodynamic variable conjugate to the external field. Like volume \(V\) to pressure, magnetization \(M\) to magnetic field, etc.

## Landau Theory

This is a `paradigm` for a class of phase transition problems: `continuous phase transition`.

_[Assumptions]_ : Landau theory is based on the following assumptions:

1.  There exists an order parameter (e.g. the magnetization density \(m\) ) which vanishes in one phase (`disordered phase`) and is non-zero in the other phase (`ordered phase`)
2.  There exists a Landau `functional` \(\mathcal{L}[m(\bm{r}),H,T]\) which is a `continuous` function of its arguments and gives rise to the `exact partition function` of the system by:

    $$\mathcal{Z}=\int \mathcal{D}[m(\bm{r})] \exp\Big(-\beta \mathcal{L}[m(\bm{r}),H,T]\Big)$$

    Where \(H\) is the external field conjugate to \(m\) , and \(T\) is temperature.

_[Note]_ : The second assumption is regarded as the definition of the Landau functional

1.  Landau functional can be derived from the microscopic Hamiltonian of the system by applying the Hubbard-Stratonovich transformation or its classical counterpart

2.  The functional can be constructed phenomenologically:

    -  The only physical constraint of the form of \(\mathcal{L}\) is the `symmetries` of the system
    -  The transition is driven by the change of the functional form of \(\mathcal{L}\)
    -  Near the critical point, one can expand the functional as a power series in \(m\):

       $$\mathcal{L}[m(\bm{r}),H,T]\approx \int \td^d \bm{r} \ \Big(\frac a 2 |\nabla m(\bm{r})|^2 +c_1 hm+d_2 tm^2+c_3 hm^3 +b_4 m^4\Big)$$

       With \(t=T-T_c , h=H-H_c\) . Usually, a few terms can let us see the phase transition. High order terms just make the quantity result more accurate.

## Mean Field Theory

The `mean field approximation` is just the `stationary-phase approximation` for evaluating the partition function with Landau functional:

$$\delta \mathcal{L} \big|_{m(\bm{r})=\bar m} =0 \ ; \ \mathcal{Z} \approx \exp\Big(-\beta \mathcal{L}[\bar m,H,T]\Big)$$

Where the variation of \(\mathcal{L}\) is respect to the field \(m(\bm{r})\) .

# BEC and Superfluidity 
