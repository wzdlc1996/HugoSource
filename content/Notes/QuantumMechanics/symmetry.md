---
title: "Symmetriy in Quantum Mechanics"
date: 2018-11-12T14:38:46+08:00
draft: false
tags: ["Physics", "Math"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
---

### Basic of Group Theory

#### Definitions

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

#### Representation Theory

<em>[Definition]</em> : `Linear Representation` of group `$G$` on `linear space` `$V$` is a map `$R:G\rightarrow \text{GL}(V)$` :

<div>$$\forall g,h\in G \Rightarrow R(g)R(h)=R(gh)$$</div>

This property is usually called as `homomorphism`

<em>[Note]</em> :   one can find that if `$R$` is a representation, then `$\bm{A}R\bm{A}^{-1}$` with `$\bm{A}$` is a non-singular constant matrix. These representation called as `equivalent` to `$R$`

<em>[Definition]</em> : `Adjoint Representation` of Lie groups: the representation space is the Lie Algebra `$\text{L}G$` . The representation is defined as:

<div>$$g x g^{-1} = x R(g) \ \ \forall g\in G, x\in \text{L}G$$</div>

Where `$gxg^{-1} = -\ti \frac {\td} {\td t} (ge^{\ti t x}g^{-1})|_{t=0}$`

<em>[Definition]</em> : `Reducible representations` : `$\exists W \subset V \Rightarrow (\forall g \in G \Rightarrow R(g)V = V)$` . The contrary concept is `Irreducible representations (irrep.)`

#### Orthogonality Theorem

<em>[Theorem]</em> : for any two irreps of (finite) group `$G$` , one has:

<div>$$\sum_{g\in G} R(g)^*_{ij}R'(g)_{i'j'} = \frac {|G|} {\text{dim}R} \delta_{ii'}\delta_{jj'}\delta_{R,R'}$$</div>

Where `$\delta_{R,R'}=1$` when `$R,R'$` are equivalent, it is `$0$` otherwise

<em>[Note]</em> : For `Compact` Lie group, with the definition of `Haar measure` `$\td\mu(g)$` (invariant under action of group elements: `$\td\mu(g'g)=\td \mu(g)$`) , then one has:

<div>$$\int \td \mu(g) R(g)^*_{ij}R'(g)_{i'j'} = \frac {\int \td \mu(g)} {\text{dim}R} \delta_{ii'}\delta_{jj'}\delta_{R,R'}$$</div>

<em>[Definition]</em> : `Character` : `$\chi_R(g) = \text{Tr}R(g)$` <br>
Equivalent representations have the same character , and conjugacy class have the same character.

<em>[Theorem]</em> :

<div>$$\sum_{g\in G} \chi_R(g)^*\chi_R'(g) = |G|\delta_{R,R'}$$</div>

Where `$\delta_{R,R'}=1$` when `$R,R'$` are equivalent, it is `$0$` otherwise

<em>[Theorem]</em> : For `finite group` `$G$` ,  let `$n=|G|$` , `$m$` is the `number of conjugacy classes` , `$r$` is the `number of inequivalent irreps` , `$d_i$` is the `dimemsions of irrep. `$i$`` , then:

<div>$$\begin{aligned}
m&=r \\
\sum_i d_i^2 &= n=|G| \\
n &= k_i d_i \ \ k_i\in \mathbb{N}
\end{aligned}$$</div>

#### Projection Operator

Given a possibly reducible representation `$R$` of group `$G$` , and the characters of one irrep `$\chi_{R'}$` , it is possible to build an irrep. `$R'$` on the representation space of `$R$` :

1.  Denote the orthonormal basis of representation `$R$` by `$\ket{e_i} \ \ i=1,\cdots,\text{dim}R$` . The action of group element `$g$` on the basis is:

    <div>$$\hat g \ket{e_i} = \sum_j \ket{e_j}R(g)_{ji}$$</div>

2.  Build new basis

    <div>$$\ket{\tilde{e}_i} =\sum_{g\in G} \hat g\ket{e_i}\chi_{R'}^* (g) = \sum_{g\in G} \sum_j \ket{e_j}R(g)_{ji}\chi_{R'}^*(g) $$</div>

    These are usually `NOT` linearly independent and not orthonormal.

3.  If `$R$`  contains irrep `$R'$` , then `$\ket {\tilde{e}_i}$` will span a finite dimensional space <mark>(not all `$\ket{\tilde{e}_i})$` are zero</mark> , then the group `$G$` is represented on this subspace as  <mark>(several copies of)</mark> the irrep `$R'$`

### Conservatin Law & Degeneracy

#### Symmetry as Unitary Operator: 1-Particle Hilbert Space

Think of a symmetry group `$G$` acting on the coordinate space, and induces the transformation: `$\bm{x}\rightarrow g\bm{x}$` , This shall induce unitary transformations let:

<div>$$\ket{\bm{x}}\rightarrow \ket{g\bm{x}}$$</div>

Then we can derive the transformation on arbitary single-particle state:

<em>[Theorem]</em> : For single-particle state `$\ket{\psi}$` , when group `$G$` 's element `$g$` acts on coordinate space, it will be transformed to:

<div>$$(g\psi)(\bm{x}) = J^{-1}\psi(g^{-1}\bm{x})$$</div>

Where `$J =|\det \partial_i (g\bm{x})^j| $` is the Jacobian of the transformation.

{{%fold "Proof"%}}
for single particle state `$\ket{\psi}$` , it shall be transformed as:

<div>$$\ket{g\psi} = \int \td\bm{x}  \psi(\bm{x})\ket{g\bm{x}} = \int \psi(g^{-1}\bm{x}) \ket{\bm{x}} J^{-1}\td \bm{x}$$</div>

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

#### Symmetry as Unitary Operator: Fock Space

First of all , we announce an Implicit assumption: <br>
<mark>The vacuum is invariant under symmetry.</mark> (this shall be carefull to treat!)

Symmetry operation `$g$` defined on single particle Hilbert space induces symmetry operation of Fock space. As the tensor product restricted in the (anti-)symmetrized many-body Hilbert space. <br>
One can also consider the symmetry operations on the annihilation/creation operators:

<em>[Theorem]</em> : The creation operator `$\hat \psi^{\dagger}$` transforms as `$\ket{\psi}$` , while annihilation operator `$\hat \psi$` transforms as `$\bra{\psi}$` <br>
With this one can find that the particle number will be invariant under symmetry operation. <br>
For fermion, on can find that:

<div>$$\prod_i \hat{ge_i}^{\dagger} = \det g \prod_i \hat e_i^{\dagger}$$</div>

#### Symmetry as Unitary Operator: Action on Operators

It is similar to the Heisenberg picture. The action of symmetry operation on state can be transfered to the action of operators:

<div>$$\hat O \rightarrow_g \hat {gO}$$</div>

There are two convention usually used:

1.  Like the Heisenberg picture, let the symmetry operation only acts on operator:

    <div>$$\bra {g\psi} \hat O \ket{g\psi} = \bra{\psi} \hat {gO} \ket{\psi} \Rightarrow \hat{gO} = \hat g^{-1} \hat O \hat g$$</div>

2.  Demand the matrix element to be invariant under symmetry operation:

    <div>$$\bra{g\psi}\hat {gO} \ket{g\psi} = \bra{\psi}\hat O\ket{\psi} \Rightarrow \hat {gO} = \hat g \hat O \hat g^{-1}$$</div>

The set of linear operators `$\hat O_i$` can also form a linear representation of the group:

<div>$$\hat {gO_i} = \sum_j \hat {O_j} R(g)_{ji}$$</div>

#### Symmetry Generators as Conserved Observables

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

#### Symmetry & Level Degeneracy

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

### Examples of Symmetry

#### Translation

Continuous translation in 1D open space: `$T_a : x\rightarrow x+1$` for all `$a\in\mathbb{R}$` form a group: `$T_aT_{a'}=T_{a+a'}$`, which is `isomorphic` to `$\mathbb{R}$` <br>
The related unitary operator is:

<div>$$\hat T(a) = \int \ket{x+a}\bra{x}\td x$$</div>

Or use momentum basis: `$\hat T(a) = \exp^{-\ti a \hat p}$` . <br>
This shows that the generator of translation is `$\hat p$` . <br>
The momentum eigenstates `$\ket{p}$` are 1D irreps, for `$\hat T(a)\ket{p} = e^{-\ti a p}\ket{p}$`
