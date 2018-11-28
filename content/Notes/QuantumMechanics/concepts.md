---
title: "Basic Concepts of Quantum Mechanics"
date: 2018-11-12T11:36:42+08:00
draft: false
tags: ["Physics", "Math"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
---

# Outline
|Terminologies|Explanation|
|-------------------|-------------------|
|Hilbert Space: `$\mathcal{H}$` |Linear space equipped with an inner product |
|quantum states("ket") : `$\ket{\psi}$` |elements in the linear space `$\mathcal{H}$` |
|"bra" : `$\bra{\psi}$`  |linear functionals defined on `$\mathcal{H}$` : `$\mathcal{H}\rightarrow \mathbb{C}$`  |
|quantum mechanical operators|linear mappings : `$\mathcal{H}_1\rightarrow \mathcal{H}_2$` |

# The Hilbert Space

## Wavefunction

The Hilbert space `$\mathcal{H}(V)$` defined on a coordinate space `$V$` is a `complex linear space` formed by all
`normalizable` wavefunction defined on `$V$`. More strictly we should call it `Bogoliubov space`
And the closeness (`$\lambda_1 \psi_1+\lambda_2\psi_2$` is normalizable if `$\psi_i$` are normalizable) is hold indeed, one can check it by Cauchy-Schwarz Inequality.
A `natural inner product` can be defined on Hilbert space, as the overlap of two wavefunctions `$\phi ,\psi$` :

<div>$$(\phi,\psi) := \int \phi^*(\bm{x}) \psi(\bm{x})\td V$$</div>

Satisfying the three `Axioms` :

1. `Hermiticity` : `$(\phi,\psi)=(\psi,\phi)^*$`
2. `Linearity` : `$(\phi,\lambda_1\psi_1+\lambda_2\psi_2)=\lambda_1 (\phi,\psi_1)+\lambda_2 (\phi,\psi_2) \ \ \text{for } \lambda_1,\lambda_2 \in \mathbb{C}$`
3. `Positive definiteness` : `$(\psi,\psi)\geq 0 , \text{ and } \Big((\psi,\psi)=0 \Leftrightarrow \psi=0 \Big)$`

The third axiom above leads to a useful consiquence:

The Gram matrix `$G_{i,j}=(\psi_i,\psi_j)$` of a set of wavefunction is Hermitian and positive semi-definite.

{{% fold "Proof"%}}
  For the positive definiteness of inner product, we have:

  <div>$$(\sum_i \lambda_i \psi_i,\sum_j \lambda_j \psi_j)=\sum_{i,j}\lambda_i^* \lambda_j G_{i,j}\geq 0$$</div>

  holds for arbitrary `$\bm{\lambda}$`, which means that the Gram matrix is semi-definition. <br>
  The Hermitian is eaily to check.
{{%/fold%}}


## Combining Hilbert Spaces
-   `Direct sum of two Hilbert spaces` : `$\mathcal{H}_1(V_1)\oplus \mathcal{H}_2(V_2)$` <br>
    the wavefunction in the combined Hilbert space is formed by :

    <div>$$(\psi_1 \oplus \psi_2)(\bm{x})=\begin{cases}
    \psi_1(\bm{x}) & \bm{x}\in V_1 \\
    \psi_2(\bm{x}) & \bm{x}\in V_2
    \end{cases}
    \text{ Where } \psi_i \in \mathcal{H}_i(V_i)$$</div>

    And the induced inner product is :

    <div>$$(\phi_1\oplus \phi_2 , \psi_1\oplus \psi_2 )_{V_1 \oplus V_2}=(\phi_1,\psi_1)_{V_1}+(\phi_2,\psi_2)_{V_2}=\int \phi_1^*\psi_1 \td V_1+\int \phi_2^*\psi_2\td V_2$$</div>

    with the induced volume element defined as : `$\td (V_1\oplus V_2)=\td V_1+\td V_2$`

-    `Tensor product of two Hilbert spaces` : `$\mathcal{H}_1(V_1)\otimes \mathcal{H}_2(V_2)$` <br>
    the wavefunction in the combined Hilbert space is formed by :

    <div>$$(\psi_1\otimes \psi_2 )(\bm{x}_1,\bm{x}_2)=\psi_1(\bm{x}_1)\psi_2(\bm{x}_2) \ \ \text{ for } \bm{x}_i \in V_i \text{ and } \psi_i \in \mathcal{H}_i(V_i)$$</div>

    And the induced inner product is :

    <div>$$(\phi_1\otimes \phi_2 , \psi_1\otimes \psi_2)_{V_1\otimes V_2}=(\phi_1,\psi_1)_{V_1}\cdot (\phi_2,\psi_2)_{V_2}$$</div>

    with the induced volume element defined as : `$\td (V_1\otimes V_2)=\td V_1 \td V_2$`

<mark>`Entanglement` : wavefunctions in `$\mathcal{H}_1\otimes \mathcal{H}_2$` may not be a direct product like `$\psi_1\otimes \psi_2$`</mark> <br>
for some like `$\psi_1\otimes \psi_2 + \phi_1\otimes \phi_2$` , generally it CANNOT be written as the direct product of wavefunctions from each Hilbert space

<em>[Definition]</em> : `kets` `$\ket \psi$` , is the element(quantum state) in Hilbert space corresponding to wavefunction `$\psi$` <br>
<em>[Definition]</em> : `bras` `$\bra \psi$` , is a linear functional defined on the Hilbert space:

<div>$$\bra \psi : \mathcal{H} \rightarrow \mathbb{C} , \phi \mapsto (\psi,\phi)$$</div>

Usually we use the short-hand notation like:

1. `$\langle \psi | \phi \rangle \equiv (\psi,\phi)=\int \psi^*\phi \td V$`
2. `bra is a linear functional` : `$\langle \psi|\lambda_1 \phi_1 + \lambda_2\phi_2\rangle =\lambda_1 \langle \psi|\phi_1\rangle +\lambda_2 \langle \psi |\phi_2 \rangle\$`
3. `bra form an anti-linear space` : `$\lambda_1^* \bra{\psi_1}+\lambda_2^* \bra{\psi_2}=\bra{\lambda_1 \psi_1+\lambda_2 \psi_2}$`
4. `Direct sum` : `$\ket{\psi_1}+\ket{\psi_2}$` with `$\psi_i\in \mathcal{H}_i$` means the direct sum state : `$\psi_1\oplus \psi_2 \in \mathcal{H}_1\oplus \mathcal{H}_2$`
5. `Tensor product` : `$\ket{\psi_1}\ket{\psi_2}\equiv\ket{\psi_1}\otimes\ket{\psi_2}$` with `$\psi_i\in \mathcal{H}_i$` means the tensor product state `$\psi_1\otimes \psi_2\in \mathcal{H}_1\otimes \mathcal{H}_2$`
6. `Linear operator` : `$\ket{\psi_1}\bra{\psi_2}$` with `$\psi_i\in\mathcal{H}_i$` is a linear operator : `$\mathcal{H}_2\rightarrow \mathcal{H}_1 , \ket{\phi}\mapsto \ket{\psi_1}\rangle \psi_2 | \phi\rangle$`

<em>[Theorem(Riesz-Frechet)]</em> : Any 'continuous' linear functional

<div>$$f:\mathcal{H}\rightarrow \mathbb{C}, \phi\mapsto f(\phi)$$</div>

corresponds to a wavefunction `$\psi_f$` so that

<div>$$f=\bra{\psi_f} \ \ ,  \ \ f(\phi)=(\psi_f,\phi)$$</div>

## Complete Orthonormal Basis

<em>[Definition]</em> : A set of kets `$\{\ket{e_i}\}$` called as `Complete orthonormal basis` , IFF for ANY `$\psi\in\mathcal{H}$` , it can be expanded by the basis: `$\ket{\psi}=\sum_i \ket{e_i}\langle e_i | \psi\rangle$`

For `finite` dimensional Hilbert space, this is just "number of orthonormal basis"= "dimension of Hilbert space" <br>
For `infinite` dimension Hilbert space, the completeness is usually hard to prove.

<em>[Theorem]</em> : A set quantum state `$\{\ket{\psi_j}\}$` are linear dependent, `IFF` matrix `$A_{i,j}=\langle \psi_i | \psi_j \rangle$` is a singular matrix

{{% fold "Proof" %}}
The linear dependence is equivalent to the statement:

<div>$$\exists k_j (\text{Not all be zero}) \Rightarrow \sum_j k_j \ket{\psi_j}=0$$</div>

That is there is a row or column could be vanished though row-line operation on the determinate `$\text{det}A_{i,j} $` . <br>
Then we proved the theorem.
{{%/fold%}}

# Quantum Mechanical Operators

## Operators

<em>[Definition]</em> : `Linear operators` are linear mappings between two (offen the same) Hilbert spaces:

<div>$$\hat O \ket{\psi}\in \mathcal{H}_2 \text{ for } \ket{\psi}\in \mathcal{H}_1 , \text{ and } \hat O \ket{\lambda_1\psi_1+\lambda_2\psi_2}=\lambda_1 \hat O \ket{\psi_1}+\lambda_2 \hat O\ket{\psi_2}$$</div>

<em>[Definition]</em> : `Anti-linear operators` are mappings with a different linearity:

<div>$$\hat O \ket{\lambda_1 \psi_1+\lambda_2 \psi_2} = \lambda_1^* \hat O \ket{\psi_1} +\lambda_2^* \hat O \ket{\psi_2}$$</div>

`Hermitian conjugate (adjoint)` of a linear operator `$\hat O$` is a linear operator `$\hat O^{\dagger}$`, satisfying:

<div>$$(\hat O^{\dagger} \psi,\phi)=(\psi,\hat O \phi) \ \text{for } \forall \psi,\phi$$</div>

Or one can rewrite it in Dirac notation: `$\bra{\hat O^{\dagger}\psi}=\bra{\psi}\hat O$`. <br>
The `adjoint` operation has the following properties:
1. `self-identical` : `$(\hat O^{\dagger})^{\dagger} = \hat O$`
2. `$(\lambda \hat O)^{\dagger}=\lambda^* \hat O^{\dagger} \ \ \ , \ \ (\hat A \hat B)^{\dagger}=\hat B^{\dagger}\hat A^{\dagger}$`
3. Any operator is the sum of its Hermitian & anti-Hermitian part: `$\hat O = (\hat O +\hat O^{\dagger})/2 +(\hat O -\hat O^{\dagger})/2$`

<em>[Definition]</em> : `Matrix representation` . Under a complete basis, any kets can be represented as a vector, and the operator can be represented as a matrix:

<div>$$\begin{aligned}[]
\ket{\psi} &=\sum_i \ket{e_i}\langle e_i|\psi\rangle \sim \{\langle e_i|\psi\rangle\}_i \\
\hat O &= \sum_{i,j} \ket {e_i}\bra{e_j} \bra {e_i}\hat O \ket{e_j} \sim O_{i,j}=\bra {e_i}\hat O \ket{e_j}
\end{aligned}$$</div>

<em>[Difinition]</em> : `Trace` of an operator is defined as a number:

<div>$$\text{Tr} \hat O =\sum_n \bra{n} \hat O \ket{n}$$</div>

in which the `$n$` is a `complete orthonormal basis` .
1. The result of trace is `independent` of the choice of basis
2. Trace has the cyclic property: `$\text{Tr}(\hat A \hat B\hat C)=\text{Tr}(\hat C \hat A \hat B)=\text{Tr}(\hat B \hat C \hat A)$`
<br>
<em>[Defnition]</em> : `Eigenvalue` `$\lambda$` and coresponding `eigen-state` of operator `$\hat O$` defined by :

<div>$$\hat O \ket{\lambda} = \lambda \ket{\lambda}$$</div>

<em>[Definition(SVD)]</em> : `Singular value decomposition (SVD)` : <br>
Any operator can be written as `$\hat O =\sum_n \ket{f(n)}\rho_n\bra{n}$` , where `$n$` labels the `singular value` `$\rho_n \geq 0$`,
and the two sets of orthonormal basis `$\ket{n} \ \& \ \ket{f(n)}$` are eigenstates of `$\hat O^{\dagger}\hat O \ \& \ \hat O \hat O^{\dagger}$` respectively  <br>
function `$f$` is some mapping performing the labels coresponding. <br>
In complete orthonormal basis `$\ket{e_i}$` , the above relations becomes:

<div>$$O_{i,j}=\bra{e_i}\hat O \ket{e_j}=\sum_n \langle e_i|f(n)\rangle \rho_n \langle n | e_j\rangle = (U\cdot \rho \cdot V^{\dagger})_{i,j}$$</div>

Where the unitary matrices `$U_{i,n}=\langle e_i|f(n)\rangle , V_{j,n}=\langle e_j | n\rangle$`.
and the diagonal matrix `$\rho$` has diagpnal elements `$\rho_n$`.

<em>[Definition]</em> : `Projection operator` : `$\hat P : \mathcal{H}\rightarrow \mathcal{H}$` satisfying `$\hat P^2=\hat P$` <br>
<em>[Definition]</em> : `Inverse of an operator` : `$\hat A^{-1}\hat A=\hat A \hat A^{-1}=\hat {1}$` <br>
<em>[Definition]</em> : `Unitary operator` : `$(\hat U \phi,\hat U \psi)=(\phi,\psi)$` for arbitrary `$\psi,\phi$`. Or equivalently `$\hat U^{\dagger}\hat U=\hat {1}$` <br>
<em>[Definition]</em> : `anti-Unitary operator` : it is an anti-linear operator with the property that: `$(\hat U \psi,\hat U \phi)=(\phi,\psi)$` . <br>

## Abstract Calculations with Operators

<em>[Definition]</em> : Commutator & anti-commutator of two operators: `$[\hat A,\hat B]:=\hat A\hat B - \hat B \hat A \ \  ; \ \ \{\hat A,\hat B\}=\hat A \hat B+\hat B\hat A$` <br>
For simplicity, we call commutator `$[\hat A,\hat B]$` as `Lie derivative` :`$\mathcal{L}_{\hat A}\hat B$`
<br>
<em>[Theorem]</em> : `Baker-Hausdorff formula` :

<div>$$\text{e}^{\hat A} \hat B \text{e}^{-\hat A}=\hat B+\frac {[\hat A,\hat B]} {1!} +\frac {[\hat A ,[\hat A,\hat B]]} {2!}+\cdots$$</div>

or one can write it as : `$\text{e}^{\hat A} \hat B \text{e}^{-\hat A}=\exp (\mathcal{L}_{\hat A}) \hat B$`

{{%fold "Proof"%}}
Define `$\hat f (t)=\exp(t\hat A)\hat B\exp(-t\hat A)$` , then `$\hat f(0)=\hat B$` . <br>
Then we can check that:

<div>$$\frac {\td} {\td t} \hat f(t)=\hat A \hat f(t)-\hat f(t)\hat A =\mathcal{L}_{\hat A} \hat f(t)$$</div>

And :

<div>$$\frac {\td} {\td t} \mathcal{L}_{\hat A} \hat f(t)=\mathcal{L}_{\hat A} \frac {\td} {\td t} \hat f(t)$$</div>

Then we can write down:

<div>$$\hat f(t) = \exp(t\mathcal{L}_{\hat A}) \hat f(0)$$</div>

Which can be obtained by Taylor expansion or simplly solve the operator equation.  <br>
Then we can have the BH-formula at `$t=1$`
{{%/fold%}}

Direct sum & tensor product of operator defined like wavefunction. <br>
For operator `$\hat A$` defined on `$\mathcal{H}_1$` , while `$\hat B$` defined on `$\mathcal{H}_2$` , `$\ket{\psi_i}\in\mathcal{H}_i$` :

-   `Direct sum` :
    `$\hat A \oplus \hat B$` is an operator defined on `$\mathcal{H}_1\oplus \mathcal{H}_2$` and : <br>
    `$(\hat A\oplus \hat B)(\ket{\psi_1}\oplus \ket{\psi_2})=\hat A\ket{\psi_1}\oplus \hat B \ket{\psi_2}$`
-   `Tensor product` : <br>
    `$\hat A \otimes \hat B$` is an operator defined on `$\mathcal{H}_1\otimes \mathcal{H}_2$` and : <br>
    `$(\hat A\otimes \hat B)(\ket{\psi_1}\otimes \ket{\psi_2})=\hat A\ket{\psi_1}\otimes \hat B \ket{\psi_2}$`

For tensor product, we have:

<div>$$\text{Tr}_{1\otimes 2} \hat A \otimes \hat B=\text{Tr}_1 \hat A\text{Tr}_2 \hat B$$</div>

# Density Matrix

<em>[Definition]</em> : Density matrix of a `normalizad` pure state `$\psi$` is defined as :
<div>$$\hat \rho_{\psi}=\ket{\psi}\bra{\psi}$$</div>
It is a <mark>porjection operator</mark> . And the expectation of an operator can be rewritten as `$O_{\psi}=\text{Tr}\hat O \hat \rho_{\psi}$` <br>
<span class="note">Density matrix is independent of the complex phase of `$\ket{\psi}$`</span>
<br>
<em>[Definition]</em> : `Generic density matrix` is a <mark>linear Hermitian non-negative</mark> operator of <mark>trace unity</mark> :

<div>$$\hat \rho^{\dagger}=\hat \rho \ \ ; \ \forall \ket{\psi}\in \mathcal{H}\Rightarrow \bra{\phi}\hat \rho\ket{\phi}\geq 0 \ \  ;\ \ \text{Tr}\hat \rho=1$$</div>

In some orthonormal basis `$\{\ket{e_i}\}$` , one can write density matrix as : `$\hat \rho=\sum_i \lambda_i \ket{e_i}\bra{e_i}$` with `$\lambda_i\gt 0$` , and `$\sum_i \lambda_i=1$` <br>
In general, those basis `$\{\ket{e_i}\}$` could be incomplete. <br>
Some times one need to form a continuous <mark>'event space'</mark> and some <mark>'probability meassurement'</mark> on it, and the density matrix could be written as :
<div>$$\hat \rho = \int_{\Omega} \td \mathbb{P}(A) \ket{r(A)}\bra{r(A)}$$</div>
Where the function `$r(A)$` return a quantum state, while those states in set `$A$` :`$\{\ket{x}\}_{x\in A}$` has the same physics property as it or their difference is very small.
This definition is only the generalization through the probability theory, and has not found in usual physics yet. <br>

Expectation value of operator `$\hat O$` on density matrix is `$O=\text{Tr}(\hat O \hat \rho)$` <br>
If `$\hat \rho_j$` are density matrices , `$\lambda_j\gt 0 , \sum_i \lambda_i =1$` , then `$\sum_j \lambda_j \hat \rho_j$` is also a density matrix

# Entanglement

<em>[Definition]</em> : `von Neumann Entropy` is a functional who maps the density matrix to a non-negative number:

<div>$$S[\hat \rho]:=-\text{Tr}(\hat \rho \text{log} \hat \rho) \equiv -\sum_i \lambda_i \log \lambda_i$$</div>

pure states have zero entropy while mixed states has positive one. <br>
In <mark>n(finite)-dimension</mark> Hilbert space, `$0\leq S[\hat \rho]\leq \log(n)$` <br>
<mark>Renyi entropy</mark> : `$S_n:=\frac 1 {1-n} \log \text{Tr}\hat \rho^n$` , and formally `$\lim_{n\rightarrow 1}S_n=S$`

<em>[Theorem]</em> : `Concavity of von Neumann Entropy` : mixing two systems increases entropy:

<div>$$S[\lambda \hat \rho_1+(1-\lambda)\hat \rho_2]\geq \lambda S[\hat \rho_1]+(1-\lambda)S[\hat \rho_2] \ \ \ \ \lambda\in(0,1)$$</div>

{{%fold "Proof"%}}

First we need to introduce a lemma : <br>
<em>[Lemma]</em> : `Klein's inequality` . Let `$\hat A,\hat B$` self-adjoint(Hermitian) and `$f$` is convex from : `$\mathbb{R}\rightarrow \mathbb{R}$` . Then:

<div>$$\text{Tr}(f(\hat A)-f(\hat B)-(\hat A-\hat B)f'(\hat B))\geq 0$$</div>

Where the operation of `$f$` on operator is naturally induced like above. <br>
<em>[Proof]</em> : Let `$\hat A\ket{a_i}=a_i \ket{a_i} \ ; \ \hat B\ket{b_i}=b_i\ket{b_i}$` , for the hermitian, `$a_i,b_i\in\mathbb{R}$`. <br>
Then we have:

<div>$$\begin{aligned}
\text{Tr}(f(\hat A)-f(\hat B)-(\hat A-\hat B)f'(\hat B)) &= \sum_i f(a_i)-\bra{a_i} f(\hat B)\ket{a_i}-\bra{a_i}(\hat A-\hat B) f'(\hat B)\ket{a_i}  \\
&=\sum_i f(a_i)-\bra{a_i} f(\hat B)\ket{a_i}- a_i \bra{a_i} f'(\hat B)\ket{a_i}+\bra{a_i}\hat B f'(\hat B)\ket{a_i} \\
&=\sum_i \Bigg( f(a_i) - \sum_j \Big(|\langle a_i|b_j\rangle|^2 \big( f(b_j)+ a_i f'(b_j) - b_j f'(b_j)  \big) \Big) \Bigg) \\
&=\sum_{i,j} |\langle a_i | b_j \rangle|^2 \Big(f(a_i)-f(b_j)-(a_i-b_j)f'(b_j))  \Big)
\end{aligned}$$</div>

For `$f$` is convex `$\mathbb{R}\rightarrow \mathbb{R}$` function, we have that `$\forall x,y\in \mathbb{R}$` :

<div>$$f(x)-f(y)\geq (x-y)f'(y)$$</div>

{{%fold "Note"%}}

if a real2real function called as `convex` ; it satisfys:

<div>$$F(x,y;t):=f(t x+(1-t) y) - tf(x)+(1-t)f(y)\leq 0 \ \ x,y\in\mathbb{R} \ \ t\in(0,1)$$</div>

For `$F(x,y;0)=F(x,y;1)=0$`, then the derivative shall:

<div>$$\partial_t F(x,y;t)|_{t=0} \leq 0 \ \ \partial_t F(x,y;t)|_{t=1}\geq 0 $$</div>

Which means that:

<div>$$(x-y)f'(y)\leq f(x)-f(y)$$</div>

{{%/fold%}}

Then the lemma has been proved. <br>
To prove the concavity, we use the Klein's inequality with `$f(t)=t\log t$` , then we have:

<div>$$\text{Tr} \hat A\log \hat A-\text{Tr} \hat B\log\hat B \geq \text{Tr}(\hat A-\hat B)(1+\text{log}\hat B)$$</div>

Or:

<div>$$\text{Tr}\hat A\log\hat A-\text{Tr}\hat A\log\hat B\geq \text{Tr}(\hat A-\hat B)$$</div>

Let `$\hat A=\hat \rho_1 , \hat B=\lambda \hat \rho_1+(1-\lambda)\hat \rho_2$` , then we have:

<div>$$\text{Tr}\hat \rho_1 \log \hat \rho_1 \geq \text{Tr}\hat \rho_1 \log(\lambda \hat \rho_1+(1-\lambda)\hat \rho_2) $$</div>

And let `$\hat A=\hat \rho_2$` we have:

<div>$$\text{Tr}\hat \rho_2 \log \hat \rho_2 \geq \text{Tr}\hat \rho_2 \log(\lambda \hat \rho_1+(1-\lambda)\hat \rho_2) $$</div>

Then, multiplying the first inequality `$\lambda$` and the second `$1-\lambda$` , adding them yield:

<div>$$\lambda \text{Tr} \hat \rho_1\log\hat \rho_1+(1-\lambda)\text{Tr}\hat \rho_2\log\hat \rho_2\geq \text{Tr}(\lambda \hat \rho_1+(1-\lambda)\hat \rho_2)\log (\lambda \hat \rho_1+(1-\lambda)\hat \rho_2)$$</div>

The concavity has been proved.

{{%/fold%}}

<em>[Definition]</em> : `Reduced density matrix` , given a density metrix `$\hat \rho$` on `$\mathcal{H}_a \otimes \mathcal{H}_b$`, reduced density matrix `$\hat \rho_a$` on `$\mathcal{H}_a$` is:

<div>$$\hat \rho_a := \text{Tr}_b (\hat \rho) \equiv \sum_{j}\bra{e_{j,b}}\hat \rho \ket{e_{j,b}}$$</div>

Where `$\ket{e_{j,b}}$` is a set of complete orthonormal basis in Hilbert space `$\mathcal{H}_b$`

<em>[Theorem]</em> : subadditivity of entropy: information is 'lost' by separating two subsystems:

<div>$$S_{a\otimes b}[\hat \rho] = \text{Tr}_{a\otimes b} (-\hat \rho \log \hat \rho) \leq S_a[\hat \rho_a] + S_b[\hat \rho_b] = \text{Tr}_a (-\hat \rho_a \log \hat \rho_a) + \text{Tr}_b (-\hat \rho_b \log \hat \rho_b) = S_{a\otimes b} [\hat \rho_a \otimes \hat \rho_b]$$</div>

{{%fold "Proof"%}}

First, we introduce the difinition of so called `Relative entropy`:

<div>$$S[\hat \rho \| \hat \sigma] := -S[\hat \rho] - \text{Tr} (\hat \rho \log \hat \sigma)$$</div>

By the inference of Klein inequality, we have:

<div>$$\text{Tr} \hat A \log \hat A - \text{Tr} \hat A \log \hat B \geq \text{Tr}(\hat A-\hat B)$$</div>

That is said that `$S[\hat \rho \|\hat \sigma] \geq 0$` . <br>
Then let `$\hat \sigma = \hat \rho_a \otimes \hat \rho_b$` we have:

<div>$$S[\hat \rho \| \hat \rho_a \otimes \hat \rho_b] = -S[\hat \rho] - \text{Tr}(\hat \rho \log(\hat \rho_a \otimes \hat \rho_b))\geq 0$$</div>

For `$\text{Tr}(\cdot)=\text{Tr}_a(\text{Tr}_b(\cdot))= \text{Tr}_b(\text{Tr}_a(\cdot))$` , we have:

<div>$$\begin{aligned}
\text{Tr}(\hat \rho \log(\hat \rho_a\otimes \hat \rho_b)) &= \text{Tr}(\hat \rho \log (\hat \rho_a\otimes \hat 1_b)(\hat 1_a \otimes \hat \rho_b)) \\
&= \text{Tr}(\hat \rho \log \hat \rho_a\otimes \hat 1_b)+\text{Tr}(\hat \rho \log \hat 1_a \otimes \hat \rho_b) \\
&= \text{Tr}_a(\text{Tr}_b(\hat \rho \log \hat \rho_a\otimes \hat 1_b))+\text{Tr}_b(\text{Tr}_a(\hat \rho \log \hat 1_a \otimes \hat \rho_b)) \\
&= \text{Tr}_a(\log \hat \rho_a \text{Tr}_b \hat \rho ) + \text{Tr}_b (\log \hat \rho_b \text{Tr}_a \hat \rho) \\
&= \text{Tr}_a(\hat \rho_a \log \hat \rho_a)+\text{Tr}_b (\hat \rho_b \log \hat \rho_b)
\end{aligned}$$</div>

Then we have proven :

<div>$$S_{a\otimes b} [\hat \rho] \leq S_a [\hat \rho_a]+S_b[\hat \rho_b]$$</div>

The last equality is simple to prove.


{{%/fold%}}

## Density Matrix of Pure State

Density matrix of a pure state: `$\hat \rho = \ket{\psi}\bra{\psi}$` , where `$\ket{\psi}\in \mathcal{H}_a\otimes\mathcal{H}_b$` is a normalized pure state,
has some special properties:

1. `Entanglement Entropy` : defined as the von Neumann Entropy of reduced density matrix: `$S_a=-\text{Tr}(\hat \rho_a\log\hat \rho_a) , \hat \rho_a = \text{Tr}_b\hat \rho$`
2. The degrees of freedom of `$a,b$` are entangled in this state if `$S_a \gt 0$`
3. The state `$\ket{\psi}$` is `disentangled`, <mark>IFF</mark> `$\ket{\psi}=\ket{\psi_a}\otimes \ket{\phi_b}$` , <mark>IFF</mark> `$S_a=0$`
4. `Schmidt decomposition` :

    <div>$$\ket{\psi}=\sum_i \lambda_i \ket{\phi_i}\otimes \ket{\varphi_i}$$</div>

    Where `$\lambda_i^2$` are eigenvalues of `$\hat \rho_a$` , and `$\phi_i,\varphi_i$` are orthonormal eigenstates of `$\hat \rho_a, \hat \rho_b$` .

    {{%fold "Proof"%}}

Generally, one can write `$\ket{\psi}\in\mathcal{H}_a\otimes \mathcal{H}_b$` as the expansion on basis `$e_{i,a}$` and `$e_{i,b}$` in `$\mathcal{H}_a$` and `$\mathcal{H}_b$` :

<div>$$\ket{\psi} = \sum_{i,j} a_{ij}\ket{e_{i,a}}\ket{e_{j,b}}$$</div>

While the SVD of matrix `$\bm{A}$` whose elements are `$a_{ij}$` is :

<div>$$\bm{A}= \bm{U}\bm{\Sigma}\bm{V}^{\dagger}$$</div>

And that is

<div>$$a_{ij} = \sum_l u_{i,l}\lambda_l v^*_{j,l}$$</div>

Then let `$\ket{\phi_l} = \sum_i u_{i,l} \ket{e_{i,a}} \ , \ \ket{\varphi_l} = \sum_j v^*_{j,l}\ket{e_{j,b}}$` , one have:

<div>$$\ket {\psi}=\sum_{l} \lambda_l \ket{\phi_l}\ket{\varphi_l}$$</div>

While `$\ket{\phi_i},\ket{\varphi_i}$` are orthonormal in each Hilbert space for `$\bm{U},\bm{V}$` are unitary matrices. <br>
And for the expansion, one can write the reduced density matrix as:

<div>$$\begin{aligned}
\hat \rho_a &= \sum_k \bra{e_{k,b}} \sum_{i,j}\lambda_i\lambda_j^* \ket{\phi_i}\ket{\varphi_i}\bra{\phi_j}\bra{\varphi_j} \ket{e_{k,b}} \\
&= \sum_{i,j}\lambda_i\lambda_j^* \ket{\phi_i}\bra{\phi_j} \sum_k \langle \varphi_j |e_{k,b} \rangle \langle e_{k,b}| \varphi_i \rangle \\
&= \sum_i \lambda_i^2 \ket{\phi_i}\bra{\phi_i}
\end{aligned}$$</div>

For `$\hat \rho$` is Hermitian so `$\lambda_i\in\mathbb{R}$` . That is `$\lambda_i^2$` are eigenvalues of `$\hat \rho_a$` and `$\ket{\phi_i}$` are `$\hat \rho_a$` 's eigenstates <br>
Further more, `$\lambda_i^2$` are also eigenvalues of `$\hat \rho_b$` and `$\ket{\varphi_i}$` are `$\hat \rho_b$`'s eigenstates.

    {{%/fold%}}

5.  `Reciprocity` : define reduced density matrix `$\hat \rho_b = \text{Tr}_a \hat \rho$` on `$\mathcal{H}_b$` , we have `$S_a=S_b$` .
    {{%fold "Proof"%}}
Using Schmidt decomposition: `$\ket{\phi}= \sum_i \lambda_i \ket{\phi_i}\ket{\varphi_i}$`, then one have:

<div>$$S_b=-\sum_i \lambda_i^2\log \lambda_i^2=S_a$$</div>

For the details in the previous proof.
Proved.
    {{%/fold%}}

# Measurement

## Measurement

Measurement can be done for a Hermition operator `$\hat A$` on a pure or mixed states `$\hat \rho$` <br>
The outcome of the measurement will be the eigenvalues of `$\hat A$`, and the probability of outcome `$\lambda$` is:

<div>$$\mathbb{P}(\lambda) = \text{Tr}(\hat P_{\lambda}\hat \rho)$$</div>

where `$\hat P_{\lambda}$` is the projection to eigenvalue `$\lambda$` subspace : `$\hat P_{\lambda}=\sum \ket{A=\lambda}\bra{A=\lambda}$`, summing over `orthonormal` eigenstates of `$\hat A$` with eigenvalue `$\lambda$` . <br>
The statistical average of outcome is the expectation value of `$\hat A$` in state `$\hat \rho$` :

<div>$$\text{Tr}\hat A \hat \rho = \text{Tr}(\sum_{\lambda} \lambda \hat P_{\lambda} \hat \rho) = \sum_{\lambda} \lambda \text{Tr}(\hat P_{\lambda}\hat \rho)=\sum_{\lambda}\lambda \mathbb{P}(\lambda)$$</div>

And for pure state it simplily is `$\bra{\psi}\hat A\ket{\psi}$`

`Collapse postulate` : if the measurement outcome is `$\lambda$` , the quantum state will collapse to `$\hat P_{\lambda}\hat \rho \hat P_{\lambda} / (\text{Tr}\hat P_{\lambda}\hat \rho)$` <br>
if eigenvalue-`$\lambda$` eigenstate is unique, this is the familiar statement that the system collapses to eigenstate `$\ket{A=\lambda}$`

<em>[Theorem]</em> : Information is gained by measurement: entropy decrease:

<div>$$S[\hat \rho] \geq \sum_{\lambda} \mathbb{P}(\lambda)S[\hat \rho_{\lambda}]$$</div>

where `$\hat \rho_{\lambda}$` is the collapsed state,
That is to say that the original entropy is less than the expectation value of entropy after measurement

## The Uncertainty Principle

<em>[Theorem]</em> : For Hermitian `$\hat A, \hat B$` , we have:

<div>$$\Delta \hat A \Delta \hat B \geq \frac 1 4 |\langle [\hat A,\hat B]\rangle|^2$$</div>

Where `$\Delta \hat O := (\langle \hat O^2\rangle - \langle \hat O \rangle^2)$` , `$\langle \hat O \rangle = \text{Tr}\hat O \hat \rho$`.

{{%fold "Proof"%}}
Define the inner product of two operators `$\hat A,\hat B$`, as `$(\hat A,\hat B)=\langle \hat A^{\dagger}\hat B\rangle = \text{Tr}\hat A^{\dagger}\hat B\hat \rho $` <br>
Then define two new operators: `$\hat A' = \hat A -\langle \hat A\rangle , \hat B'=\hat B-\langle \hat B\rangle$`, one have:

<div>$$\begin{aligned}
\frac 1 4 |\langle [\hat A,\hat B]\rangle|^2 &= \frac 1 4 |\langle [\hat A',\hat B']\rangle|^2 \\
&= \frac 1 2 (\hat A',\hat B')(\hat B',\hat A') -\frac 1 4 (\hat A',\hat B')^2 -\frac 1 4 (\hat B',\hat A')^2 \\
&= |\text{Im}(\hat A',\hat B')|^2 \leq |(\hat A',\hat B')|^2 \\
&\leq (\hat A',\hat A')(\hat B',\hat B') = (\langle \hat A^2\rangle - |\langle \hat A\rangle|^2)(\langle \hat B^2\rangle - |\langle \hat B\rangle|^2)
\end{aligned}$$</div>

The last inequality is Cauchy-Schwarz <br>
The condition for the equality to be true is obviously:

<div>$$(\hat A',\hat B')\in \mathbb{C} \ \ \text{and} \ \ (\hat A'-\lambda \hat B',\hat A' - \lambda \hat B')=0$$</div>

One can solve the equation to obtain the quantum state `$\hat \rho$` satisfying these condition above.

{{%/fold%}}
