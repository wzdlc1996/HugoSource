---
title: "Topology in Condensed Matter Physics"
date: 2019-03-28T10:20:31+08:00
draft: true
tags: ["statistical-phys"]
series: ["Condensed-Matter"]
categories: ["Physics"]
toc: true
summary: ""
---

# Introduction to Berry Phase

In the quantum mechanics, the Hilbert space is equipped with a metric defined by the `inner product`. Now suppose we have a `parameter space` in which a quantal system evolves. `At any point in the parameter space, there is a Hilbert space`. Then the concept of curvature of the Hilbert space an be developed and the integral of this curvature can be used to characterize the topology of electronic states. Such curvature of Hilbert space corresponds to the `Berry phase`.

## Berry Phase of a Generic Parameter Space

As what we did in [QM-Dynamics]({{< ref "Notes/qm/dynamics.md#geometric-phase">}}), an adiabatic evolution of system leads to the `Berry phase`: \(\gamma = \ti \int_0^T \bra{\psi(t)}\partial_t \ket{\psi(t)}\td t\). Where \(\ket{\psi(t)}\) is `the instantaneous eigenstate` <mark>(non-degenerate)</mark> of time-dependent Hamiltonian \(\hat H(t)\) . And the berry phase appears at the adiabatic evolution: \(\ket{\psi(t_{\text{final}})}=e^{\ti \gamma}\ket{\psi(t_{\text{ini}})}\)



Now let us make some thing different. `A map from time to parameter space` defines a `path` in the parameter space. Then the Berry phase is:

$$\gamma = \oint_C \td \lambda \cdot A(\lambda)$$

Where \(\lambda\) is the points in parameter space, \(C\) is the path determined by the map \(\lambda(t)\) and it is closed by \(\lambda(t_{\text{final}})=\lambda(t_{\text{ini}})\) . And `Berry connection` \(A(\lambda) = \ti \bra{\psi(\lambda)}\partial_\lambda \ket{\psi(\lambda)}\) , it is a vector field in parameter space.

## Berry Phase of Bloch Electrons

_[Theorem(Bloch)]_ : The eigenstate of the Hamiltonian with a spatial periodic potential:

$$\hat H=\frac {\hat p^2} {2m} + V(\hat x)$$

where \(V(\bm{x}+\bm{R}) = V(\bm{x})\) and \(\bm{R}\) is lattice vector, has the such structure: a phase and a periodic wavefunction:

$$\langle \bm{x}\ket{n,\bm{k}}=e^{\ti \bm{k}\cdot \bm{x}} \bra{\bm{x}} u_{n,\bm{k}}\rangle$$

Where \(\bra{\bm{x}+\bm{R}}u_{n,\bm{k}}\rangle=\bra{\bm{x}}u_{n,\bm{k}}\rangle\) and \(\bm{k} =\sum_{i=1}^d \frac {n_i} {N_i} \bm{b}_i\) is crystal momentum valued in the Brillouin zone.

The eigen-function now can be written for each \(\bm{k}\) point:

$$\hat H_{\bm{k}} \ket{u_{n,\bm{k}}}=\epsilon_{n,\bm{k}} \ket{u_{n,\bm{k}}}$$

Where \(\hat H_{\bm{k}} = e^{-\ti\bm{k}\cdot \bm{x}}\hat He^{\ti\bm{k}\cdot \bm{x}}\).

<mark> We require the \(k\)-space to be periodic, so the 1-d system it is a circle; 2-d system it is a torus</mark>

### Anomalous velocity

In the discussion of semiclassical dynamics of Bloch electrons, we are interested in the velocity of Bloch electrons. Now, the Hamiltonian of \(\bm{k}\) : \(\hat H_{\bm{k}}\) is our Hamiltonian on the parameter space. Correspondingly, we have the velocity operator:

$$\hat {\bm{v}}_{\bm{k}}=\frac {\ti} {\hbar} [\hat H_{\bm{k}},\hat {\bm{x}}]=\frac 1 {\hbar}\nabla_{\bm{k}}\hat H_{\bm{k}}$$

Then the expectation of velocity with the first-order corrected state kets is:

$$\bra{\psi(t)} \hat v_{\bm{k}}\ket{\psi(t)}=\frac 1 \hbar \nabla_{\bm{k}}\epsilon_{n,\bm{k}}+\ti \sum_{n'\neq n}\frac {\bra{u_{n,\bm{k}}}\nabla_{\bm{k}}\hat H_{\bm{k}}\ket{u_{n',\bm{k}}}\bra{u_{n',\bm{k}}}\partial_t \ket{u_{n,\bm{k}}}} {\epsilon_{n',\bm{k}}-\epsilon_{n,\bm{k}}}-\text{c.c.}$$

Where \(\ket{\psi(t)}\) is the time-dependent ket governed by the Hamiltonian of \(\bm{k}(t)\) which moves adiabatically in the Brillouin zone. At time \(t=0\) it starts at state \(\ket{n}\).

{{% fold "Proof"%}}

Let us consider the adiabatic evolution of \(\ket{\psi(t)}\) up to the first order, noting that \(\ket{u_{n,\bm{k}}}\) is the instantaneous eigenstate of \(\hat H_{\bm{k}}\) with \(\bm{k}=\bm{k}(t)\). The solution should has the following form:

$$\ket{\psi(t)}=\sum_m e^{-\ti \int_0^t \epsilon_{m,\bm{k}(s)}\td s/\hbar} a_m(t)\ket{u_{m,\bm{k}(t)}}$$

Substitute this into the Schrodinger equation one has:

$$\ti \hbar \frac {\td} {\td t}\ket{\psi(t)}=\sum_m\Big( \epsilon_{m,\bm{k}(t)}a_m(t)+\ti\hbar \frac {\td a_m(t)} {\td t}\Big)e^{\ti \gamma_m(t)}\ket{u_{m,\bm{k}(t)}}+e^{\ti \gamma_m(t)}a_m(t)\ti \hbar\frac {\td } {\td t}\ket{u_{m,\bm{k}(t)}}$$

Where \(\gamma_m(t)=-\int_0^t \epsilon_{m,\bm{k}(s)}\td s/\hbar\). And:

$$\hat H_{\bm{k}(t)}\ket{\psi(t)}=\sum_{m} e^{\ti\gamma_m(t)}\epsilon_{m,\bm{k}(t)}a_m(t)\ket{u_{m,\bm{k}(t)}}$$

Then we have the equation for each components:

$$\frac {\td a_q(t)} {\td t}+\sum_p a_p(t)\bra{u_{q,\bm{k}(t)}}\frac {\td} {\td t}\ket{u_{p,\bm{k}(t)}}\exp\Big(-\frac {\ti} {\hbar}\int_0^t \td s \big(\epsilon_{p,\bm{k}(s)}-\epsilon_{q,\bm{k}(s)}\big)\Big)=0$$

So the solution should has the form of:

$$a_{q}(t)=\delta_{qn}-\int_0^t \td s \ \sum_p\Big\{\bra{u_{q,\bm{k}(s)}}\frac {\td} {\td s}\ket{u_{p,\bm{k}(s)}}e^{-\frac {\ti} {\hbar}\int_0^t \td s \big(\epsilon_{p,\bm{k}(s)}-\epsilon_{q,\bm{k}(s)}\big)}\Big\}a_p(s)$$

Note that \(\bra{u_{q,\bm{k}(s)}}\frac {\td }{\td s}\ket{u_{p,\bm{k}(s)}}=\frac {\td \bm{k}(s)} {\td s}\cdot \bra{u_{q,\bm{k}}}\nabla_{\bm{k}}\ket{u_{p,\bm{k}}}\) with is of the order of adiabatic evolution speed. To the first order, substitute \(a_q=\delta_{qn}\) into the right-hand-side we have:

$$\begin{aligned}
a_{q}(t)&=\delta_{qn}-\int_0^t \td s \ \bra{u_{q,\bm{k}(s)}}\frac {\td} {\td s }\ket{u_{n,\bm{k}(s)}}e^{-\frac {\ti} {\hbar}\int_0^t \td s \big(\epsilon_{n,\bm{k}(s)}-\epsilon_{q,\bm{k}(s)}\big)} \\
&\approx \delta_{qn} - (1-\delta_{qn}) \frac {\bra{u_{q,\bm{k}(t)}}\frac {\td } {\td t}\ket{u_{n,\bm{k}(t)}}} { \epsilon_{n,\bm{k}(t)}-\epsilon_{q,\bm{k}(t)}} \ti\hbar e^{-\frac {\ti} {\hbar}\int_0^t \td s \big(\epsilon_{n,\bm{k}(s)}-\epsilon_{q,\bm{k}(s)}\big)}
\end{aligned}$$

If one calculate the derivative of the second term above. For the case of \(q\neq n\), apart from the integrated function one have also two additional terms: \(\frac {\td} {\td s}\bra{u_{q,\bm{k}(s)}}\frac {\td }{\td s}\ket{u_{n,\bm{k}(s)}}\) and \(\bra{u_{q,\bm{k}(s)}}\frac {\td }{\td s}\ket{u_{n,\bm{k}(s)}} \frac {\td } {\td s}(\epsilon_{n,\bm{k}(s)}-\epsilon_{q,\bm{k}(s)})\). They are obviously of second order of evolution speed. For the case of \(q=n\), the integral is \(\int_0^t \td s \ \bra{u_{n,\bm{k}(s)}}\frac {\td }{\td s}\ket{u_{n,\bm{k}(s)}}\) which is zero for the normalization of wavefunction: \(\bra{u_{n,\bm{k}(t)}}u_{n,\bm{k}(t)}\rangle=1\) . That is to say, the quantity \(a_n(t)-1\) is always a quantity of second order.

So, we have the time-dependent state up to the first order of \(\frac {\td \bm{k}(t)} {\td t}\):

$$\ket{\psi(t)}=e^{-\frac \ti \hbar \int_0^t \epsilon_{n,\bm{k}(s)}\td s }\Big\{\ket{u_{n,\bm{k}(t)}}+\ti\hbar \sum_{n'\neq n} \frac {\bra{u_{n',\bm{k}(t)}}\frac {\td } {\td t}\ket{u_{n,\bm{k}(t)}}} {\epsilon_{n',\bm{k}(t)}-\epsilon_{n,\bm{k}(t)}} \ket{u_{n',\bm{k}(t)}}\Big\}$$

And the expectation value of the velocity up to the first order is:

$$\begin{aligned}
\bra{\psi(t)}\hat{\bm{v}}_{\bm{k}(t)}\ket{\psi(t)}&= \bra{u_{n,\bm{k}}}\frac 1 \hbar \nabla_{\bm{k}}\hat H_{\bm{k}}\ket{u_{n,\bm{k}}}+\Big\{\bra{u_{n,\bm{k}}}\frac 1 \hbar \nabla_{\bm{k}}\hat H_{\bm{k}}\Big(\ti\hbar\sum_{n'\neq n}\frac {\bra{u_{n',\bm{k}(t)}}\frac {\td } {\td t}\ket{u_{n,\bm{k}(t)}}} {\epsilon_{n',\bm{k}(t)}-\epsilon_{n,\bm{k}(t)}} \ket{u_{n',\bm{k}(t)}}\Big)+\text{c.c.}\Big\} \\
&=
\end{aligned}$$

{{% /fold%}}

# The Su-Schrieffer-Heeger Model

The `Su-Schrieffer-Heeger(SSH)` model was originally proposed to describe the electronic excitation of `polyacetylene`, in which the carbon atoms are arranged in a zigzag chain with alternating long and short bonds.

The nearest-neighbor hopping is larger for short bonds and small for longer bonds. Use \(u\) to note the toggling variable of difference between two kinds of hopping terms, we write the spinless Hamiltonian:

$$\hat H(u)=\sum_{x=-\infty}^{\infty} t_+ \hat a_x^\dagger \hat b_x+t_- \hat a_x^\dagger \hat b_{x-1} +\text{h.c.}$$

Where \(t_{\pm}=t\pm\alpha u\). And \(t\leq 0 \ , \ \alpha \gt 0\).

Now introduce the Fourier transformation of field operator and spinor:

$$\hat \Psi_{k}^\dagger = (\hat a_k^\dagger ,\hat b_k^\dagger)$$

Where \(\hat v_k^\dagger = \frac 1 {\sqrt{N}} \sum_x e^{\ti k x} \hat v_x^\dagger\) , symbol \(v\) denotes \(a,b\). And \(N\) is the number of sites or k-points in Brillouin zone. <mark>Note that we actually deal the system as a finite long 1-d system for simplicity.</mark>

Then we have the Hamiltonian:

$$\hat H(u)=\sum_k\hat \Psi_k^\dagger \begin{bmatrix} 0 & t_+-t_- e^{\ti k} \\ t_++t_- e^{-\ti k} & 0 \end{bmatrix} \hat \Psi_k\equiv \sum_k \hat \Psi_k^\dagger \bm{H}_k(u) \hat \Psi_k$$

And with Pauli matrices, we can write that \(\bm{H}_k(u)=\bm{h}(k,u)\cdot \bm{\sigma}\) , where \(\bm{\sigma}=(\sigma^x,\sigma^y,\sigma^z)\) is the vector of Pauli matrices.

The SSH model has the **Chiral Symmetry**, which means we have a unitary operator \(\hat C\) such that \(\hat C \hat C^\dagger =\hat C^2=1\) and \(\hat C \hat H \hat C^\dagger =-\hat H\) . For SSH model the chiral symmetry comes from \(\sigma^z \bm{H}_k \sigma^z=-\bm{H}_k\). And the Unitary transformation is:

$$\hat C=$$

Chiral symmetry means the vector \(\bm{h}(k,u)\) is restricted to the plane of \(h_x-h_y\), i.e. \(h_z=0\). And when \(u\neq 0\), the spectrum is `gapped`, that is, \(|\bm{h}|\neq 0\) . Then our parameter space of \(\bm{h}\) is a punctured plane: \(\mathbb{R}^2 - \{(0,0)\}\)

When \(k\) varies continuously from \(-\pi\) to \(\pi\) , \(\bm{h}(k,u)\) is a closed curve on \(\mathbb{R}^2-\{(0,0)\}\). (The curve is closed because the Brillouin zone is periodic). Now the number of times a loop in a plane goes around a point is called `winding number`. For any loop in the parameter space, we find its winding number is `invariant` under a continuous transformation that does not cross the original point.

_[Theorem]_ : The winding number of the SSH model is given by:

$$n \bm{e}_z=\frac 1 {2\pi} \oint \td k \ \frac {\bm{h}(k,u)} {|\bm{h}(k,u)|}\times \frac {\partial} {\partial k} \frac {\bm{h}(k,u)} {|\bm{h}(k,u)|}$$

# Quantum Anomalous Hall Effect

Let us consider the `Monolayer Graphene`. With the hexagon structure, there are two different atoms in a cell. The `nearest-neighbor hopping` should has the form of:

$$\hat H=\sum_{<i,j>}(-t)\big(\hat a_i^\dagger \hat b_j+\hat b_j^\dagger\hat a_i\big)$$

Where \(t\sim 2.7\text{eV}\) . With the following set up, \(A,B\) are inequivalent atoms in the lattice, and \(\bm{a}_i \cdot \bm{b}_j=2\pi \delta_{ij}\) :

{{% center %}}<img name="preview" src="/imgs/notes/CondPhy/graphene.png" />{{% /center %}}

![](/home/leonard/Documents/Blog/HugoSource/static/imgs/notes/CondPhy/graphene.png)

$$\begin{aligned}
\bm{\delta}_1&= a(1/2,\sqrt{3}/2)\ ; \ \bm{\delta}_2=a(1/2,-\sqrt{3}/2)\ ;\ \bm{\delta}_3 = a (-1,0)  \\
\bm{a}_1 &= a (3/2, \sqrt{3}/2) \ ; \ \bm{a}_2=a (3/2,-\sqrt{3}/2) \\
\bm{b}_1 &= \frac {2\pi} a (1/3, \sqrt{3}/3) \ ; \ \bm{b}_2 = \frac {2\pi} a (1/3,-\sqrt{3}/3)
\end{aligned}$$

With the Fourier transformation:

$$\begin{aligned}
\hat a_i &= \frac 1 {\sqrt{N}} \sum_{\bm{k}} e^{\ti \bm{k}\cdot \bm{R}_i} \hat a_{\bm{k}} \\
\hat b_i &= \frac 1 {\sqrt{N}} \sum_{\bm{k}} e^{\ti \bm{k}\cdot \bm{R'}_i} \hat b_{\bm{k}}
\end{aligned}$$

Where \(N=\sum_i1 =\sum_{\bm{k}} 1\) is the total number of sites. Then, one has the Hamiltonian as:

$$\hat H=\hat \Psi_{\bm{k}}^\dagger \begin{bmatrix} 0 & t_{\bm{k}} \\ t_{-\bm{k}} & 0 \end{bmatrix} \hat \Psi_{\bm{k}}$$

Where \(t_{\bm{k}}=-t \sum_{\bm{\Delta}\in\{\bm{\delta}_1,\bm{\delta}_2,\bm{\delta}_3\}} e^{\ti \bm{k}\cdot \bm{\Delta}}\) and \(\hat \Psi_{\bm{k}}^\dagger = (\hat a_{\bm{k}}^\dagger ,\hat b_{\bm{k}}^\dagger)\).

{{% fold "Proof"%}}

With the Fourier transformation of the field operators:

$$\begin{aligned}
\hat a_i &= \frac 1 {\sqrt{N}} \sum_{\bm{k}} e^{\ti \bm{k}\cdot \bm{R}_i} \hat a_{\bm{k}} \\
\hat b_i &= \frac 1 {\sqrt{N}} \sum_{\bm{k}} e^{\ti \bm{k}\cdot \bm{R'}_i} \hat b_{\bm{k}}
\end{aligned}$$

Where \(\bm{R}_i\) denotes the position of \(i\)-th \(B\)-like site, and \(\bm{R'}_i\) is the \(i\)-th \(A\)-like site's position, and \(N=\sum_{\bm{k}}1=\sum_i1\) is the total number of sites or \(\bm{k}\)-points. Then the nearest-neighbor should be those:

$$<i,j> \Leftrightarrow \bm{R}_i-\bm{R'}_j \in \{\bm{\delta}_1,\bm{\delta}_2,\bm{\delta}_3\}$$

So:

$$\begin{aligned}
\sum_{<i,j>}\hat a_i^\dagger \hat b_j &= \sum_{i}\sum_{\bm{\Delta}\in\{\bm{\delta}_1,\bm{\delta}_2,\bm{\delta}_3\}} \sum_{\bm{k}_1,\bm{k}_2} \frac 1 N e^{-\ti \bm{k}_1\cdot \bm{R}_i+\ti\bm{k}_2\cdot (\bm{R}_i+\bm{\Delta})} \hat a_{\bm{k}_1}^\dagger \hat b_{\bm{k}_2} \\
&= \sum_{\bm{k}} \hat a_{\bm{k}}^\dagger \hat b_{\bm{k}} \sum_{\bm{\Delta}\in\{\bm{\delta}_1,\bm{\delta}_2,\bm{\delta}_3\}} e^{\ti \bm{k}\cdot \bm{\Delta}}
\end{aligned}$$

Where we used the property in crystal:

$$\frac 1 N \sum_i e^{\ti (\bm{k}-\bm{k'})\cdot \bm{R}_i } =\delta_{\bm{k},\bm{k'}} \ ; \ \frac 1 N \sum_{\bm{k}} e^{\ti \bm{k}\cdot (\bm{R}_i-\bm{R}_j)}=\delta_{ij}$$

Then we have the Hamiltonian:

$$\hat H=\sum_{\bm{k}} t_{\bm{k}} \hat a_{\bm{k}}^\dagger \hat b_{\bm{k}} + t_{-\bm{k}} \hat b_{\bm{k}}^\dagger \hat a_{\bm{k}}$$

And:

$$t_{\bm{k}}=-t \sum_{\bm{\Delta}\in\{\bm{\delta}_1,\bm{\delta}_2,\bm{\delta}_3\}} e^{\ti \bm{k}\cdot \bm{\Delta}}$$

With the operator: \(\hat \Psi_{\bm{k}}^\dagger = (\hat a_{\bm{k}}^\dagger ,\hat b_{\bm{k}}^\dagger)\), it is:

$$\hat H=\hat \Psi_{\bm{k}}^\dagger \begin{bmatrix} 0 & t_{\bm{k}} \\ t_{-\bm{k}} & 0 \end{bmatrix} \hat \Psi_{\bm{k}}$$

q.e.d.

{{% /fold %}}

The energy level of such Hamiltonian is given by:

$$\epsilon(\bm{k})=\pm|t_{\bm{k}}|$$

Where we used the fact that \(t_{\bm{k}}^*=t_{-\bm{k}}\) . And one can draw the band in \(\bm{k}\) space like:

{{% center %}}<img name="preview" src="/imgs/notes/CondPhy/graphene_band.png" />{{% /center %}}

![](/home/leonard/Documents/Blog/HugoSource/static/imgs/notes/CondPhy/graphene_band.png)

Fourier transformation and analyze the degeneracy. Expand at the point of dirac point and find a linear dispersion.

Bilayer graphene
