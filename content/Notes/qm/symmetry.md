---
title: "Symmetry in Quantum Mechanics"
date: 2018-11-12T14:38:46+08:00
draft: false
tags: ["quantum","symmetry","math"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "The symmetry theory in quantum mechanics. Including some tricks about solve some problems with it."
---

# Basic of Group Theory

## Definitions

<em>[Definition]</em> : a `Group` is a set `$G$` with a binary multiplication : `$\circ : G\times G\rightarrow G$` defined. satisfying:

1.  `Associativity` : `$f\circ (g\circ h) = (f\circ g)\circ h$` . In the following `$\circ$` will be omitted
2.  `Existence of identity` : `$\exists 1 \in G \Rightarrow(\forall g \in G \Rightarrow 1g=g1=g)$`
3.  `Existence of inverse` : `$\forall g \in G \exists g^{-1}\in G \Rightarrow g^{-1}g = g g^{-1} =1$`

Some concepts about Group are listed following:

-   `Order of group` : `$|G|$` is the number of finite group elements
-   `Order of an element` : `$|g|$` is the `minimal integer` `$n$` s.t. `$g^n=1$` , or `$\infty$` if `$n$` does not exist
-   `Abelian group` :if `$\forall g,h\in G \Rightarrow gh=hg $`
-   `subgroup` : `$H\leq G$` : a `subset` `$H\subset G$` which is also a group under multiplication `$\circ$`
-   `left(right) coset` : `$gH(Hg) := \{gh(hg) : h\in H \}$`
-   `Normal subgroup` : `$H \unlhd G$` a `subgroup` satisfying `$\forall g \in G \Rightarrow gH=Hg$`
-   `Quotient group` : `$G/H$` is the group of cosets for normal subgroup `$H$` of `$G$`:

    <div>$$H\unlhd G \Rightarrow G/H := \{gH : g\in G \} \text{ with } a,b\in G/H \Rightarrow a\circ b :=g_a g_b H \in G/H$$</div>

-   `Conjugacy class` : `$f,h\in G$` are conjugate if `$\exists g \in G \Rightarrow gfg^{-1}=h$` <br> all elements conjugate to `$f$` form the `conjugacy class` of `$f$`
-   `Direct product of groups` : `$G\times H$` is the set of `$(g,h)$` with `$g\in G, h \in H$` , and `$(g',h')\circ(g,h)=(g'g,h'h)\in G\times H$`

## Representation Theory

<em>[Definition]</em> : `Linear Representation` of group `$G$` on `linear space` `$V$` is a map `$R:G\rightarrow \text{GL}(V)$` :

<div>$$\forall g,h\in G \Rightarrow R(g)R(h)=R(gh)$$</div>

This property is usually called as `homomorphism`

<em>[Note]</em> :   one can find that if `$R$` is a representation, then `$\bm{A}R\bm{A}^{-1}$` with `$\bm{A}$` is a non-singular constant matrix. These representation called as `equivalent` to `$R$`

<em>[Definition]</em> : `Adjoint Representation` of Lie groups: the representation space is the Lie Algebra `$\text{L}G$` . The representation is defined as:

<div>$$g x g^{-1} = x R(g) \ \ \forall g\in G, x\in \text{L}G$$</div>

Where `$gxg^{-1} = -\ti \frac {\td} {\td t} (ge^{\ti t x}g^{-1})|_{t=0}$`

<em>[Definition]</em> : `Reducible representations` : `$\exists W \subset V \Rightarrow (\forall g \in G \Rightarrow R(g)V = V)$` . The contrary concept is `Irreducible representations (irrep.)`

## Orthogonality Theorem

<em>[Theorem]</em> : for any two irreps of (finite) group `$G$` , one has:

<div>$$\sum_{g\in G} R(g)^*_{ij}R'(g)_{i'j'} = \frac {|G|} {\text{dim}R} \delta_{ii'}\delta_{jj'}\delta_{R,R'}$$</div>

Where `$\delta_{R,R'}=1$` when `$R,R'$` are equivalent, it is `$0$` otherwise

<em>[Note]</em> : For `Compact` Lie group, with the definition of `Haar measure` `$\td\mu(g)$` (invariant under action of group elements: `$\td\mu(g'g)=\td \mu(g)$`) , then one has:

<div>$$\int \td \mu(g) R(g)^*_{ij}R'(g)_{i'j'} = \frac {\int \td \mu(g)} {\text{dim}R} \delta_{ii'}\delta_{jj'}\delta_{R,R'}$$</div>

<em>[Definition]</em> : `Character` : `$\chi_R(g) = \text{Tr}R(g)$` <br>
Equivalent representations have the same character , and conjugacy class have the same character.

<em>[Theorem]</em> :

<div>$$\sum_{g\in G} \chi_R(g)^*\chi_{R'}(g) = |G|\delta_{R,R'}$$</div>

Where `$\delta_{R,R'}=1$` when `$R,R'$` are equivalent, it is `$0$` otherwise

<em>[Theorem]</em> : For `finite group` `$G$` ,  let `$n=|G|$` , `$m$` is the `number of conjugacy classes` , `$r$` is the `number of inequivalent irreps` , `$d_i$` is the `dimemsions of irrep.` `$i$` , then:

<div>$$\begin{aligned}
m&=r \\
\sum_i d_i^2 &= n=|G| \\
n &= k_i d_i \ \ k_i\in \mathbb{N}
\end{aligned}$$</div>

## Projection Operator

Given a possibly reducible representation `$R$` of group `$G$` , and the characters of one irrep `$\chi_{R'}$` , it is possible to build an irrep. `$R'$` on the representation space of `$R$` :

1.  Denote the orthonormal basis of representation `$R$` by `$\ket{e_i} \ \ i=1,\cdots,\text{dim}R$` . The action of group element `$g$` on the basis is:

    <div>$$\hat g \ket{e_i} = \sum_j \ket{e_j}R(g)_{ji}$$</div>

2.  Build new basis

    <div>$$\ket{\tilde{e}_i} =\sum_{g\in G} \hat g\ket{e_i}\chi_{R'}^* (g) = \sum_{g\in G} \sum_j \ket{e_j}R(g)_{ji}\chi_{R'}^*(g) $$</div>

    These are usually `NOT` linearly independent and not orthonormal.

3.  If `$R$`  contains irrep `$R'$` , then `$\ket {\tilde{e}_i}$` will span a finite dimensional space <mark>(not all `$\ket{\tilde{e}_i})$` are zero</mark> , then the group `$G$` is represented on this subspace as  <mark>(several copies of)</mark> the irrep `$R'$`

# Conservatin Law & Degeneracy

## Symmetry as Unitary Operator: 1-Particle Hilbert Space

Think of a symmetry group `$G$` acting on the coordinate space, and induces the transformation: `$\bm{x}\rightarrow g\bm{x}$` , This shall induce unitary transformations let:

<div>$$\ket{\bm{x}}\rightarrow \ket{g\bm{x}}$$</div>

Then we can derive the transformation on arbitary single-particle state:

<em>[Theorem]</em> : For single-particle state `$\ket{\psi}$` , when group `$G$` 's element `$g$` acts on coordinate space, it will be transformed to:

<div>$$(g\psi)(\bm{x}) = J^{-1}\psi(g^{-1}\bm{x})$$</div>

Where `$J =|\det \partial_i (g\bm{x})^j| $` is the Jacobian of the transformation.

{{%fold "Proof"%}}
for single particle state `$\ket{\psi}$` , it shall be transformed as:

<div>$$\ket{g\psi} = \int \td\bm{x}  \psi(\bm{x})\ket{g\bm{x}} = \int \psi(g^{-1}\bm{x}) \ket{\bm{x}} J^{-1}\td^3 \bm{x}$$</div>

Then we have

<div>$$(g\psi)(\bm{x}) \equiv \langle \bm{x}\ket{g\psi} = J^{-1}\psi(g^{-1}\bm{x})$$</div>
{{%/fold%}}

Usually, we assume `$J=1$` so that we do not need to worry about normalization. <br>
Then we can find that the operation satisfies the `Associativity` :

<div>$$(h(g\psi))(\bm{x}) = ((hg)\psi)(\bm{x})$$</div>

Moreover , one can define the unitary operator of the operation `$g$` with a orthonormal basis `$\ket{e_i}$` :

<div>$$\hat g = \sum_i \ket{ge_i} \bra{e_i}$$</div>

Then one can find that `$\ket{g\psi} = \hat g \ket{\psi}$` <br>
Then the matrix representation will be a `unitary representation` of `$g$` :

<div>$$(\bm{U}(g))_{ij} = \bra{e_i} \hat g \ket{e_j} =\langle e_i \ket{ge_j}$$</div>

It is easy to check that:

<div>$$\bm{U}(gh) = \bm{U}(g)\bm{U}(h)$$</div>

## Symmetry as Unitary Operator: Fock Space

First of all , we announce an Implicit assumption: <br>
<mark>The vacuum is invariant under symmetry.</mark> (this shall be carefull to treat!)

Symmetry operation `$g$` defined on single particle Hilbert space induces symmetry operation of Fock space. As the tensor product restricted in the (anti-)symmetrized many-body Hilbert space. <br>
One can also consider the symmetry operations on the annihilation/creation operators:

<em>[Theorem]</em> : The creation operator `$\hat \psi^{\dagger}$` transforms as `$\ket{\psi}$` , while annihilation operator `$\hat \psi$` transforms as `$\bra{\psi}$` <br>
With this one can find that the particle number will be invariant under symmetry operation. <br>
For fermion, on can find that:

<div>$$\prod_i \hat{ge_i}^{\dagger} = \det g \prod_i \hat e_i^{\dagger}$$</div>

## Symmetry as Unitary Operator: Action on Operators

It is similar to the Heisenberg picture. The action of symmetry operation on state can be transfered to the action of operators:

<div>$$\hat O \rightarrow_g \hat {gO}$$</div>

There are two convention usually used:

1.  Like the Heisenberg picture, let the symmetry operation only acts on operator:

    <div>$$\bra {g\psi} \hat O \ket{g\psi} = \bra{\psi} \hat {gO} \ket{\psi} \Rightarrow \hat{gO} = \hat g^{-1} \hat O \hat g$$</div>

2.  Demand the matrix element to be invariant under symmetry operation:

    <div>$$\bra{g\psi}\hat {gO} \ket{g\psi} = \bra{\psi}\hat O\ket{\psi} \Rightarrow \hat {gO} = \hat g \hat O \hat g^{-1}$$</div>

The set of linear operators `$\hat O_i$` can also form a linear representation of the group:

<div>$$\hat {gO_i} = \sum_j \hat {O_j} R(g)_{ji}$$</div>

## Symmetry Generators as Conserved Observables

<em>[Theorem]</em> : The Hamiltonian is invariant under the action of `$g$` , which means that:

<div>$$\bra{g\psi} \hat H \ket{g\phi} = \bra{\psi} \hat H \ket{\phi}$$</div>

for all states `$\psi,\phi$` , then for the unitary symmetry `$\hat g$` , one have:

<div>$$[\hat H ,\hat g]=0$$</div>

In quantum mechanics, the <mark>generators of continuous unitary symmetry corresponds to conserved observables</mark> . <br>
For generator `$X$`, and unitary symmetry `$\Phi : g \rightarrow \hat g \equiv \hat \Phi(g)$` , the corresponding observables is:

<div>$$\hat X = -\ti \hat \Phi(e^{\ti \theta X})^{-1} \frac {\td} {\td \theta} \hat \Phi(e^{\ti \theta X})$$</div>

which is independent of `$\theta$` value. <br>

<em>[Theorem]</em> : When `$\hat \Phi(e^{\ti \theta X})$` is a symmetry unitary operator, which means that `$[\hat \Phi(e^{\ti\theta X}),\hat H]=0$` . Then
`$\hat X$` is an Hermitian, and it commute with `$\hat H$` , which means that it is a conserved observable.

{{%fold "Proof"%}}
Using `$\hat \Phi(e^{\ti\theta X})^{-1} \hat H \hat \Phi(e^{\ti\theta X}) = \hat H$` , take `$\frac {\td} {\td \theta}$` at `$\theta=0$` , and notice that

<div>$$\hat X = -\ti \frac {\td} {\td \theta} \hat \Phi(e^{\ti\theta X}) \Big|_{\theta=0} = \ti \frac {\td} {\td \theta} \hat \Phi(e^{\ti \theta X})^{-1} \Big|_{\theta=0}$$</div>

one have:

<div>$$\ti \hat X \hat H -\ti \hat H \hat X =0 \Rightarrow [\hat H ,\hat X]=0$$</div>

{{%/fold%}}

## Symmetry & Level Degeneracy

A symmetry `$g$` satisfies `$[\hat H , \hat g]=0$` , which means that `$g$` does not change energy eigenvalues. <br>
Degenerate energy eigenstates form a representation space of the symmetry group. Representation of `$g$` is `block diagonalized` in energy eigenbasis. <br>
Specially, nondegenerate energy eigenstates are 1-dimension representations.

<em>[Theorem]</em> : The existence of non-commuting symmetry generators:

<div>$$\hat X, \hat Y \Rightarrow ([\hat H,\hat X]=[\hat H,\hat Y]=0 ) \text{ and } ([\hat X,\hat Y]\neq 0)$$</div>

`usually` implies degeneracy of energy levels.

<em>[Note]</em> :

1.  If `$[\hat X,\hat Y]=\ti z$` is a non-zero c-number, there must be degeneracy. For unitary operator `$e^{\ti \hat X}$` changes eigenvalue of `$\hat Y$` by `$z$` (Landau level)

2.  If `$[\hat X,\hat Y]$` is not a c-number, there may be a non-degeneracy energy level. `IF` the state is vanished by commutators of all order:

    <div>$$0=[\hat X,\hat Y]\ket{E} = [\hat X,[\hat X,\hat Y]]\ket{E}=[\hat Y,[\hat X,\hat Y]]\ket{E}=\cdots$$</div>
    (ground state pf electron in hydrogen atom(ignore spin) with angular momentum `$L=0$` , take `$\hat X =\hat L_x, \hat Y=\hat L_y$`)

# Examples of Symmetry

## Translation

Continuous translation in 1D open space: `$T_a : x\rightarrow x+1$` for all `$a\in\mathbb{R}$` form a group: `$T_aT_{a'}=T_{a+a'}$`, which is `isomorphic` to `$\mathbb{R}$` <br>
The related unitary operator is:

<div>$$\hat T(a) = \int \ket{x+a}\bra{x}\td x$$</div>

Or use momentum basis: `$\hat T(a) = \exp^{-\ti a \hat p}$` . <br>
This shows that the generator of translation is `$\hat p$` . <br>
The momentum eigenstates `$\ket{p}$` are 1D irreps, for `$\hat T(a)\ket{p} = e^{-\ti a p}\ket{p}$`

## Discrete Translation

Discrete translation(`lattice translation`): `$T: x\rightarrow x+a$` for a constant `$a\neq 0$`. The discrete translation group is the cyclic group generated by `$T$` : `$\{T^n\}$` for all `$n\in \mathbb{Z}$`

1.  The unitary operator is still `$\hat T = \exp(-\ti a \hat p)$`
2.  There is no associated Lie algebra and conserved observables(discrete group)
3.  Unitary irreps are `1D` , `$\hat T = e^{\ti \theta}$` with real `$\theta$` mod `$2\pi$`
4.  Momentum eigenstates `$\ket{p+\frac 2\pi n/a}$` for `$n\in\mathbb{Z}$` belong to the same 1D irrep.
5.  `Bloch's Theorem` : for system with the above translation symmetry, `$[\hat H,\hat T]=0$` , the m-th energy eigenstate of irrep `$\hat T = e^{-\ti a \hat p}$` will be a superposition of `$\ket{p+nG}$` , `$\ket{E_m,p}=\sum_n u_{mn}\ket{p+nG}$` Where `$n\in\mathbb{Z}$` and `$G=2\pi/a$` (the reciprocal lattice vector)
    And the `Bloch function` `$u_m(x)=\sum_{n}u_{mn}e^{2\pi \ti n(x/a)}$` is periodic: `$u_m(x+a)=u_m(x)$`
6.  The `Bloch function` : `$u_m(x)$` (or Fourier coefficients `$u_{mn}$`) and the `crystal momentum` `$p$` in first `Brillouin zone` : `$-\pi/a\leq p \leq \pi/a$` in 1D case, define the eigenstates.

# Selection Rule

## Symmetry Constraints on Matrix Elements
In general we want to consider the matrix element: `$(f_k)_{ij}=\bra{\phi_i}\hat f_k\ket{\psi_j}$` . Where `$i(j)$` indicates that `$\phi_i(\psi_j)$` is one of the degenerate energy levels of irrep. `$R_{\phi}(R_{\psi})$`
And `$k$` means that `$\hat f_k$` belongs to a set of operators forming irrep. `$R_f$` .
Then these matrix elements shall form a tensor product representation `$R_f\otimes R_{\phi}^{*}\otimes R_{\psi}$`

1.  `$\hat f_k$` form a representation, in the sense that `$\hat g \hat f_k \hat g^{-1}=\sum_{k'}\hat f_{k'}R_f(g)_{k'k}$`
2.  `$R_{\phi}^{*}$` is the conjugate representation of `$R_{\phi}$` , `$R_{\phi}^{*}(g)=[R_{\phi}(g)]^{*}$` it is easy to check it is also a representation. More over:
    `$\bra{g\phi_i}=\bra{\phi_i}\hat g^{\dagger}=\sum_{i'}R_{\phi}^{*}(g)_{i'i}\bra{\phi_{i'}}$`
3.  `$(f_k)_{ij}$` form a tensor represetntation in the sense that:

    <div>$$\begin{aligned}
    (f_k)_{ij}&=\bra{\phi_i}\hat f_k \ket{\psi_j} \equiv \bra{\phi_i}\hat g^{-1}\hat g \hat f_k \hat g^{-1}\hat g \ket{\psi_j} \\
    &= \sum_{i',j',k'} R_{\phi}^{*}(g)_{i'i}R_f(g)_{k'k}R_{\psi}(g)_{j'j} \bra{\phi_{i'}} \hat f_{k'} \ket{\psi_{j'}} \\
    &= \sum_{i',j',k'} (f_{k'})_{i'j'} R_f(g)_{k'k}R_{\phi}^{*}(g)_{i'i}R_{\psi}(g)_{j'j}
    \end{aligned}$$</div>

Sum over `$g$`, by the orthogonality theorem, we have:

<em>[Theorem(Selection Rule)]</em> : the matrix element `$(f_k)_{ij}$` will vanish if the tensor representation `$R_f\otimes R_{\phi}^{*}\otimes R_{\psi}$` , after decomposed into direct sum of irreps, does `NOT` contain trivial representation.

## Examples: Selection Rule

-   `Parity selection rule`
    Consider group `$\{1,I\}$` generated by spatial inversion `$I$` . It has only two irreps., trivial(even) one and odd representation: `$\{1,-1\}$`
    -   States & Operators are classified into `parity odd` (u) and `parity even` (g) classes
    -   Atomic orbitals of even(odd) angular momentum are parity even(odd)
    -   The matrix element is nonzero only for `$\bra{g}\hat O_g\ket{g'}$` , `$\bra{g}\hat O_u\ket{u}$` , `$\bra{u}\hat O_g\ket{u'}$` , `$\bra{u}\hat O_u\ket{g}$`
    -   Main contribution to optical transitions (absorption/emission of one photon) is from `$\bra{\phi}\bm{E}\cdot \bm{r}\ket{\psi}$` , the operator is parity odd. So initial and final states should have `opposite parity`
    -   `Pseudo-vector` : vectors that are even under inversion.
    -   `Pseudo-scalar` : scalars that are odd under inversion.
-   `Raman selection rule`
    absorb a photon of polarization `$\bm{E}_{\text{in}}$` and emit a photon of polarization `$\bm{E}_{\text{out}}$` , the relevant matrix element is `$\bra{\text{final}}(\bm{E}_{\text{out}}\cdot \bm{r})(\bm{E}_{\text{in}\cdot \bm{r}})\ket{\text{initial}}$` .
    -   If the system have `$C_{4v}$` symmetry, the initial state is of trivial representation `$A_1$` , `$\bm{E}_{\text{in}}$`, `$\bm{E}_{\text{out}}$` are along `$x,y$` directions respectively, then the final state must have the symmetry of function `$xy$` , or `$B_2$` representation.

## Examples: Symmetry-allowed Hamiltonian

In many cases the symmetry of the system is known, but exact Hamiltonian is not. The goal is to write down a Hamiltonian consistent with the symmetry.

-   Then general rule: find out representation `$\hat g$` of all symmetry generators, and demand that `$\hat g^{-1}\hat H \hat g = \hat H$`
-   For continuous symmetry, `$\hat H$` should commute with all symmetry generators, or carry vanishing symmetry quantum number.

There are some examples:

-   `Translation symmetry`
    For each monomial of operators, the sum of momenta of the factors must be zero. That means that Hamiltonian can only contain those items like: `$\hat \psi^{\dagger}(p)\hat \psi(p)$` , `$\hat \psi(-p)\hat \psi(p)$` , `$\hat \psi^{\dagger}(p_1)\hat \psi^{\dagger}(p_2)\hat \psi(p_3)\hat \psi(p_1+p_2-p_3)$`
-   `Point group symmetry`
    Generally, free particle Hamiltonian can be written as:

    <div>$$\hat H = \int \hat {\bm{\psi}}^{\dagger}(\bm{k}) \bm{H}(\bm{k})\hat {\bm{\psi}}(\bm{k}) \td^3 \bm{k}$$</div>

    Where `$\hat{\bm{\psi}}(\bm{k})$` is a column vector of annihilation operators.

    Under `$g$` there is :

    <div>$$\begin{aligned}
    \hat{\bm{\psi}}(\bm{k}) &\rightarrow_g R(g) \hat{\bm{\psi}}(g\bm{k}) \\
    \hat H &\rightarrow_g \int \hat {\bm{\psi}}^{\dagger}(g\bm{k})R(g)^{-1} \bm{H}(\bm{k})R(g)\hat {\bm{\psi}}(\bm{k}) \td^3 \bm{k}
    \end{aligned}$$</div>

    If `$g$` is symmetry transformation, Hamiltonian should be invariant. Then `$H(g\bm{k})=R(g)^{-1}H(\bm{k})R(g)$`
    This will be one of the constraints of the Hamiltonian.
