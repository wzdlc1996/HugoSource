---
title: "Symmetry Breaking and Phase Transition"
date: 2019-03-28T10:20:31+08:00
draft: true
tags: ["statistical-phys","symmetry"]
series: ["Condensed-Matter"]
categories: ["Physics"]
toc: true
summary: "Phase transition is an important part of the theory for solid state. Usually, phase transition is corresponding to some symmetry breaking, which yields the singularity of partition functions at the thermodynamics limit. We will use the language of quantum field theory to show the basic theory of the phase transition. In this note we will show a typical phase transition together with the spontaneous symmetry breaking: XY model and KT transition"
---

# XY Model

`XY model` is a spin-system. In the `classical case` it is defined as a \(d\)-dimensional cubic lattice with every lattice point has a spin \(\bm{I}_i=I(\cos\theta_i, \sin \theta_i)\)  .  Then the Hamiltonian is:

$$H=-J \sum_{<i,j>} \bm{I}_i \cdot \bm{I}_j=-J I^2 \sum_{<i,j>}\cos (\theta_i-\theta_j)$$

Where \(<i,j>\) runs over all neighboring lattice points. And the partition function of the system is given by:

$$\mathcal{Z}(\{\bm{h}_i\})=\sum\exp\Big(-\beta \big(H-\sum_{i=1}^N \bm{h}_i\cdot \bm{I}_i\big)\Big)$$

Where the summation is taken over all possible state of the system, or or possible field(defined on a discrete lattice \(\theta_i\)). Where \(\bm{h}_i\) is the auxiliary field:

$$\langle \bm{I}_i\rangle=\frac 1 {\beta} \nabla_{\bm{h}_i} \log \mathcal{Z}(\{\bm{h}_i\}) \equiv -\frac {\partial F} {\partial \bm{h}_i}$$

_[Theorem]_ : For the special case of all \(\bm{h}_i=0\) , the average of local spin is zero:

$$\langle \bm{I}_i\rangle \Big|_{\bm{h}_j=0} =0$$

{{< fold "Proof">}}

Because the Hamiltonian now is only dependent of \(\theta_i-\theta_j\) , so we know that it should be invariant under the transformation of: \(\theta_i\rightarrow \theta_i+\pi\) . Which means:

$$\begin{aligned}
\langle \bm{I}_i\rangle &= (I \langle \cos \theta_i\rangle , I \langle \sin \theta_i\rangle) \\
&=(I \langle \cos (\theta_i+\pi)\rangle , I \langle \sin (\theta_i+\pi)\rangle) \\
&= - \langle \bm{I}_i\rangle
\end{aligned}$$

q.e.d.

{{< /fold>}}

Such theorem have a generalized form for arbitrary system:

_[Theorem]_ : If the Hamiltonian of a system is invariant under a transformation, then a physical quantity that is `NOT` invariant under this transformation is `zero on average` .

However, following this argument, everything in ths world would become(in a thermal equilibrium state) homogeneous and extended owing to translation symmetry, or everything would become round owing tho rotational symmetry. The reason why so many structures are present in the real world is that we are dealing with the macroscopic world of \(N\rightarrow \infty\) in which a singularity arises in partition function. (In the real world, \(N\sim 10^{23}\) but not infinity. However we will not give a precise mathematical discussion but a physical picture.)

Now we have the picture of the XY-model with respect to the temperature:

1.  At \(T=0\) , the main contribution among states should be the those who have the lowest energy, or the neighboring spin is parallel with \(\theta_i-\theta_j=\pm \pi\) .

2.  At finite temperature, the main contribution among states should be those who have the lowest free energy: \(F=E-TS\) (the corollary of the maximum entropy principle with fixed volume). So the system can "sacrifice" some energy-loss but make \(S\) a little large, or a little disorder.

However, at any temperature, spins are always tend to be parallel to each other. Then the correlation between them should be helpful for us to understand the system.

## Spin Correlation Function
