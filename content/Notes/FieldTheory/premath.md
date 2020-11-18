---
title: "Preliminary Mathematics"
date: "2018-11-05T15:45:57+08:00"
draft: false
tags: ["math","symmetry"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
summary: "The preliminary Mathematical knowledge for Quantum Field Theory. Containing the Minkowski Spacetime, Lorentz Group, and the representation theory of Lorentz Group."
---

# Minkowski Spacetime

## The Structure of Minkowski Spacetime
From now on we will study in `Minkowski spacetime` (non-General Relativity) .

*[Definition]* : `Minkowski spacetime (non-curved)` is a 4-dimension real linear space:

{{< mathjax >}}
$$\mathcal{M} = \{x=(x^0,x^1,x^2,x^3)\equiv (x^0,\bm{x}) : x^{\mu}\in \mathbb{R} \}$$
{{< /mathjax >}}

Usually we note the vector as a lowercase of letter with a Greek superscript like$x\sim x^{\mu}$and ignore the basis.
with the `metric` :

{{< mathjax >}}
$$\eta_{\mu\nu}=\eta^{\mu\nu} = (+,-,-,-)$$
{{< /mathjax >}}

And `dual vector` of $x$ :

{{< mathjax >}}
$$x_ {\mu} = \eta_ {\mu\nu}x^{\nu}$$
{{< /mathjax >}}

where the [`Einstein Summation Convention`](https://en.wikipedia.org/wiki/Einstein_notation) has been applied.
The `inner product` in Minkowski spacetime is:

{{< mathjax >}}
$$(x,y) := x^{\mu}y_{\mu} = x_{\mu}y^{\mu} = \eta_{\mu\nu}x^{\mu}y^{\nu}$$
{{< /mathjax >}}

## Lorentz Transformation

*[Definition]* : `Lorentz Transformation` is a linear transformation which hold the inner product invariant:

{{< mathjax >}}
$$\Lambda : \mathcal{M}\ni x^{\mu} \mapsto \mathcal{M} \ni x'^{\mu} = \Lambda^{\mu}_{\ \ \ \  \nu} x ^{\nu}$$
{{< /mathjax >}}

With $\forall x,y\in \mathcal{M} , (\Lambda x,\Lambda y) = (x,y) \Rightarrow \eta_{\mu\nu}\Lambda^{\mu}_{\ \ \ \  \alpha} \Lambda^{\nu}_{\ \ \ \  \beta} = \eta_{\alpha\beta}$
Or equivalently:$\Lambda^{\mu}_{\ \ \ \  \alpha} \Lambda_{\mu \beta} = \eta_{\alpha\beta}$

*[Theorem]* : By$\eta_{\mu\lambda}\eta^{\lambda\nu}=\delta_{\mu}^{\nu}$, we have:

{{< mathjax >}}
$$(\Lambda^{-1})^{\mu}_{\ \ \ \  \nu} = \Lambda_{\nu}^{\ \ \ \  \mu}$$
{{< /mathjax >}}

{{< fold "Proof" >}}
We have$\Lambda^{\mu}_{\ \ \ \  \alpha}\Lambda^{\nu}_{\ \ \ \  \beta} \eta_{\mu\nu} = \eta_{\alpha\beta}$, for$\eta_{\alpha\gamma}\eta^{\gamma\beta} \equiv \eta_{\alpha}^{\beta} = \delta_{\alpha}^{\beta}$, we have:

{{< mathjax >}}
$$\Lambda^{\mu}_{\ \ \ \  \alpha} \Lambda_{\mu}^{\ \ \ \  \beta} = \delta_{\alpha}^{\beta}$$
{{< /mathjax >}}

Or with the raising and lowering indices pairly will not change the value:

{{< mathjax >}}
$$\Lambda_{\alpha}^{\ \ \ \  \mu} \Lambda^{\alpha}_{\ \ \ \  \nu} = \delta_{\nu}^{\mu}$$
{{< /mathjax >}}

For $\Lambda$and$\Lambda^{-1}$ shall satisfy:

{{< mathjax >}}
$$\Lambda \Lambda^{-1} = 1 \Leftrightarrow (\Lambda)^{\mu}_{\ \ \ \  \alpha} (\Lambda^{-1})^{\alpha}_{\ \ \ \  \nu} = \delta_{\nu}^{\mu}$$
{{< /mathjax >}}

With the comparation between these two equality above, we have:

{{< mathjax >}}
$$(\Lambda^{-1})^{\mu}_{\ \ \ \  \alpha} = \Lambda_{\alpha}^{\ \ \ \  \mu}$$
{{< /mathjax >}}
{{< /fold >}}

In Special Relativity, Lorentz transformation describes the coordinate transformation between two reference frames. We can classify Lorentz transformation by if it contain the time reversal and space inversion:
<ol>
  <li>`Proper, Orthochronous` : $\det \Lambda = 1 \ \ , \ \ \Lambda^0_{\indent 0}\geq 1$ </li>
  <li>`Improper, Orthochronous` :$\det \Lambda = -1 \ \ , \ \ \Lambda^0_{\indent 0}\geq 1$</li>
  <li>`Improper, Non-orthochronous` :$\det \Lambda = -1 \ \ , \ \ \Lambda^0_{\indent 0}\leq -1$</li>
  <li>`Proper, Non-orthochronous` :$\det \Lambda = 1 \ \ , \ \ \Lambda^0_{\indent 0}\leq -1$</li>
</ol>
With `Proper Orthochronous` (`Restricted Lorentz Group`) noted as$\text{SO}^+(1,3)$, we can construct the Lorentz Group$\text{O}(1,3)$as:

{{< mathjax >}}
$$\{ 1,P,T,PT \} \text{SO}^+(1,3) = \text{O}(1,3)$$
{{< /mathjax >}}

Where$P=(+,-,-,-)$is the space inversion and$T=(-,+,+,+)$is the time reversal. They also induce those 4 (not connected)components of$\text{O}(1,3)$. <mark>These 4 components are connected (but not simply connected)</mark>

## Scalar, Vector and Tensor

_[Definition]_ : `Scalars` are some quantities, which is invariant when reference frame changes.

_[Definition]_ : `Vectors` are those `4-components quantities`, which are transformed by `Lorentz Transformation` when reference frame changes: $v'^{\mu} = \Lambda^{\mu}_{\indent \nu}v^{\nu}$ . For example, position $x=(x^0,\bm{x})$ is a vector

_[Definition]_ : `Tensors` are multilinear maps from $\mathcal{M}$s and their `dual space` to scalars

For $(m,n)$ type tensor $T$ , it is the multilinear map:

{{< mathjax >}}
$$T :\mathcal{M}^{\times m} \times (\mathcal{M}^* )^{\times n} \rightarrow \mathbb{R}$$
{{< /mathjax >}}

Here, we use $\mathcal{M}$ to note the vector space and $\mathcal{M}^* $ to note the dual-vector space. The Minkowski spacetime is also a vector space $\mathcal{M}$ describing the space-time coordinates. <br>
In a reference frame, one can write the tensor $T$ as a quantity with $4(m+n)$ indices:

{{< mathjax >}}
$$T \sim T_{\mu_1,\cdots,\mu_m}^{\indent \indent \indent \indent \nu_1,\cdots,\nu_n} \ \ \ \mu_p,\nu_q \in \{0,1,2,3\}$$
{{< /mathjax >}}

And:

{{< mathjax >}}
$$T(v_1,v_2,\cdots,v_m,u_1,\cdots,u_n) = T_{\mu_1,\cdots,\mu_m}^{\indent \indent \indent  \indent \nu_1,\cdots,\nu_n} (v_1)^{\mu_1}(v_2)^{\mu_2}\cdots (v_m)^{\mu_m} (u_1)_{\nu_1}\cdots (u_n)_{\nu_n}$$
{{< /mathjax >}}

Then the transformation of the tensor shall be:

{{< mathjax >}}
$$(T')_{\mu_1,\cdots,\mu_m}^{\indent \indent \indent  \indent \nu_1,\cdots,\nu_n} = T_{\alpha_1,\cdots,\alpha_m}^{\indent \indent \indent \indent \beta_1,\cdots,\beta_n} \Lambda_{\mu_1}^{\indent \alpha_1}\cdots
\Lambda_{\mu_m}^{\indent \alpha_m} \Lambda^{\nu_1}_{\indent \beta_1}\cdots \Lambda^{\nu_n}_{\indent \beta_n}$$
{{< /mathjax >}}

# Lorentz group

## Basic Concept

_[Definition]_ : `Lorentz Group` , or mathematically, `Generalized Orthogonal Group` $\text{O}(1,3;\mathbb{R})$ , is the `metrix Lie Group` that preserves the quadratic form:

{{< mathjax >}}
$$(x^0,x^1,x^2,x^3) \mapsto (x^0)^2 - (x^1)^2 - (x^2)^2 - (x^3)^2$$
{{< /mathjax >}}

on $\mathbb{R}^4$ . Which is a `6-D noncompact non-abelian real Lie group, not connected`

_[Definition]_ : `Restricted Lorentz Group` : $\text{SO}^+(1,3)$, is the connected component of Lorentz Group which contains the `identity element`

## Lie Algebra of Restricted Lorentz Group

_[Definition]_ : `Vector representation` of $\text{SO}^+(1,3)$ is its representation by $4\times 4$ real metrix.

_[Theorem]_ : The common form of elements in $\text{SO}^+(1,3)$ is:

{{< mathjax >}}
$$\Lambda = \exp \Big(-\frac {\ti} 2 \omega_{\mu,\nu} J^{\mu,\nu} \Big)$$
{{< /mathjax >}}

Where $J^{\mu\nu} = -J^{\nu\mu}$ are generators, and $\omega_{\mu\nu}=-\omega_{\nu\mu}$ are six independent parameters

With the following notations:

{{< mathjax >}}
$$\begin{aligned}
\theta^i &= \frac 1 2 \sum_{jk} \epsilon^{ijk}\omega^{jk} \ ; \ L^i = \frac 1 2 \sum_{jk} \epsilon^{ijk}J^{jk} \\
\eta^i &= \omega_{0,i} \ ; \ K^i = J^{0,i}
\end{aligned}$$
{{< /mathjax >}}

One can rewrite the expression as

{{< mathjax >}}
$$\Lambda = \exp\big(-\ti \sum_{i=1}^3 (\theta^i L^i + \eta^i K^i)\big)$$
{{< /mathjax >}}

Where $\theta^i,\eta^i$ are real number, and $L^i,K^i$ are generators.

Usually, $L^i$ generate the `rotation` in $\mathbb{R}^3$ , and $K^i$ generate the `boost` .

They satisfy the commutation relation as:

{{< mathjax >}}
$$\begin{aligned}[]
[L^i,L^j] &= \ti \epsilon^{ijk}L^k \\
[L^i,K^j] &= \ti \epsilon^{ijk}K^k \\
[K^i,K^j] &= -\ti \epsilon^{ijk} L^k
\end{aligned}$$
{{< /mathjax >}}

summation of $k$ is over $\{1,2,3\}$

where $\epsilon^{ijk}$ is the covariant `Levi-Civita` simbol. Which equals $1$ if $ijk$ are even permutation of $123$ , and $-1$ for odd ones. And vanishes for otherwise.

{{< fold "Proof" >}}

Let us begin with the infinitesimal Lorentz Transformation in vector representation. Let $J^{\mu\nu}$ be the generators. For
Lorentz Group is six dimension. Then there should be only six independent generators . Letting $J^{\mu\nu}=-J^{\nu\mu}$ will satisfy it.
With $\omega_{\mu\nu}$ be the parameter (Also $\omega_{\mu\nu}=-\omega_{\nu\mu}$ so that there are only 6 independent parameters), we can write down the general expression:

{{< mathjax >}}
$$\Lambda^{\mu}_{\indent \nu} = \exp\Big(-\frac {\ti} {2} \omega_{\alpha\beta} J^{\alpha\beta} \Big)^{\mu}_{\indent \nu}$$
{{< /mathjax >}}

The infinitesimal transformation will be : $\Lambda^{\mu}_{\indent \nu} \approx \delta^{\mu}_{\nu} -\frac {\ti} 2 \omega_{\alpha\beta} (J^{\alpha\beta})^{\mu}_{\indent \nu}$
For Lorentz Transform should satisfy:

{{< mathjax >}}
$$\Lambda^{\mu}_{\indent \lambda}\Lambda^{\nu}_{\indent \delta} \eta_{\mu\nu} = \eta_{\lambda\delta}$$
{{< /mathjax >}}

Then we have:

{{< mathjax >}}
$$\omega_{\alpha\beta}(J^{\alpha\beta})_{\delta\lambda} + \omega_{\alpha\beta}(J^{\alpha\beta})_{\lambda\delta} = 0$$
{{< /mathjax >}}

This shall be hold for arbitary $\omega$ , so we have that:

{{< mathjax >}}
$$(J^{\alpha\beta})_{\mu\nu} = - (J^{\alpha\beta})_{\mu\nu}$$
{{< /mathjax >}}

Which shows that the generators in vector representation are anti-symmetric metrices.
One can choose these matrix arbitarily. One of those is:

{{< mathjax >}}
$$(J^{\alpha\beta})_{\mu\nu} = \ti (\delta_{\mu}^{\alpha}\delta_{\nu}^{\beta}-\delta_{\nu}^{\alpha}\delta_{\mu}^{\beta})$$
{{< /mathjax >}}

The commutation relation are invariant among the representation. They are:

{{< mathjax >}}
$$([J^{\alpha\beta},J^{\gamma\delta}])_{\mu \nu} =\ti\Big\{\delta^{\delta}_{\alpha}(J^{\beta\gamma})+\delta^{\alpha}_{\gamma}(J^{\delta\beta})+\delta^{\beta}_{\delta}(J^{\gamma\alpha})+\delta_{\beta}^{\gamma}(J^{\alpha\delta}) \Big\}_{\mu\nu}$$
{{< /mathjax >}}

By the simple property:

{{< mathjax >}}
$$([J^{\alpha\beta},J^{\gamma\delta}])_{\mu\nu} = \sum_\lambda (J^{\alpha\beta})_{\mu\lambda}(J^{\gamma\delta})_{\lambda\nu} - J^{\gamma\delta})_{\mu\lambda}(J^{\alpha\beta})_{\lambda\nu} = \sum_{\lambda}(J^{\alpha\beta})_{\mu\lambda}(J^{\gamma\delta})_{\lambda\nu} - (\mu\leftrightarrow \nu)$$
{{< /mathjax >}}

{{< /fold >}}

Here we write down all matrix form of these generators in vector representation, the simbol $\sim$ means that the right-hand-side matrix is the matrix of left-hand-side $A$ 's elements $A^{\mu}_{\indent \nu}$

{{< fold "Matrix Form" >}}

{{< mathjax >}}
$$\begin{aligned}
J^{01}&=-J^{10}\sim \ti \begin{bmatrix}0&1&0&0\\ 1&0&0&0\\ 0&0&0&0 \\ 0&0&0&0  \end{bmatrix} \ ; \
J^{02}=-J^{20}\sim \ti \begin{bmatrix}0&0&1&0\\ 0&0&0&0\\ 1&0&0&0\\ 0&0&0&0 \end{bmatrix} \ ; \
J^{03}=-J^{30}\sim \ti \begin{bmatrix} 0&0&0&1\\ 0&0&0&0\\ 0&0&0&0\\ 1&0&0&0 \end{bmatrix} \\
J^{12}&=-J^{21}\sim\ti \begin{bmatrix}0&0&0&0\\ 0&0&-1&0\\ 0&1&0&0\\ 0&0&0&0 \end{bmatrix} \ ; \
J^{23}=-J^{32}\sim\ti\begin{bmatrix}0&0&0&0\\ 0&0&0&0\\ 0&0&0&-1\\ 0&0&1&0 \end{bmatrix} \ ; \
J^{31}=J^{-31}\sim\ti \begin{bmatrix}0&0&0&0\\ 0&0&0&1\\ 0&0&0&0\\ 0&-1&0&0 \end{bmatrix}
\end{aligned}$$
{{< /mathjax >}}

And for $\bm{L},\bm{K}$ :

{{< mathjax >}}
$$\begin{aligned}
L^1&\sim \ti \begin{bmatrix}0&0&0&0\\ 0&0&0&0\\ 0&0&0& -1\\ 0&0&1&0 \end{bmatrix} \ ; \
L^2\sim\ti \begin{bmatrix}0&0&0&0\\ 0&0&0&1\\ 0&0&0&0\\ 0&-1&0&0 \end{bmatrix} \ ; \
L^3\sim\ti \begin{bmatrix}0&0&0&0\\ 0&0&-1&0\\ 0&1&0&0\\ 0&0&0&0 \end{bmatrix} \\
K^2&\sim\ti\begin{bmatrix}0&1&0&0\\ 1&0&0&0\\ 0&0&0&0 \\ 0&0&0&0  \end{bmatrix} \ ; \
K^2\sim\ti \begin{bmatrix}0&0&1&0\\ 0&0&0&0\\ 1&0&0&0\\ 0&0&0&0 \end{bmatrix} \ ; \
K^3\sim \ti \begin{bmatrix} 0&0&0&1\\ 0&0&0&0\\ 0&0&0&0\\ 1&0&0&0 \end{bmatrix}
\end{aligned}$$

{{< /mathjax >}}

{{< /fold >}}


## Weyl Spinor Representation

_[Theorem]_ :     With the definition of $L^i,K^i$ (or for simplicity $\bm{L},\bm{K}$) , one can define the new generator:

{{< mathjax >}}
$$\bm{J}^{(1)} := \frac 1 2 (\bm{L}+\ti \bm{K}) \ \ \bm{J}^{(2)} := \frac 1 2 (\bm{L}-\ti \bm{K})$$
{{< /mathjax >}}

And induce the new commutation relation:

{{< mathjax >}}
$$[J^{(\alpha),i},J^{(\beta),j}] = \ti \delta_{\alpha,\beta} \epsilon^{ijk} J^{(\alpha),k} \ \ ; \ \ \alpha,\beta=1,2$$
{{< /mathjax >}}

{{< fold "Proof" >}}

For $\alpha=\beta=1$ , we have:

{{< mathjax >}}
$$\begin{aligned}[]
[J^i,J^j] &= \frac 1 4 \Big([L^i,L^j]-[K^i,K^j] + \ti ([L^i,K^j]+[K^i,L^j]) \Big) \\
&= \frac 1 4 \Big(\ti \epsilon^{ijk} L^k +\ti \epsilon^{ijk} L^k +\ti (\ti\epsilon^{ijk} K^k - \ti \epsilon^{jik}K^k) \Big) \\
&= \frac 1 2 \epsilon^{ijk}\ti(L^k+\ti K^k) \\
&= \ti \epsilon^{ijk} J^k
\end{aligned}$$
{{< /mathjax >}}

And when $\alpha\neq\beta$ , there will be additional minus sign which let the result to be vanished.

{{< /fold >}}

One can find that $\{J_i^{(1,2)}\}$ forms two $\text{su}(2)$ Lie Algebra.

In some degree, we can say that the Lorentz Group is the direct product of two $\text{SU}(2)$ Group with complex parameters.

_[Definition]_ : For Lorentz Group looks like the direct product of two $\text{SU}(2)$ , we can use a piar of indeces of $\text{SU}(2)$ representation
to note any representations of Lorentz Group , which can be written as $(j_1,j_2)$
Then , the basis of (1/2,0) called as `left-handed Weyl Spinor` , and the basis of (0,1/2) called as `right-handed Weyl Spinor`

Using the `covariance` form of `Pauli Matrices` :

{{< mathjax >}}
$$\sigma^0 = \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} \ , \ \sigma^1 = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix} \ , \ \sigma^2 = \begin{bmatrix} 0 & -\ti \\ \ti & 0\end{bmatrix} \ , \ \sigma^3 = \begin{bmatrix} 1 & 0 \\ 0 & -1 \end{bmatrix}$$
{{< /mathjax >}}

We can write the matrix representation of Lorentz Group by spinor basis:

{{< mathjax >}}
$$\Lambda_L = \exp\big(-\frac {\ti} 2 \sum_{i=1}^3 \sigma^i (\bm{\theta}-\ti \bm{\eta})^i \big) \ , \ \Lambda_R = \exp\big(-\frac {\ti} 2 \sum_{i=1}^3 \sigma^i (\bm{\theta}+\ti \bm{\eta})^i \big)$$
{{< /mathjax >}}

## Parity-Transformation

<em>[Definition]</em> : `Parity-Transformation` is the Spatial inversion transformation.

In Minkowski space-time, we have the matrix form of the Parity-Transformation:

{{< mathjax >}}
$$P\sim \text{diag}(1,-1,-1,-1)$$
{{< /mathjax >}}

It is obviously that $P^2=1$ . That means they are self-identity.

The question is: when Parity-Transformation is operated on the space-time, what will happen on the Lorentz Transformation of these elements(vectors and spinors)

Because we know the matrix form of Parity-Transformation of 4-vectors, we will begin with them.

-   Vectors transform as:

    {{< mathjax >}}
$$v^{\mu} \rightarrow \Lambda(\omega)^{\mu}_{\indent \nu} v^{\nu}$$
{{< /mathjax >}}

    Then under Parity transformation it shall be :

    {{< mathjax >}}
$$P v^{\mu} \rightarrow P \Lambda(\omega)^{\mu}_{\indent \nu} v^{\nu}= P \Lambda(\omega)^{\mu}_{\indent \nu} P P v^{\nu}$$
{{< /mathjax >}}

    That means under Parity Transformation, elements in (Restricted) Lorentz Group shall be transformed by:

    {{< mathjax >}}
$$ \Lambda \rightarrow P \Lambda P = \Lambda' $$
{{< /mathjax >}}

    $\Lambda'$ shall be in one component of the Lorentz Group too. Let $\Lambda=\Lambda(\bm{\theta},\bm{\eta};\bm{L},\bm{K})$ , then we can derive the transformation of the generators $\bm{L},\bm{K}$ under Parity Transformation, with parameters $\bm{\theta},\bm{\eta}$ invariant.

<em>[Theorem]</em> : Under Parity Transformation, we have:

{{< mathjax >}}
$$P\Lambda(\bm{\theta},\bm{\eta};\bm{L},\bm{K}) P = \Lambda(\bm{\theta},\bm{\eta};\bm{L} , -\bm{K}) $$
{{< /mathjax >}}

That means that the 3-vector $\bm{L}$ transforms like `Pseudovector` and $\bm{K}$ transforms like `vector`

{{<fold "Proof">}}
For the explicit expression of $\Lambda$ is:

{{< mathjax >}}
$$\Lambda(\bm{\theta},\bm{\eta};\bm{L},\bm{K}) = \exp\big(-\ti \sum_{i=1}^3 (\theta^i L^i + \eta^i K^i)\big)$$
{{< /mathjax >}}

we have:

{{< mathjax >}}
$$\begin{aligned}
P\Lambda(\bm{\theta},\bm{\eta};\bm{L},\bm{K})P &= \exp\big(-\ti \sum_{i=1}^3 P(\theta^i L^i + \eta^i K^i)P\big) \\
&=\exp\big(-\ti \sum_{i=1}^3 (\theta^i PL^iP + \eta^i PK^iP)\big) \\
&=\Lambda(\bm{\theta},\bm{\eta};P\bm{L}P,P\bm{K}P)
\end{aligned}$$
{{< /mathjax >}}

For the matrix form of $\bm{L}$ and $\bm{K}$ , we can check that:

{{< mathjax >}}
$$\begin{aligned}
P L^i P &= L^i \\
P K^i P &= -K^i
\end{aligned}$$
{{< /mathjax >}}

Q.E.D.
{{</fold>}}

<mark> This theorem hold for spinor representation too</mark> , with the form : $P\Lambda_{L(R)}P = \Lambda_{R(L)}$ and $P a_{l(r)} = a_{r(l)}$

In some degree, we say that Parity-Transformation will exchange the left-handed spinor and right-handed spinor. For the difference between left/right handed spinor is $L\leftrightarrow L , K\leftrightarrow -K$ (That is why they are called as `handed`)

# Spinor Space

_[Definition]_ : `1/2-spinor space` is a 2-dimension complex linear space used for the irrep. of Lorentz Group.
To handle the Lorentz Group, we need two 1/2-spinor spaces, ususally noted as (1/2,0) and (0,1/2).
We will separate the spinor in different space by the subscripts $_l,_r$ .
A spinor is noted as a pair of complex number, or a complex column vector.

In this section, our goal is to construct some `invariants` of Lorentz Group or some quantities we have known from spinor spaces
When spinor operated by the elements of Lorentz Group, it performs as the linear transformation with the 2x2 matrix above.

## Scalars

_[Theorem]_ : For any two left-handed spinors: $a_l,b_l$ , the quadratic form:

{{< mathjax >}}
$$(a_l)^1(b_l)^2-(a_l)^2(b_l)^1 = (a_l)^T \epsilon b_l$$
{{< /mathjax >}}

Where $\epsilon = \ti \sigma^2$ , is invariant under Lorentz Transformation.

{{< fold "Proof" >}}

consider the Lorentz Transformation with parameter $\bm{\theta},\bm{\eta}$ , then we have:

{{< mathjax >}}
$$a_l \rightarrow \Lambda_L a_l \ \ b_l \rightarrow \Lambda_L b_l$$
{{< /mathjax >}}
Where $\Lambda_L = \exp\big(-\frac {\ti} 2 \sum_i \sigma^i (\theta^i - \ti \eta^i) \big) $ .
With the property of Pauli matrices:

{{< mathjax >}}
$$\exp(\ti \bm{x}\cdot \bm{\sigma}) = \cos(x) + \ti \sin (x) \bm{n}_x\cdot \bm{\sigma}$$
{{< /mathjax >}}

For complex vector $\bm{x}\in \mathbb{C}^3$ , this formula shall be treated as:

{{< mathjax >}}
$$\exp(\ti \bm{x}\cdot \bm{\sigma}) = \sum_{k=0}^{\infty} \frac {(-1)^k} {(2k)!} \big(\sum_{i=1}^3 (x^i)^2 \big)^k + \ti \sum_{k=0}^{\infty} \frac {(-1)^k} {(2k+1)!} \big(\sum_{i=1}^3 (x^i)^2 \big)^k \big(\sum_{i=1}^3 x^i \sigma^i \big)$$
{{< /mathjax >}}

Then we can write down the general expression of the matrix:

{{< mathjax >}}
$$\Lambda_L = z_0+z_1\sigma^1+z_2\sigma^2+z_3\sigma^3$$
{{< /mathjax >}}

with $-z_1^2-z_2^2-z_3^2+z_0^2=1$
Then:

{{< mathjax >}}
$$a_l^T\epsilon b_l \rightarrow \ti a_l^T (\sum_{i=0}^{3} z_i (\sigma^i)^T) \sigma^2 \sum_{i=0}^{3} z_i (\sigma^i) b_l$$
{{< /mathjax >}}

For $\sigma^2\sigma^i\sigma^2=-\sigma^{iT}$ , we have $i,j\neq 0$:

{{< mathjax >}}
$$\begin{aligned}
\sigma^{iT} \sigma^2\sigma^j &= -\sigma^2\sigma^i\sigma^j = -\sigma^2 \delta_{ij} -\ti \epsilon^{ijk} \sigma^2\sigma^k \\
&= -\sigma^2 \delta_{ij} +\ti \epsilon^{ij2} - \epsilon^{ijk}\epsilon^{2kl}\sigma^l \\
&= -\sigma^2 \delta_{ij} +\ti \epsilon^{ij2} - (\delta_{il}\delta_{j2}-\delta_{i2}\delta_{jl})\sigma^l \\
&=-\sigma^2 \delta_{ij} +\ti \epsilon^{ij2} - \delta_{j2}\sigma^i+\delta_{i2}\sigma^j
\end{aligned}$$
{{< /mathjax >}}

And:

{{< mathjax >}}
$$\begin{aligned}
\sigma^{0T}\sigma^2\sigma^j &= \delta_{2j} +\ti \epsilon^{2jk}\sigma^k \\
\sigma^{iT}\sigma^2\sigma^0 &= -\sigma^2\sigma^i = -\delta_{2i}-\ti \epsilon^{2ik}\sigma^k \\
\sigma^{0T}\sigma^2\sigma^0 &= \sigma^2
\end{aligned}$$
{{< /mathjax >}}

Then:

{{< mathjax >}}
$$\sum_{i,j=0}^3 z_iz_j \sigma^{iT} \sigma^2\sigma^j =z_0^2 \sigma^2 -\sum_{i=1}^3 z_i^2 \sigma^2 = \sigma^2$$
{{< /mathjax >}}

Which means the quadratic form is indeed invariant.


{{< /fold >}}



## Vectors
_[Theorem]_ : For any left-handed Weyl spionor $a_l$ and right-handed Weyl spinor $b_r$ , Let $\bar{\sigma}^{\mu}=\sigma_{\mu}=\eta_{\mu\nu}\sigma^{\nu}$ , one can construct some quantities with 4-components:

{{< mathjax >}}
$$\begin{aligned}
a^{\mu} &= a_l^{\dagger}\bar{\sigma}^{\mu}a_l \\
b^{\mu} &= b_r^{\dagger}\sigma^{\mu}b_r
\end{aligned}$$
{{< /mathjax >}}

Are `vectors` . Namely, they transformed by the (4-)vector-rep. of Lorentz group under Lorentz Transformation.

{{< fold "Proof" >}}

According to the transformation regulation of spinor, we have:

{{< mathjax >}}
$$\Lambda_L = \exp\big(-\frac {\ti} 2 \sum_{i=1}^3 \sigma^i (\bm{\theta}-\ti \bm{\eta})^i \big)$$
{{< /mathjax >}}

Then for $a_l \rightarrow \Lambda_L a_l$ , one have:

{{< mathjax >}}
$$a^{\mu}\rightarrow a_l^{\dagger} \Lambda_L^{\dagger}\bar{\sigma}^{\mu}\Lambda_L a_l $$
{{< /mathjax >}}

For the completion of Pauli matrices in 4x4 Hermitian matrices space:

{{< mathjax >}}
$$\begin{aligned}[]
\Lambda_L^{\dagger}\bar{\sigma}^{\mu}\Lambda_L &= \eta_{\mu\nu} z_{\alpha}^{*}z_{\beta} \sigma^{\alpha}\sigma^{\nu}\sigma^{\beta} \\
&= (\Lambda)^{\mu}_{\indent \nu} \bar{\sigma}^{\nu}
\end{aligned}$$
{{< /mathjax >}}

We need to check if $L^{\mu}_{\indent \nu}$ is the the vector representation of Lorentz Group, which shall be written as:

{{< mathjax >}}
$$\Lambda^{\mu}_{\indent \nu} = \exp(-\frac \ti 2 \omega_{\alpha\beta}J^{\alpha\beta})^{\mu}_{\indent \nu}=\exp\big(-\ti \sum_{i=1}^3 (\theta^i L^i + \eta^i K^i)\big)^{\mu}_{\indent \nu}$$
{{< /mathjax >}}

We need only to check whether the infinitesimal transformation is consistent or not. Which means that we need to check the following two equalities(generator equalities):

{{< mathjax >}}
$$\begin{aligned}
\partial_{\theta^i} \Lambda_L^{\dagger}\bar{\sigma}^{\mu}\Lambda_L|_{\bm{\eta}=\bm{\theta}=0} &= \partial_{\theta^i} \Lambda^{\mu}_{\indent \nu} \bar{\sigma}^{\nu}|_{\bm{\eta}=\bm{\theta}=0} \\
\partial_{\eta^i} \Lambda_L^{\dagger}\bar{\sigma}^{\mu}\Lambda_L|_{\bm{\eta}=\bm{\theta}=0} &= \partial_{\eta^i} \Lambda^{\mu}_{\indent \nu} \bar{\sigma}^{\nu}|_{\bm{\eta}=\bm{\theta}=0}
\end{aligned}$$
{{< /mathjax >}}

Which is:

{{< mathjax >}}
$$\begin{aligned}
\frac \ti 2[\sigma^i,\bar{\sigma}^{\mu}] &= -\ti (L^i)^{\mu}_{\indent \nu}\bar{\sigma}^{\nu} \\
-\frac 1 2\{\sigma^i,\bar{\sigma}^{\mu}\} &= -\ti (K^i)^{\mu}_{\indent \nu}\bar{\sigma}^{\nu}
\end{aligned}$$
{{< /mathjax >}}

By the matrix form of $\bm{L},\bm{K}$ we can check these equalities

Which is similar for the right-handed Weyl spinor.

{{< /fold >}}

## Dirac Spinor

Sometimes we need a Parity-conserved theory, in which two handed spinor should be involved simultaneously. The simplest way is the `direct sum` of two spinor. This is called as `Dirac spinor` :

{{< mathjax >}}
$$\psi_{\alpha} = \begin{bmatrix} a_l \\ b_r \end{bmatrix}$$
{{< /mathjax >}}

Where $\psi_{\alpha}$ is a Dirac spinor. It has 4 components, the first two form a left-handed Weyl spinor, and the last two form a right-handed Weyl spinor.

We define following 4x4 $\gamma$ matrices, which will be widely used in field theory:

{{< mathjax >}}
$$\gamma^{\mu} = \begin{bmatrix} \bm{0} & \sigma^{\mu} \\ \bar{\sigma}^{\mu} & \bm{0}\end{bmatrix}$$
{{< /mathjax >}}

<mark>This is a little different from some others book. Usually this forms of gamma matrices is called that in `Weyl(Chiral) basis` </mark>

In `Dirac basis` , $\gamma^{1,2,3}$ are the same, but $\gamma^0 = \text{diag}(1,1,-1,-1)$ `.

One can check that they satisfy a anti-commutation relation:

{{< mathjax >}}
$$\gamma^{\mu}\gamma^{\nu}+\gamma^{\nu}\gamma^{\mu} = 2\eta^{\mu\nu}$$
{{< /mathjax >}}

Then we know that under Parity transformation, the Dirac spinor should exchange its two Weyl spinors: $\psi \rightarrow \psi'=\gamma^0\psi$

Another important matrix is:

{{< mathjax >}}
$$\gamma_5=\gamma^5 = \ti \gamma^0\gamma^1\gamma^2\gamma^3 = \begin{bmatrix} -1 & 0 \\ 0 & 1 \end{bmatrix}$$
{{< /mathjax >}}

It is anti-commutative with any $\gamma^\mu$ : $\{\gamma^5,\gamma^{\mu}\}=0$. And one can construct `Projector` by it:

{{< mathjax >}}
$$P_L = \frac 1 2 (1-\gamma_5) \ ; \ P_R=\frac 1 2 (1+\gamma_5)$$
{{< /mathjax >}}

They will get the left(right)-handed part of a Dirac spinor.

We can use Dirac spinor to construct some quantities, with $\bar{\psi} = \psi^\dagger \gamma^0$

1.  `Parity-invariant` Lorentz Scalar and Vector:

    {{< mathjax >}}
$$S = \bar{\psi}\psi \ ; \ V^\mu = \bar{\psi}\gamma^\mu\psi$$
{{< /mathjax >}}

    This shows that the matrices in spinor space $\gamma^\mu$ seem like a vector in Minkowski spacetime.

2.  `Pseudo-Scalar` $P$ , `Pseudo-Vector` $A^\mu$ and Tensor $T^{\mu\nu}$ :

    {{< mathjax >}}
$$P=\bar{\psi}\gamma^5\psi \ ; \ A^\mu=\bar{\psi}\gamma_5\gamma^\mu\psi \ ; \ T_{\mu\nu}=\bar{\psi}\sigma_{\mu\nu}\psi$$
{{< /mathjax >}}

    Where $\sigma_{\mu\nu}=\frac {\ti} 2 [\gamma_{\mu},\gamma_{\nu}]$

<em>[Definition (Clifford Algebra)]</em> : There are 16 independent Dirac matrices: $1,\gamma_5,\gamma_{\mu},\gamma_5\gamma_{\mu},\sigma_{\mu\nu}$ . They together with normal matrices product form an `algebra` , called as `Clifford Algebra`

Finally, even it is trivial, we will give the transformation relationship of Dirac Spinor under the Lorentz Transformation:

{{< mathjax >}}
$$\psi \rightarrow \psi' = \begin{bmatrix} \Lambda_L & 0 \\ 0 & \Lambda_R \end{bmatrix} \psi = \exp(-\frac {\ti} 4 \sum_{\mu\nu} \sigma_{\mu\nu}\omega_{\mu\nu}) \psi $$
{{< /mathjax >}}

Where $\omega_{\mu\nu}$ are the parameters of $\Lambda$

{{<fold "Proof">}}

Similar to what we have done before, we need only check the equalities of generators:

{{< mathjax >}}
$$\begin{aligned}
\partial_{\theta^i} \begin{bmatrix} \Lambda_L & 0 \\ 0 & \Lambda_R \end{bmatrix} \psi \Bigg|_{\bm{\theta}=\bm{\eta}=0} &= \partial_{\theta^i} \exp(-\frac {\ti} 4 \sum_{\mu\nu} \sigma_{\mu\nu}\omega_{\mu\nu}) \psi\Big|_{\bm{\theta}=\bm{\eta}=0} \\
\partial_{\eta^i} \begin{bmatrix} \Lambda_L & 0 \\ 0 & \Lambda_R \end{bmatrix} \psi \Bigg|_{\bm{\theta}=\bm{\eta}=0} &= \partial_{\eta^i} \exp(-\frac {\ti} 4 \sum_{\mu\nu} \sigma_{\mu\nu}\omega_{\mu\nu}) \psi\Big|_{\bm{\theta}=\bm{\eta}=0}
\end{aligned}$$
{{< /mathjax >}}

With $\theta^i =  \epsilon^{ijk}\omega^{jk}/2 = \epsilon^{ijk}\omega_{jk}/2  , \eta^i=\omega_{0i}$ That is to check the equalities:

{{< mathjax >}}
$$\begin{aligned}
\begin{bmatrix} -\ti \sigma^i /2 & 0 \\ 0 & -\ti \sigma^i/2 \end{bmatrix} \psi  &= -\sum_{jk}\frac {\ti} 4 \sigma_{jk}\epsilon^{ijk} \psi \\
\begin{bmatrix} -\sigma^i/2 & 0 \\ 0 & \sigma^i/2 \end{bmatrix} \psi &= -(\frac {\ti} 2 \sigma_{0i}) \psi
\end{aligned}$$
{{< /mathjax >}}

For $\sigma_{\mu\nu} = \frac {\ti} 2 [\gamma_{\mu},\gamma_{\nu}]$ , we can calculate it in Weyl basis:

{{< mathjax >}}
$$\begin{aligned}
\sigma_{\mu\nu} &= \frac {\ti} 2 \Bigg(\begin{bmatrix} 0 & \sigma^\mu \\ \bar{\sigma}^\mu & 0 \end{bmatrix}\begin{bmatrix} 0 & \sigma^\nu \\ \bar{\sigma}^\nu & 0 \end{bmatrix}-\begin{bmatrix} 0 & \sigma^\nu \\ \bar{\sigma}^\nu & 0 \end{bmatrix}\begin{bmatrix} 0 & \sigma^\mu \\ \bar{\sigma}^\mu & 0 \end{bmatrix}\Bigg) \\
&= \frac {\ti} 2 \begin{bmatrix} \sigma^\mu \bar{\sigma}^\nu -\sigma^\nu \bar{\sigma}^\mu & 0 \\ 0 & \bar{\sigma}^\mu \sigma^\nu - \bar{\sigma}^\nu\sigma^\mu \end{bmatrix}
\end{aligned}$$
{{< /mathjax >}}

With the Pauli matrices' property: $[\sigma^i,\sigma^j] = 2\ti \epsilon^{ijk}\sigma^k$ , we have:

{{< mathjax >}}
$$\begin{aligned}
\sigma_{i0} &= \ti \begin{bmatrix} \sigma^i & 0 \\ 0 & -\sigma^i \end{bmatrix} \\
\sigma_{ij} &= \epsilon^{ijk} \begin{bmatrix}\sigma^k & 0 \\ 0 & \sigma^k \end{bmatrix}
\end{aligned}$$
{{< /mathjax >}}

Then we have:

{{< mathjax >}}
$$\begin{aligned}
-\frac {\ti} 2 \sigma_{0i} &= \begin{bmatrix} -\sigma^i/2 & 0 \\ 0 &\sigma^i /2\end{bmatrix} \\
-\sum_{jk} \frac {\ti} 4 \sigma_{jk}\epsilon^{ijk} &= -2\delta_i^l \begin{bmatrix}\sigma^l & 0 \\ 0 & \sigma^l \end{bmatrix} \frac {\ti} 4 = \begin{bmatrix}-\ti\sigma^i/2 & 0 \\ 0 & -\ti\sigma^i/2 \end{bmatrix}
\end{aligned}$$
{{< /mathjax >}}

The equalities are checked.

{{</fold>}}
