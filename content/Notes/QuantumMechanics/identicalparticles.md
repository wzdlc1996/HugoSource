---
title: "Identical Particles"
date: 2018-11-12T13:42:48+08:00
draft: false
tags: ["Physics"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
---

# Outline

`Fock space` is the direct sum of identical particle Hilbert space for all different particle numbers:

<div>$$\mathcal{F}=\mathcal{H}_0\oplus \mathcal{H}_1 \oplus\cdots$$</div>

Many-body Hilbert space of fermions and bosons is (Anti-)Symmetrized tensor product space:

-   `$n$`-body Hilbert space for identical particles `$\mathcal{H}_n$` is a subspace of `$(\mathcal{H})^{\otimes n}$`
-   `$\mathcal{H}_n$` is the image of multi-linear (anti-)symmetrization mapping:

    <div>$$\mathcal{S}:(\mathcal{H}_1)^{\otimes n}\rightarrow \mathcal{H}_n$$</div>

-   The (anti-)symmetrization mapping is defined on a tensor product basis as:

    <div>$$\begin{aligned}
    \mathcal{S}:\ket{1}\cdots\ket{n}\mapsto \frac 1 {\sqrt{n!}}\sum_{\sigma\in S_n} \ket{\sigma(1)}\cdots\ket{\sigma(n)} \ \ & \text{for boson} \\
    \mathcal{S}:\ket{1}\cdots\ket{n}\mapsto \frac 1 {\sqrt{n!}}\sum_{\sigma\in S_n} (-1)^{\sigma} \ket{\sigma(1)}\cdots\ket{\sigma(n)} \ \ & \text{for fermion}
    \end{aligned}$$</div>

Second quantization language and some simple many-body wavefunction

# The Fock Space

## Permutation Group

<em>[Definition]</em> : `permutation` is a map : `$\sigma=\begin{pmatrix}1 & 2 & \cdots & n \\ \sigma(1) & \sigma(2) & \cdots & \sigma(n)\end{pmatrix}\equiv\{j,\sigma(j)\}$` means replacing `$j$` by `$\sigma(j)$` , and `$\sigma(j)\in\{1,2,\cdots,n\}$` <br>
<em>[Definition]</em> : `Transposition` : `$(i,j)$` means exchange `$i$` and `$j$` while keeping others fixed. <br>
<mark>Any permutation can be represented as a product of transpositions of neighbors `$(i,i+1)$`</mark> , and the number of transpositions is defined as the parity of the permutation. <br>
The `sign(signature)` of a permutation : `$(-1)^{\sigma}$` , is `$+1$` for even one and `$-1$` for odd one. It can be rewritten as:

<div>$$(-1)^{\sigma} = \prod_{i\lt j} \text{sgn }(\sigma(j)-\sigma(i))$$</div>

And satisfies `$(-1)^{\sigma\cdot \mu} = (-1)^{\sigma}(-1)^{\mu}$` <br>
There are only two 1-d representation of permutation group:

1.  the trivial one `$R(\sigma)=1$`
2.  the alternative one `$R(\sigma)=(-1)^{\sigma}$`

## Traditional Treatment

The configuration of `$n$` indentical particles `$x=(\bm{x}_1,\bm{x}_2,\cdots,\bm{x}_n)$` has the same physical picture with all permutations of `$\bm{x}_1,\cdots,\bm{x}_n$` <br>
This means that `$n$`-body state: `$\psi(x)=\psi(\bm{x}_1,\bm{x}_2,\cdots,\bm{x}_n)$` should be `'invariant'` under permutations of `$\bm{x}_i$` : <br>
<mark>the wavefunction may get complex phase, but the density matrix should be the same</mark>

<em>[Assumption]</em> : the n-body wavefunction is a 1-d representation of the permutation group `$S_n$` , then there are only two possibilities: bosons and fermions.

-   Being a 1-d representation means, for `$\sigma \in S_n$` ,

    <div>$$\psi(\bm{x}_{\sigma(1)},\cdots,\bm{x}_{\sigma(n)}) = R(\sigma) \psi(\bm{x}_1,\cdots,\bm{x}_n)$$</div>

    Where `$R(\sigma)$` is a complex number of unit modulus.
    {{%fold "Note"%}}

the requirement of 1-d representation is come from we believe the wavefunction (with 1 component) can be completely discribe the many-body state

    {{%/fold%}}
-   `Bosons` : correspond to the trivial representation of permutation group, which means any permutation has no effect on the wavefunction. Integer spin particles. <br>
-   `Fermions` : correspond to the alternative representation of permutation group, which means pariwise exchage changes the sign of the wavefunction. Half-odd-integer spin particles.
-   In 2-dimensional space, braiding group instead of permutation group should be considered, there are paticles(anyons) beyond bosons and fermions.

## The Structure of Many-body Hilbert Space

<em>[Definition]</em> : `Fock space` : the Hilbert space of identical particles with indefinite particle number, is the `direct sum` of 0-partile & 1-particle & ... Hilbert space:

<div>$$\mathcal{F}= \mathcal{H}_0 \oplus \mathcal{H}_1 \oplus \mathcal{H}_2 \oplus \cdots$$</div>

<em>[Definition]</em> : 0-particle Hilbert space: noted as `$\mathcal{H}_0$` , is a 1-d Hilbert space with only the `vacuum state` : `$\ket{0}$` <br>
<em>[Definition]</em> : 1-particle Hilbert space: noted as `$\mathcal{H}_1$` , is the linear space of 1-body wavefunction. can be finite or infinite dimension.

<em>[Definition]</em> : `$n(\gt2)$`-particle Hilbert space: noted as `$\mathcal{H}_n$` , is a subspace of the tensor product `$(\mathcal{H}_1)^{\otimes n} \equiv \bigotimes_{i=1}^n \mathcal{H}_1$`, with (anti-)symmetrization between the factor `$\mathcal{H}_1$`s

-   There shall be a (linear) map, maps the direct product state to the state of `$\mathcal{H}_n$` like:

    <div>$$\mathcal{S} : (\mathcal{H}_1)^{\otimes n} \rightarrow \mathcal{H}_n ; \ \ \ket{\psi_1}\otimes\ket{\psi_2}\otimes \cdots \otimes \ket{\psi_n} \mapsto \ket{\psi_1,\psi_2,\cdots,\psi_n}$$</div>

    And permutations of `$\psi_i$` produce the same n-body state, up to a phase.
-   `Bosons`: permutations of `$\psi_i$` are trivial:

    <div>$$\mathcal{S} : \ket{\psi_1}\cdots\ket{\psi_n} \mapsto \frac 1 {\sqrt{n!}} \sum_{\sigma \in S_n} \ket{\psi_{\sigma(1)}}\cdots\ket{\psi_{\sigma(n)}}$$</div>

    And

    <div>$$\ket{\psi_{\sigma(1)},\cdots,\psi_{\sigma(n)}} = \ket{\psi_1,\cdots,\psi_n}$$</div>

    And the wavefunction is the coefficient on the coordinate eigenstate basis `$\ket{\bm{x}_i}$` , we have:

    <div>$$\psi(\bm{x}_1,\cdots,\bm{x}_n) = \frac 1 {\sqrt{n!}} \sum_{\sigma\in S_n}\prod_i \psi_{\sigma(i)}(\bm{x}_i)\equiv \frac 1 {\sqrt{n!}}\text{perm}[\psi_j(\bm{x}_i)]$$</div>

    The norm of the wavefunction is:

    <div>$$\sqrt{\text{perm}[\langle \psi_i |\psi_j\rangle]} = \sqrt{\sum_{\sigma\in S_n}\prod_i \langle \psi_i|\psi_{\sigma(i)}\rangle}$$</div>

-   `Fermions`: permutations of `$\psi_i$` produce the factor `$(-1)^{\sigma}$` :

    <div>$$\mathcal{S} : \ket{\psi_1}\cdots\ket{\psi_n} \mapsto \frac 1 {\sqrt{n!}} \sum_{\sigma \in S_n} (-1)^{\sigma} \ket{\psi_{\sigma(1)}}\cdots\ket{\psi_{\sigma(n)}}$$</div>

    And

    <div>$$\ket{\psi_{\sigma(1)},\cdots,\psi_{\sigma(n)}} =(-1)^{\sigma} \ket{\psi_1,\cdots,\psi_n}$$</div>
    And the wavefunction is the coefficient on the coordinate eigenstate basis `$\ket{\bm{x}_i}$` , we have:

    <div>$$\psi(\bm{x}_1,\cdots,\bm{x}_n) = \frac 1 {\sqrt{n!}} \sum_{\sigma\in S_n}(-1)^{\sigma} \prod_i \psi_{\sigma(i)}(\bm{x}_i) = \frac 1 {\sqrt{n!}}\det[\psi_j(\bm{x}_i)]$$</div>

    The norm of the wavefunction is:

    <div>$$\sqrt{\det[\langle \psi_i|\psi_j\rangle]}$$</div>

## Basis of Many-body Hilbert Space

Given a complete orthonormal basis `$\{\ket{j}\}_{j=1}^{J}$` , we can construct the basis of `$\mathcal{H}_n$` :

-   `Bosons`: basis are `$\ket{i_1,i_2,\cdots,i_n}$` , for all `$1\leq i_1\leq i_2 \leq \cdots \leq i_n\leq m$` <br>
    These basis are `orthogonal , but not normalized` . And the number of basis (dimension of `$\mathcal{H}_n)$` is `$\begin{pmatrix} n+J-1 \\ n \end{pmatrix} = \frac {\Gamma(n+J)} {\Gamma(n+1)\Gamma(J)}$`

-   `Fermions`: basis are `$\ket{i_1,i_2,\cdots,i_n}$` , for all `$1\lt i_1\lt i_2 \lt \cdots \lt i_n\lt m$` <br>
    When `$J\leq n$` , there is no many-body state, which is known as `Pauli exclusion` <br>
    These basis are `orthonormal` . And the number of basis (dimension of `$\mathcal{H}_n)$` is `$\begin{pmatrix} J \\ n \end{pmatrix} = \frac {\Gamma(1+J)} {\Gamma(n+1)\Gamma(J-n+1)}$`

## Occupation Number Rep.

denote the above basis `$\ket{i_1,i_2,\cdots,i_n}$` as `$\ket{1^{n_1},\cdots,m^{n_m}}$` , where `$n_j$` is the number of appearance of `$i_j$` , For `$n-$`particle state, `$\sum n_i=n$`.

<em>[Definition]</em> : `Occupation basis` is the `normalized` state of this vector:

<div>$$\ket{n_1,\cdots,n_m} = (n_1!)^{-1/2}(n_2!)^{-1/2}\cdots(n_m!)^{-1/2}\ket{1^{n_1},\cdots,m^{n_m}}$$</div>

For fermion , `$n_j=0 \text{ or }1$`

# Second Quantization

## Creation & Annihilation Operators

<em>[Definition]</em> : `Creation operator` is an operator maps vector from `$\mathcal{H}_n$` to one in `$\mathcal{H}_{n+1}$` :

<div>$$\hat \psi^{\dagger} : \mathcal{H}_n \rightarrow \mathcal{H}_{n+1} \  \ ; \ \hat \psi^{\dagger}\ket{\psi_1,\cdots,\psi_n} = \ket{\psi,\psi_1,\cdots,\psi_n}$$</div>

In occupation basis, it is :

<div>$$\begin{aligned}
\text{For bosons: } & \hat a_i^{\dagger} \ket{\cdots,n_i,\cdots} = \sqrt{n_i+1}\ket{\cdots,(n_i+1),\cdots} \\
\text{For fermions: } & \hat a_i^{\dagger} \ket{\cdots,n_i=0,\cdots} = (-1)^{\sum_{j=1}^{i-1} n_j}\ket{\cdots,n_i=1,\cdots}
\end{aligned}$$</div>

<em>[Definition]</em> : `Annihilation operator` is an operator maps vector from `$\mathcal{H}_n$` to one in `$\mathcal{H}_{n-1}$` :

<div>$$\hat \psi : \mathcal{H}_n \rightarrow \mathcal{H}_{n-1} \ \ ; \ \hat \psi \ket{\psi_1,\cdots,\psi_n} = \sum_{i=1}^n (\nu)^{i-1} \langle \psi |\psi_i \rangle \ket{\psi_1,\cdots,\psi_{i-1},\psi_{i+1},\cdots,\psi_n}$$</div>

Where `$\nu=\pm 1$` for bosons `$\nu=1$`, for fermions `$\nu=-1$` <br>
In occupation basis, it is:

<div>$$\begin{aligned}
\text{For bosons: } & \hat a_i \ket{\cdots,n_i,\cdots} = \sqrt{n_i}\ket{\cdots,(n_i-1),\cdots} \\
\text{For fermions: } & \hat a_i \ket{\cdots,n_i=1,\cdots} = (-1)^{\sum_{j=1}^{i-1} n_j}\ket{\cdots,n_i=0,\cdots}
\end{aligned}$$</div>

And:

<div>$$\ket{n_1,n_2,\cdots,n_m} = \frac {1} {\sqrt{\prod_j n_j!}}\prod_{j=1}^m \hat e_j^{\dagger n_j}\ket{0}$$</div>

For vacuum, we have:

<div>$$\begin{aligned}
\hat \psi \ket{0}&=0 \text{ for any annihilation operator} \\
\bra{0}\hat \psi^{\dagger} &= 0 \text{ for any creation operator}
\end{aligned}$$</div>

<em>[Theorem]</em> : `(Anti-)Commutation relations` : <br>

<div>$$\begin{aligned}
\text{For bosons: } & [\hat\psi,\hat\psi^{\dagger}] = 1 \\
\text{For fermions: } & \{\hat\psi,\hat\psi^{\dagger}\} = 1
\end{aligned}$$</div>

<em>[Definition]</em> : `occupation number operator` : `$\hat n_{\psi} = \hat \psi^{\dagger}\hat \psi $`:

-   `$[\hat n_{\psi},\hat\psi^{\dagger}]=\hat \psi^{\dagger}$` , namely `$\hat \psi^{\dagger}$` increases eigenvalue of `$\hat n_{\psi}$` by 1
-   `$[\hat n_{\psi},\hat\psi]=-\hat \psi$` , namely `$\hat \psi$` decreases eigenvalue of `$\hat n_{\psi}$` by 1
-   Eigenvalues of `$\hat n_{\psi}$` are non-negative integers
-   Occupation basis `$\ket{n_1,\cdots,n_m}$` are eigenstates of `$\hat n_i$` , with eigenvalue `$n_i$`

<em>[Theorem]</em> : `General (Anti-)Commutation relations` :

<div>$$\begin{aligned}
\text{For bosons: } & [\hat\psi,\hat\psi'^{\dagger}] = \langle \psi|\psi'\rangle \ , \ [\hat \psi,\hat \psi']=0=[\hat \psi^{\dagger},\hat \psi'^{\dagger}] \\
\text{For fermions: } & \{\hat\psi,\hat\psi^{\dagger}\} = \langle \psi|\psi'\rangle \ , \ \{\hat \psi,\hat \psi'\}=0=\{\hat \psi^{\dagger},\hat \psi'^{\dagger}\}
\end{aligned}$$</div>

<em>[Theorem]</em> : `Basis change` : `$\hat \psi^{\dagger} = \sum_i \langle e_i |\psi \rangle \hat {e_i}^{\dagger}$` , sum is over a complete orthonormal basis

## Some Calculation Tricks

<em>[Theorem]</em> : for orthonormal basis of creation(annihilation) operators `$\hat e_j^{\dagger}, \hat e_i$` , the commutator:

<div>$$[\hat e_i^{\dagger}\hat e_j , \hat e_k^{\dagger}] = \delta_{jk}\hat e_i^{\dagger}$$</div>
This is true for both bosons and fermions. <br>
The proof can be obtained by the following formula:
<div>$$[\hat A\hat B,\hat C] = \hat A[\hat B,\hat C]+[\hat A,\hat C]\hat B = \hat A\{\hat B,\hat C\}-\{\hat A,\hat C\}\hat B$$</div>

<em>[Theorem]</em> : By the above fact, we have:

<div>$$\hat e_i^{\dagger}\hat e_j \hat e_{i_1}^{\dagger}\cdots\hat e_{i_n}^{\dagger} \ket{0}=\sum_{i'_1,i'_2,\cdots,i'_n} \hat e_{i'_1}^{\dagger}\cdots\hat e_{i'_n}^{\dagger}\ket{0}$$</div>

Where the summation over the sequence `$(i'_1,\cdots,i'_n)$` which is `$(i_1,\cdots,i_n)$` with one appearance of `$j$` replaced by `$i$`

## The Second Quantization

<em>[Rule]</em> : `the rule of thumb` , to get a `many-body` Hamiltonian `(defined on the Fock space)` , simply `replace` 1-body wavefunction `$\psi(x),\psi^*(x)$` in the `Energy formula` for product
states by `$\hat \psi(x), \hat \psi^{\dagger}(x)$` , remove the summations over all particles and need some `normal ordering`

{{%fold "Examples"%}}

-   `kinetic energy` : <br>
    In original way, we write the kinetic energy as:

    <div>$$T = \sum_i \int \psi^*_i(x)\big(-\frac {\partial_x^2} {2m}\big)\psi_i(x)\td x$$</div>

    Then the corresponding many-body term is:

    <div>$$\hat T = \int \hat \psi^{\dagger}(x)\big(-\frac {\partial_x^2} {2m} \big) \hat \psi(x)\td x= \int \hat \psi^{\dagger}(p)\big(\frac {p^2} {2m} \big) \hat \psi(p)\td p$$</div>

-   `1-body potential energy` : <br>
    In original way , we write the 1-body potential energy as:

    <div>$$V_1 = \sum_i \int V(x)\psi^*_i(x)\psi_i(x)\td x$$</div>

    And the corresponding many-body term is :

    <div>$$\hat V_1 = \int V(x)\hat \psi^{\dagger}(x)\hat \psi(x)\td x$$</div>

-   `2-body potential energy` : <br>
    For 2-body interaction, we have the potential energy in original way:

    <div>$$V_2 = \frac 1 2 \sum_{i\neq j} \int V(x,x')\psi_i^*(x)\psi_i(x)\psi_j^*(x')\psi_j(x')\td x\td x'$$</div>

    The corresponding many-body term is :

    <div>$$\hat V_2 = \frac 1 2\int V(x,x') \hat \psi^{\dagger}(x)\hat \psi^{\dagger}(x')\hat \psi(x')\hat \psi(x)\td x\td x'$$</div>

{{%/fold%}}

# Special Many-body States

## Fermion Product State(Fermi Sea)

<em>[Definition]</em> : the Fermion Product State is:

<div>$$|\psi_1,\cdots,\psi_n\rangle = \prod_{i=1}^n \hat \psi_i^{\dagger}\ket{0}$$</div>

Norm of this state is given by the Gram determinant: `$\sqrt{\text{det}[\langle \psi_i|\psi_j\rangle]}$` . <br>
If `$\psi_i$` are linearly dependent , this state vanishes. <br>
Linearly independent `$\psi_i$` span a n-dimensional 1-body Hilbert space. Given a complete orthonormal basis of this sapce `$c_i$` , then:

<div>$$\ket{\psi_1,\cdots,\psi_n} = \text{det}[\langle c_i|\psi_j] \ket{c_1,\cdots,c_n}$$</div>

And this state is the eigenstate of `$\hat n=\sum_i \hat c_i^{\dagger}\hat c_i$` with eigenvalue is `$n$`. <br>
The `parent Hamiltonian` of this state is:

<div>$$\hat H = -\sum_{i=1}^n \hat c_i^{\dagger}\hat c_i + \sum_{i=n+1}^m \hat c_i^{\dagger}\hat c_i$$</div>

Namely, the unique ground state of this Hamiltonian is this fermion product state.

<em>[Definition]</em> : `Particle-hole Transformation of Fermions` of a single fermion mode: formally `$\hat c_i \leftrightarrow \hat c_i^{\dagger}$`. <br>
This will preserve the anti-commutation relations. <br>
This correspongds to a unitary transformation on the Fock space: `$\hat U = (\hat c_i+\hat c_i^{\dagger})\cdot (-1)^{\sum_{j\neq i}\hat c_j^{\dagger}\hat c_j}$` , this will let:

<div>$$\hat U^{\dagger}\hat U = \hat 1 \ \ \hat U \hat c_i\hat U^{\dagger} = \hat c_i^{\dagger} \ \ \hat U \hat c_j\hat U^{\dagger} = \hat c_j  \text{ for } j\neq i$$</div>

And the unitary transformation on occupation number basis is:

<div>$$\ket{\cdots,n_i=0,\cdots}\leftrightarrow (-1)^{\sum_{j\gt i} n_j} \ket{\cdots,n_i=1,\cdots}$$</div>

And the factor `$(-1)^{\sum_{j\gt i}n_j}$` is preserve the matrix elements of `$\hat \psi_j , \hat \psi_k^{\dagger}$` for `$j\gt i$`. <br>
In particular, the new "vacuum" is originally `$\ket{0,\cdots,n_i=1,\cdots,0}$`.

## Fermion Pairing State(BCS state)

<em>[Definition]</em> : Consider two orthonormal fermion modes `$c_1, c_2$` , teh pairing state is:

<div>$$\ket{\lambda} = (1+|\lambda|^2)^{-1/2}\exp(\lambda \hat c_1^{\dagger}\hat c_2^{\dagger}) \ket{0}$$</div>

Where `$\lambda \in\mathbb{C}$` <br>
This state is `not` an eigenstate of fermion number operator `$\hat c_1^{\dagger}\hat c_1+\hat c_2^{\dagger}\hat c_2$` . <br>
<em>[Definition]</em> : `Bogoliubov` transformation which defines the `Boogoliubov quasiparticles` :

<div>$$\begin{aligned}
\hat \gamma_1 &= u\hat c_1+v \hat c_2^{\dagger} \\
\hat \gamma_2 &= -v\hat c_1^{\dagger}+u\hat c_2
\end{aligned}$$</div>

where `$u=(1+|\lambda|^2)^{-1/2} $` and `$v=-\lambda(1+|\lambda|^2)^{-1/2}$` . <br>
This two operator satisfy: `$\{\hat \gamma_i,\hat \gamma_j^{\dagger}\}=\delta_{ij}$` <br>
The pairing state is vanished by `$\hat \gamma_i$` , namely `$\hat \gamma \ket{\lambda}=0$` <br>
And the `parent Hamiltonian` is

<div>$$\hat H = \hat \gamma_1^{\dagger}\hat \gamma_1 +\hat \gamma_2^{\dagger}\hat \gamma_2$$</div>

<em>[Definition]</em> : `Generic fermion pairing state` is defined as:

<div>$$\ket{\{f_{ij}\}} \propto \exp(\frac 1 2 \sum_{i,j}f_{ij}\hat c_i^{\dagger}\hat c_j^{\dagger})\ket{0}$$</div>

Where `$c_i$` are some orthonormal basis, and `$f_{ij}=-f_{ji}$` are some complex numbers. <br>
By a orthogonal transformation `$\hat c_i^{\dagger} \rightarrow O_{ij}\hat {(c')}_j^{\dagger}$` , where `$\bm{O}$` is an orthogonal matrix, the antisymmetric matrix `$\bm{f}$`  can be brought into a standard form:

<div>$$\bm{O}^T \bm{f}\bm{O} = \begin{bmatrix} 0 & \lambda_1 & 0 & 0 & \cdots \\ -\lambda_1 & 0&0&0&\cdots \\ 0&0&0& \lambda_2&\cdots \\ 0&0& -\lambda_2&0&\cdots \\ \vdots&\vdots&\vdots&\vdots&\ddots\end{bmatrix}$$</div>

the state becomes `$\propto \exp(\lambda_1 \hat{c'}_1^{\dagger} \hat{c'}_2^{\dagger}+\lambda \hat{c'}_3^{\dagger}\hat {c'}_4^{\dagger}+\cdots)\ket{0}$` . <br>
Bogoliubov transformations can be defined on `$\hat {c'}_{2i-1}$` & `$\hat {c'}_{2i}$`.

## Boson Coherent State

<em>[Definition]</em> : The coherent state from a single boson mode `$\hat b$` is:

<div>$$\ket{z} = e^{-|z|^2/2}e^{z\hat b^{\dagger}} \ket{0}$$</div>

where `$z\in \mathbb{C}$` . <br>
This state is `not` an eigenstate of boson number `$\hat b^{\dagger}\hat b$` , but `$\hat b\ket{z}=z\ket{z}$` , therefor this state vanished by `$\hat b'=\hat b-z$` <br>
The `parent Hamiltonian` is thus `$\hat H = (\hat b-z)^{\dagger}(\hat b-z)$` <br>
The inner product between two Boson Coherent state is:

<div>$$\langle z'|z\rangle = e^{-(|z|^2+|z'|^2)/2} e^{z(z')^* } $$</div>

## Boson Pairing State

Consider two orthonormal boson modes `$\hat b_1,\hat b_2$` , the boson pairing state is:

<div>$$\ket{\lambda} = (1-|\lambda|^2)^{1/2}\exp(\lambda \hat b_1^{\dagger}\hat b_2^{\dagger})\ket{0}$$</div>

Where `$\lambda \in \mathbb{C} , |\lambda|\lt 1$` . <br>
This state is `not` an eigenstate of boson number : `$\hat b_1^{\dagger}\hat b_1+\hat b_2^{\dagger}\hat b_2$` <br>
Bogoliubov transformation:

<div>$$\begin{aligned}
\hat \gamma_1 &= u\hat b_1+v\hat b_2^{\dagger} \\
\hat \gamma_2 &= u\hat b_2+v\hat b_1^{\dagger}
\end{aligned}$$</div>

where `$u=(1-|\lambda|^2)^{-1/2} , v=-\lambda(1-|\lambda|^2)^{-1/2}$`.
Then `$\hat \gamma_i\ket{\lambda}=0$` <br>
The `parent Hamiltonian ` is:

<div>$$\hat H =\hat \gamma_1^{\dagger}\hat \gamma_1+\hat \gamma_2^{\dagger}\hat \gamma_2$$</div>


# The Wick Expansion

Let `$\ket{0}$` be the single-particle vacuum , Let `$\hat A_i (i=1,\cdots,2n)$` be a set of single-particle operators, namely linear cominations of annihilation and creation operators, then
`$\bra{0}\hat A_1\hat A_2\cdots\hat A_{2n}\ket{0}$` is the `Hafnian(Pfaffian)` of matrix `$\bra{0}\hat A_i\hat A_j\ket{0}$` for bosons(fermions) . <br>

<em>[Definition]</em> : `Hafnian` of `$2n\times 2n$` symmetric matrix `$M_{ij}$` is :

<div>$$\text{Hf}(\bm{M}) = \frac 1 {n!} \sum_{\sigma\in S_{2n}, \sigma(1)\lt \sigma(2), \sigma(3)\lt \sigma(4),\cdots} M_{\sigma(1)\sigma(2)} M_{\sigma(3)\sigma(4)}\cdots M_{\sigma(2n-1)\sigma(2n)}$$</div>

<em>[Definition]</em> : `Pfaffian` of `$2n\times 2n$` anti-symmetric matrix `$M_{ij}$` is :

<div>$$\text{Pf}(\bm{M}) = \frac 1 {n!} \sum_{\sigma\in S_{2n}, \sigma(1)\lt \sigma(2), \sigma(3)\lt \sigma(4),\cdots} (-1)^{\sigma} M_{\sigma(1)\sigma(2)} M_{\sigma(3)\sigma(4)}\cdots M_{\sigma(2n-1)\sigma(2n)}$$</div>

<em>[Notes]</em> : this is true only for such `free particle` states `$\ket{0}$` , the matrix `$\bra{0}\hat A_i\hat A_j\ket{0}$` may not be symmetric or anti-symmetric, but the above definition of Hafnian/Pfaffian still works for the Wick expansion
