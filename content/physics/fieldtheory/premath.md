---
title: "Preliminary Mathematics"
date: 2018-11-05T15:45:57+08:00
draft: false
tags: ["Physics", "Math"]
series: ["Field Theory"]
categories: ["Physics"]
toc: true
---

### Minkowski Spacetime

#### The Structure of Minkowski Spacetime
From now on we will study in `Minkowski spacetime` (non-General Relativity) .

*[Definition]* : `Minkowski spacetime (non-curved)` is a 4-dimension real linear space:

<div>$$\mathcal{M} = \{x=(x^0,x^1,x^2,x^3)\equiv (x^0,\bm{x}) : x^{\mu}\in \mathbb{R} \}$$</div>

Usually we note the vector as a lowercase of letter with a Greek superscript like`$x\sim x^{\mu}$`and ignore the basis.
with the `metric` :

<div>$$\eta_{\mu\nu}=\eta^{\mu\nu} = (+,-,-,-)$$</div>

And `dual vector` of `$x$` :

<div>$$x_ {\mu} = \eta_ {\mu\nu}x^{\nu}$$</div>

where the [`Einstein Summation Convention`](https://en.wikipedia.org/wiki/Einstein_notation) has been applied.
The `inner product` in Minkowski spacetime is:

<div>$$(x,y) := x^{\mu}y_{\mu} = x_{\mu}y^{\mu} = \eta_{\mu\nu}x^{\mu}y^{\nu}$$</div>

#### Lorentz Transformation

*[Definition]* : `Lorentz Transformation` is a linear transformation which hold the inner product invariant:

<div>$$\Lambda : \mathcal{M}\ni x^{\mu} \mapsto \mathcal{M} \ni x'^{\mu} = \Lambda^{\mu}_{\ \ \ \  \nu} x ^{\nu}$$</div>

With `$\forall x,y\in \mathcal{M} , (\Lambda x,\Lambda y) = (x,y) \Rightarrow \eta_{\mu\nu}\Lambda^{\mu}_{\ \ \ \  \alpha} \Lambda^{\nu}_{\ \ \ \  \beta} = \eta_{\alpha\beta}$`
Or equivalently:`$\Lambda^{\mu}_{\ \ \ \  \alpha} \Lambda_{\mu \beta} = \eta_{\alpha\beta}$`

*[Theorem]* : By`$\eta_{\mu\lambda}\eta^{\lambda\nu}=\delta_{\mu}^{\nu}$`, we have:

<div>$$(\Lambda^{-1})^{\mu}_{\ \ \ \  \nu} = \Lambda_{\nu}^{\ \ \ \  \mu}$$</div>

{{% fold "Proof" %}}
We have`$\Lambda^{\mu}_{\ \ \ \  \alpha}\Lambda^{\nu}_{\ \ \ \  \beta} \eta_{\mu\nu} = \eta_{\alpha\beta}$`, for`$\eta_{\alpha\gamma}\eta^{\gamma\beta} \equiv \eta_{\alpha}^{\beta} = \delta_{\alpha}^{\beta}$`, we have:

<div>$$\Lambda^{\mu}_{\ \ \ \  \alpha} \Lambda_{\mu}^{\ \ \ \  \beta} = \delta_{\alpha}^{\beta}$$</div>

Or with the raising and lowering indices pairly will not change the value:

<div>$$\Lambda_{\alpha}^{\ \ \ \  \mu} \Lambda^{\alpha}_{\ \ \ \  \nu} = \delta_{\nu}^{\mu}$$</div>

For `$\Lambda$`and`$\Lambda^{-1}$` shall satisfy:

<div>$$\Lambda \Lambda^{-1} = 1 \Leftrightarrow (\Lambda)^{\mu}_{\ \ \ \  \alpha} (\Lambda)^{\alpha}_{\ \ \ \  \nu} = \delta_{\nu}^{\mu}$$</div>

With the comparation between these two equality above, we have:

<div>$$(\Lambda^{-1})^{\mu}_{\ \ \ \  \alpha} = \Lambda_{\alpha}^{\ \ \ \  \mu}$$</div>
{{% /fold %}}

In Special Relativity, Lorentz transformation describes the coordinate transformation between two references. We can classify Lorentz transformation by if it contain the time reversal and space inversion:
<ol>
  <li>`Proper, Orthochronous` : `$\det \Lambda = 1 \ \ , \ \ \Lambda^0_{\indent 0}\geq 1$` </li>
  <li>`Improper, Orthochronous` :`$\det \Lambda = -1 \ \ , \ \ \Lambda^0_{\indent 0}\geq 1$`</li>
  <li>`Improper, Non-orthochronous` :`$\det \Lambda = -1 \ \ , \ \ \Lambda^0_{\indent 0}\leq -1$`</li>
  <li>`Proper, Non-orthochronous` :`$\det \Lambda = 1 \ \ , \ \ \Lambda^0_{\indent 0}\leq -1$`</li>
</ol>
With `Proper Orthochronous` (`Restricted Lorentz Group`) noted as`$\text{SO}^+(1,3)$`, we can construct the Lorentz Group`$\text{O}(1,3)$`as:

<div>$$\\{ 1,P,T,PT \\} \text{SO}^+(1,3) = \text{O}(1,3)$$</div>

Where`$P=(+,-,-,-)$`is the space inversion and`$T=(-,+,+,+)$`is the time reversal. They also induce those 4 (not connected)components of`$\text{O}(1,3)$`. <mark>These 4 components are connected (but not simply connected)</mark>

#### Scalar, Vector and Tensor

_[Definition]_ : `Scalars` are some quantities, which is invariant when reference changes.

_[Definition]_ : `Vectors` are those `4-components quantities`, which are transformed by `Lorentz Transformation` when reference changes: `$v'^{\mu} = \Lambda^{\mu}_{\indent \nu}v^{\nu}$` . For example, position `$x=(x^0,\bm{x})$` is a vector

_[Definition]_ : `Tensors` are multilinear maps from `$\mathcal{M}$`s and their `dual space` to scalars

For `$(m,n)$` type tensor `$T$` , it is the multilinear map:

<div>$$T :\mathcal{M}^{\times m} \times (\mathcal{M}^* )^{\times n} \rightarrow \mathbb{R}$$</div>

Here, we use `$\mathcal{M}$` to note the vector space and `$\mathcal{M}^* $` to note the dual-vector space. The Minkowski spacetime is also a vector space `$\mathcal{M}$` describing the space-time coordinates. <br>
In a reference, one can write the tensor `$T$` as a quantity with `$4(m+n)$` indices:

<div>$$T \sim T_{\mu_1,\cdots,\mu_m}^{\indent \indent \indent \indent \nu_1,\cdots,\nu_n} \ \ \ \mu_p,\nu_q \in \{0,1,2,3\}$$</div>

And:

<div>$$T(v_1,v_2,\cdots,v_m,u_1,\cdots,u_n) = T_{\mu_1,\cdots,\mu_m}^{\indent \indent \indent  \indent \nu_1,\cdots,\nu_n} (v_1)^{\mu_1}(v_2)^{\mu_2}\cdots (v_m)^{\mu_m} (u_1)_{\nu_1}\cdots (u_n)_{\nu_n}$$</div>

Then the transformation of the tensor shall be:

<div>$$(T')_{\mu_1,\cdots,\mu_m}^{\indent \indent \indent  \indent \nu_1,\cdots,\nu_n} = T_{\alpha_1,\cdots,\alpha_m}^{\indent \indent \indent \indent \beta_1,\cdots,\beta_n} \Lambda_{\mu_1}^{\indent \alpha_1}\cdots
\Lambda_{\mu_m}^{\indent \alpha_m} \Lambda^{\nu_1}_{\indent \beta_1}\cdots \Lambda^{\nu_n}_{\indent \beta_n}$$</div>

### Lorentz group

#### Basic Concept

_[Definition]_ : `Lorentz Group` , or mathematically, `Generalized Orthogonal Group` `$\text{O}(1,3;\mathbb{R})$` , is the `metrix Lie Group` that preserves the quadratic form:

<div>$$(x^0,x^1,x^2,x^3) \mapsto (x^0)^2 - (x^1)^2 - (x^2)^2 - (x^3)^2$$</div>

on `$\mathbb{R}^4$` . Which is a `6-D noncompact non-abelian real Lie group, not connected`

_[Definition]_ : `Restricted Lorentz Group` : `$\text{SO}^+(1,3)$`, is the connected component of Lorentz Group which contains the `identity element`

#### Lie Algebra of Restricted Lorentz Group

_[Definition]_ : `Vector representation` of `$\text{SO}^+(1,3)$` is its representation by `$4\times 4$` real metrix.

_[Theorem]_ : The common form of elements in `$\text{SO}^+(1,3)$` is:

<div>$$\Lambda = \exp \Big(-\frac {\ti} 2 \omega_{\mu,\nu} J^{\mu,\nu} \Big)$$</div>

Where `$J^{\mu\nu} = -J^{\nu\mu}$` are generators, and `$\omega_{\mu\nu}=-\omega_{\nu\mu}$` are six independent parameters
With the following notations:

<div>$$\begin{aligned}
\theta^i &= \frac 1 2 \epsilon^{ijk}\omega^{jk} \ ; \ L^i = \frac 1 2 \epsilon^{ijk}J^{jk} \\
\eta^i &= \omega_{0,i} \ ; \ K^i = J^{0,i}
\end{aligned}$$</div>

One can rewrite the expression as

<div>$$\Lambda = \exp\big(-\ti \sum_{i=1}^3 (\theta^i L^i + \eta^i K^i)\big)$$</div>

Where `$\theta^i,\eta^i$` are real number, and `$L^i,K^i$` are generators.

Usually, `$L^i$` generate the `rotation` in `$\mathbb{R}^3$` , and `$K^i$` generate the `boost` .

They satisfy the commutation relation as:

<div>$$\begin{aligned}[]
[L^i,L^j] &= \ti \epsilon^{ijk}L^k \\
[L^i,K^j] &= \ti \epsilon^{ijk}K^k \\
[K^i,K^j] &= -\ti \epsilon^{ijk} L^k
\end{aligned}$$</div>

where \(\epsilon^{ijk}\) is the covariant `Levi-Civita` simbol. Which equals `$1$` if `$ijk$` are even permutation of `$123$` , and `$-1$` for odd ones. And vanishes for otherwise.

{{% fold "Proof" %}}

Let us begin with the infinitesimal Lorentz Transformation in vector representation. Let `$J^{\mu\nu}$` be the generators. For
Lorentz Group is six dimension. Then there should be only six independent generators . Letting `$J^{\mu\nu}=-J^{\nu\mu}$` will satisfy it.
With `$\omega_{\mu\nu}$` be the parameter (Also `$\omega_{\mu\nu}=-\omega_{\nu\mu}$` so that there are only 6 independent parameters), we can write down the general expression:

<div>$$\Lambda^{\mu}_{\indent \nu} = \exp\Big(-\frac {\ti} {2} \omega_{\alpha\beta} J^{\alpha\beta} \Big)^{\mu}_{\indent \nu}$$</div>

The infinitesimal transformation will be : `$\Lambda^{\mu}_{\indent \nu} \approx \delta^{\mu}_{\nu} -\frac {\ti} 2 \omega_{\alpha\beta} (J^{\alpha\beta})^{\mu}_{\indent \nu}$`
For Lorentz Transform should satisfy:

<div>$$\Lambda^{\mu}_{\indent \lambda}\Lambda^{\nu}_{\indent \delta} \eta_{\mu\nu} = \eta_{\lambda\delta}$$</div>

Then we have:

<div>$$\omega_{\alpha\beta}(J^{\alpha\beta})_{\delta\lambda} + \omega_{\alpha\beta}(J^{\alpha\beta})_{\lambda\delta} = 0$$</div>

This shall be hold for arbitary `$\omega$` , so we have that:

<div>$$(J^{\alpha\beta})_{\mu\nu} = - (J^{\alpha\beta})_{\mu\nu}$$</div>

Which shows that the generators in vector representation are anti-symmetric metrices.
One can choose these matrix arbitarily. One of those is:

<div>$$(J^{\alpha\beta})_{\mu\nu} = \ti (\delta_{\mu}^{\alpha}\delta_{\nu}^{\beta}-\delta_{\nu}^{\alpha}\delta_{\mu}^{\beta})$$</div>

The commutation relation are invariant among the representation. They are:

<div>$$([J^{\alpha\beta},J^{\gamma\delta}])_{\mu \nu} =\ti\Big\{\delta^{\delta}_{\alpha}(J^{\beta\gamma})+\delta^{\alpha}_{\gamma}(J^{\delta\beta})+\delta^{\beta}_{\delta}(J^{\gamma\alpha})+\delta_{\beta}^{\gamma}(J^{\alpha\delta}) \Big\}_{\mu\nu}$$</div>

By the simple property:

<div>$$([J^{\alpha\beta},J^{\gamma\delta}])_{\mu\nu} = \sum_\lambda (J^{\alpha\beta})_{\mu\lambda}(J^{\gamma\delta})_{\lambda\nu} - J^{\gamma\delta})_{\mu\lambda}(J^{\alpha\beta})_{\lambda\nu} = \sum_{\lambda}(J^{\alpha\beta})_{\mu\lambda}(J^{\gamma\delta})_{\lambda\nu} - (\mu\leftrightarrow \nu)$$</div>

{{% /fold %}}

#### Weyl Spinor Representation

_[Theorem]_ :     With the definition of `$L^i,K^i$` (or for simplicity `$\bm{L},\bm{K}$`) , one can define the new generator:

<div>$$\bm{J}^{(1)} := \frac 1 2 (\bm{L}+\ti \bm{K}) \ \ \bm{J}^{(2)} := \frac 1 2 (\bm{L}-\ti \bm{K})$$</div>

And induce the new commutation relation:

<div>$$[J^{(\alpha),i},J^{(\beta),j}] = \ti \delta_{\alpha,\beta} \epsilon^{ijk} J^{(\alpha),k} \ \ ; \ \ \alpha,\beta=1,2$$</div>

{{% fold "Proof" %}}

For `$\alpha=\beta=1$` , we have:

<div>$$\begin{aligned}[]
[J^i,J^j] &= \frac 1 4 \Big([L^i,L^j]-[K^i,K^j] + \ti ([L^i,K^j]+[K^i,L^j]) \Big) \\
&= \frac 1 4 \Big(\ti \epsilon^{ijk} L^k +\ti \epsilon^{ijk} L^k +\ti (\ti\epsilon^{ijk} K^k - \ti \epsilon^{jik}K^k) \Big) \\
&= \frac 1 2 \epsilon^{ijk}\ti(L^k+\ti K^k) \\
&= \ti \epsilon^{ijk} J^k
\end{aligned}$$</div>

And when `$\alpha\neq\beta$` , there will be additional minus sign which let the result to be vanished.

{{% /fold %}}

One can find that `$\{J_i^{(1,2)}\}$` forms two `$\text{su}(2)$` Lie Algebra.

In some degree, we can say that the Lorentz Group is the direct product of two `$\text{SU}(2)$` Group with complex parameters.

_[Definition]_ : For Lorentz Group looks like the direct product of two `$\text{SU}(2)$` , we can use a piar of indeces of `$\text{SU}(2)$` representation
to note any representations of Lorentz Group , which can be written as `$(j_1,j_2)$`
Then , the basis of (1/2,0) called as `left-handed Weyl Spinor` , and the basis of (0,1/2) called as `right-handed Weyl Spinor`

Using the `covariance` form of `Pauli Matrices` :

<div>$$\sigma^0 = \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} \ , \ \sigma^1 = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix} \ , \ \sigma^2 = \begin{bmatrix} 0 & -\ti \\ \ti & 0\end{bmatrix} \ , \ \sigma^3 = \begin{bmatrix} 1 & 0 \\ 0 & -1 \end{bmatrix}$$</div>

We can write the matrix representation of Lorentz Group by spinor basis:

<div>$$\Lambda_L = \exp\big(-\frac {\ti} 2 \sum_{i=1}^3 \sigma^i (\bm{\theta}-\ti \bm{\eta})^i \big) \ , \ \Lambda_R = \exp\big(-\frac {\ti} 2 \sum_{i=1}^3 \sigma^i (\bm{\theta}+\ti \bm{\eta})^i \big)$$</div>

### Spinor Space

_[Definition]_ : `1/2-spinor space` is a 2-dimension complex linear space used for the irrep. of Lorentz Group.
To handle the Lorentz Group, we need two 1/2-spinor spaces, ususally noted as (1/2,0) and (0,1/2).
We will separate the spinor in different space by the subscripts `$_l,_r$` .
A spinor is noted as a pair of complex number, or a complex column vector.

In this section, our goal is to construct some `invariants` of Lorentz Group or some quantities we have known from spinor spaces
When spinor operated by the elements of Lorentz Group, it performs as the linear transformation with the 2x2 matrix above.

#### Scalars

_[Theorem]_ : For any two left-handed spinors: `$a_l,b_l$` , the quadratic form:

<div>$$(a_l)^1(b_l)^2-(a_l)^2(b_l)^1 = (a_l)^T \epsilon b_l$$</div>

Where `$\epsilon = \ti \sigma^2$` , is invariant under Lorentz Transformation.

{{% fold "Proof" %}}

consider the Lorentz Transformation with parameter `$\bm{\theta},\bm{\eta}$` , then we have:

<div>$$a_l \rightarrow \Lambda_L a_l \ \ b_l \rightarrow \Lambda_L b_l$$</div>
Where `$\Lambda_L = \exp\big(-\frac {\ti} 2 \sum_i \sigma^i (\theta^i - \ti \eta^i) \big) $` .
With the property of Pauli matrices:

<div>$$\exp(\ti \bm{x}\cdot \bm{\sigma}) = \cos(x) + \ti \sin (x) \bm{n}_x\cdot \bm{\sigma}$$</div>

For complex vector `$\bm{x}\in \mathbb{C}^3$` , this formula shall be treated as:

<div>$$\exp(\ti \bm{x}\cdot \bm{\sigma}) = \sum_{k=0}^{\infty} \frac {(-1)^k} {(2k)!} \big(\sum_{i=1}^3 (x^i)^2 \big)^k + \ti \sum_{k=0}^{\infty} \frac {(-1)^k} {(2k+1)!} \big(\sum_{i=1}^3 (x^i)^2 \big)^k \big(\sum_{i=1}^3 x^i \sigma^i \big)$$</div>

Then we can write down the general expression of the matrix:

<div>$$\Lambda_L = z_0+z_1\sigma^1+z_2\sigma^2+z_3\sigma^3$$</div>

with `$-z_1^2-z_2^2-z_3^2+z_0^2=1$`
Then:

<div>$$a_l^T\epsilon b_l \rightarrow \ti a_l^T (\sum_{i=0}^{3} z_i (\sigma^i)^T) \sigma^2 \sum_{i=0}^{3} z_i (\sigma^i) b_l$$</div>

For `$\sigma^2\sigma^i\sigma^2=-\sigma^{iT}$` , we have `$i,j\neq 0$`:

<div>$$\begin{aligned}
\sigma^{iT} \sigma^2\sigma^j &= -\sigma^2\sigma^i\sigma^j = -\sigma^2 \delta_{ij} -\ti \epsilon^{ijk} \sigma^2\sigma^k \\
&= -\sigma^2 \delta_{ij} +\ti \epsilon^{ij2} - \epsilon^{ijk}\epsilon^{2kl}\sigma^l \\
&= -\sigma^2 \delta_{ij} +\ti \epsilon^{ij2} - (\delta_{il}\delta_{j2}-\delta_{i2}\delta_{jl})\sigma^l \\
&=-\sigma^2 \delta_{ij} +\ti \epsilon^{ij2} - \delta_{j2}\sigma^i+\delta_{i2}\sigma^j
\end{aligned}$$</div>

And:

<div>$$\begin{aligned}
\sigma^{0T}\sigma^2\sigma^j &= \delta_{2j} +\ti \epsilon^{2jk}\sigma^k \\
\sigma^{iT}\sigma^2\sigma^0 &= -\sigma^2\sigma^i = -\delta_{2i}-\ti \epsilon^{2ik}\sigma^k \\
\sigma^{0T}\sigma^2\sigma^0 &= \sigma^2
\end{aligned}$$</div>

Then:

<div>$$\sum_{i,j=0}^3 z_iz_j \sigma^{iT} \sigma^2\sigma^j =z_0^2 \sigma^2 -\sum_{i=1}^3 z_i^2 \sigma^2 = \sigma^2$$</div>

Which means the quadratic form is indeed invariant.


{{% /fold %}}



#### Vectors
_[Theorem]_ : For any left-handed Weyl spionor $a_l$ and right-handed Weyl spinor $b_r$ , Let `$\bar{\sigma}^{\mu}=\sigma_{\mu}=\eta_{\mu\nu}\sigma^{\nu}$` , one can construct some quantities with 4-components:

<div>$$\begin{aligned}
a^{\mu} &= a_l^{\dagger}\bar{\sigma}^{\mu}a_l \\
b^{\mu} &= b_r^{\dagger}\sigma^{\mu}b_r
\end{aligned}$$</div>

Are `vectors` . Namely, they transformed by the (4-)vector-rep. of Lorentz group under Lorentz Transformation.

{{% fold "Proof" %}}

Same as our discussion in `Scalar` section, we have:

<div>$$\Lambda_L = z_{\mu}\sigma^{\mu}$$</div>

with `$z_0^2-z_1^2-z_2^2-z_3^2 = 1$` . Then for `$a_l \rightarrow \Lambda_L a_l$` , one have:

<div>$$a^{\mu}\rightarrow a_l^{\dagger} \Lambda_L^{\dagger}\bar{\sigma}^{\mu}\Lambda_L a_l $$</div>

For the completion of Pauli matrices in 4x4 Hermitian matrices space:

<div>$$\begin{aligned}[]
\Lambda_L^{\dagger}\bar{\sigma}^{\mu}\Lambda_L &= \eta_{\mu\nu} z_{\alpha}^{*}z_{\beta} \sigma^{\alpha}\sigma^{\nu}\sigma^{\beta} \\
&= \Lambda^{\mu}_{\indent \nu} \bar{\sigma}^{\nu}
\end{aligned}$$</div>

By the inner-product of Pauli matrices:

<div>$$(\sigma^\alpha,\sigma^\beta) \equiv \frac 1 2 \text{Tr}(\sigma^\alpha\sigma^\beta) = \delta^\alpha_\beta $$</div>

Then we have:

<div>$$\begin{aligned}
\Lambda^{\mu}_{\indent \nu} &= \frac 1 2 \text{Tr}(\Lambda_L^{\dagger}\bar{\sigma}^{\mu}\Lambda_L\bar{\sigma}^{\nu}) \\
&= \frac 1 2 \eta_{\mu\lambda}\eta_{\nu\delta}z_{\alpha}^{*}z_{\beta} \text{Tr}\sigma^\alpha\sigma^\lambda\sigma^\beta\sigma^\delta
\end{aligned}$$</div>

{{% /fold %}}
