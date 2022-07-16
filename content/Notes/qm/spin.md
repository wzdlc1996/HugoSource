---
title: "Angular Momentum and Spin"
date: 2018-11-14T11:42:20+08:00
draft: false
tags: ["quantum","symmetry","statistical-phys"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "Angular momentum and spin theory in Quantum mechanics. Contain SU(2) and SO(3) basic concepts and their representation theory"
---

# SU(2) and SO(3) Groups

## Defining SO(3) Group

<em>[Definition]</em> : `SO(3) Group` is the group of `proper rotations` in 3-dimensional space. With $\bm{r}=(x,y,z)^T$ , it is the set of 3x3 matrices $\bm{R}$ which satisfy:


$$\bm{R}^T \bm{R}= \bm{1} , \ \ \det \bm{R}=1$$


SO(3) together with spatial inversion form the O(3) group: $\text{SO}(3) \bigcup I \text{SO}(3) = \text{O}(3)$

## Parameterizing SO(3) Group

There are two ways to parameterize the SO(3) group:

1.  Any SO(3) rotation can be descriped by angle $\theta$ and axis $\bm{n}$ . It can be denoted by: $\bm{R}_{\bm{n}}(\theta)$ , and according to the definition, we have following properties:

    1.  $\bm{R}_{\bm{n}}(\theta)^{-1}=\bm{R}_{\bm{n}}(-\theta)$
    2.  $\bm{R}_{\bm{n}}(\theta) = \bm{R}_{-\bm{n}}(-\theta)$
    3.  $\bm{R}'\bm{R}_n(\theta)(\bm{R}')^{-1} = \bm{R}_{\bm{R}'\bm{n}}(\theta)$

    One can also derive the matrix form of $\bm{R}_{\bm{n}}(\theta)$ directly:
    
    $$\bm{R}_{\bm{n}}(\theta) \bm{x} = (\bm{x}\cdot \bm{n})\bm{n} +(\bm{x}-(\bm{x}\cdot \bm{n})\bm{n})\cos\theta + (\bm{n}\times \bm{x})\sin\theta $$
    

    {{<fold "Proof">}}

For arbitrary vector $\bm{x}$ , one can always decompose it along $\bm{n}$ and the vertical one:


$$\bm{x} = \bm{x}-(\bm{x}\cdot \bm{n})\bm{n} + (\bm{x}\cdot \bm{n})\bm{n}$$


The component along $\bm{n}$ will be invariant, but the vertical one will rotate with $\theta$ . One the plane, we have two linear-independent vectors:


$$\begin{aligned}
\bm{x}_1 &= \bm{x}-(\bm{x}\cdot\bm{n})\bm{n} \\
\bm{x}_2 &= - \bm{x}_1 \times \bm{n} = \bm{n}\times \bm{x}
\end{aligned}$$


With $\theta$ means counterclockwise rotation, that is from $\bm{x}_1$ to $\bm{x}_2$ . Then we have:


$$\bm{R}(\theta) \bm{x}_1 = \bm{x}_1 \cos\theta +\bm{x}_2 \sin \theta $$


That is:


$$\bm{R}_{\bm{n}}(\theta) \bm{x} = (\bm{x}\cdot \bm{n})\bm{n} +(\bm{x}-(\bm{x}\cdot \bm{n})\bm{n})\cos\theta + (\bm{n}\times \bm{x})\sin\theta $$


Or one can solve the equation:


$$\frac {\td} {\td\theta} \bm{R}_{\bm{n}}(\theta)\bm{x} = \bm{n}\times (\bm{R}_n(\theta)) \bm{x} \ ; \ \bm{R}_{\bm{n}}(0)\bm{x}=\bm{x} $$


For $\bm{n}\times \bm{x} = \begin{bmatrix} 0 & -n_z & n_y \\ n_z & 0 & -n_x \\ -n_y & n_x & 0 \end{bmatrix}\bm{x} \equiv \bm{A}_{\bm{n}}\bm{x}$

Then the solution is:


$$\bm{R}_{\bm{n}}(\theta) = e^{\theta \bm{A}_{\bm{n}}} $$


    {{</fold>}}

2.  One can also parameterize the SO(3) group by `Euler angles`:
    Any SO(3) rotation can be represented as:
    
    $$\bm{R}=\bm{R}_{\bm{e}_z}(\alpha)\bm{R}_{\bm{e}_y}(\beta)\bm{R}_{\bm{e}_z}(\gamma)$$
    

    Where $\alpha\in[0,2\pi), \beta\in[0,\pi), \gamma\in[0,2\pi)$ .

    {{<fold "Matrix form">}}
Rotations around $z$ and $y$ axis are explicitly:


$$\bm{R}_{\bm{e}_z}(\theta) = \begin{bmatrix} \cos \theta & -\sin \theta & 0 \\ \sin\theta & \cos \theta & 0 \\ 0 & 0 & 1 \end{bmatrix} \ ; \ \bm{R}_{\bm{e}_y}(\theta) = \begin{bmatrix} \cos \theta & 0 & \sin\theta \\ 0 & 1 & 0 \\ -\sin\theta & 0 & \cos \theta \end{bmatrix}$$


    {{</fold>}}

## SU(2) Group and Its Parameterization

<em>[Definition]</em> : `SU(2) Group` is the group of `special` 2x2 unitary matrices : $\bm{U}^\dagger \bm{U}=1$ and $\det \bm{U}=1$

The parameterize is simple:


$$\bm{U} = \begin{bmatrix} u & v \\ -v^* & u^*\end{bmatrix} \ ; \ |u|^2+|v|^2=1$$


The map between $(u,v)$ and $\bm{U}$ is 1-to-1

## Quaternion Representation of SU(2)

With `Pauli Matrices` one can rewrite the matrix in SU(2) as:


$$\bm{U} = a_0\sigma^0 - \ti \sum_{i=1}^3 a_i \sigma^i \ ; \ \sum_{\mu=0}^3 a_{\mu}^2 = 1 , a_\mu\in\mathbb{R} $$


Where


$$\sigma^0=\begin{bmatrix} 1 & 0 \\ 0 & 1\end{bmatrix}\ ; \ \sigma^1=\begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix} \ ; \ \sigma^2= \begin{bmatrix} 0 & -\ti \\ \ti & 0 \end{bmatrix} \ ; \ \sigma^3 = \begin{bmatrix} 1 & 0 \\ 0 & -1 \end{bmatrix} $$


And


$$a_0 = \text{Re} u \ ; \ a_1 = -\text{Im} v \ ; \ a_2 = -\text{Re} v \ ; \ a_3=-\text{Im} u$$


With $\bm{1}=\sigma^0,\bm{i}=-\ti \sigma^1, \bm{j}=-\ti \sigma^2 , \bm{k}=-\ti \sigma^3$ , one can check that:


$$\begin{aligned}
\bm{i}^2 &= \bm{j}^2 = \bm{k}^2 = \bm{i}\bm{j}\bm{k} = -\bm{1} \\
\bm{i}\bm{j}&=-\bm{j}\bm{i}=\bm{k} \\
\bm{j}\bm{k}&=-\bm{k}\bm{j}=\bm{i} \\
\bm{k}\bm{i}&=-\bm{i}\bm{k}=\bm{j}
\end{aligned}$$


That means in this definition, $\bm{1},\bm{i},\bm{j},\bm{k}$ form a `Quaternion algebra`

$\bm{U}=a_0\bm{1}+a_1\bm{i}+a_2\bm{j}+a_3\bm{k}\equiv (a_0,\bm{a})$ looks like the rotation of 4-component-vector, or element of SU(4)

In this meaning, SU(2) manifold is $S^3$ , points $a\in \mathbb{R}^4$ with $|a|=1$

## Relation Between SO(3) and SU(2)

_[Theorem]_ : The `adjoint representation` of SU(2) element $e^{-\ti \frac {\theta} 2 \bm{n}\cdot \bm{\sigma}}$ is the 3x3 rotation matrix $\bm{R}_{\bm{n}}(\theta)$ :


$$e^{-\ti \frac {\theta} 2 \bm{n}\cdot \bm{\sigma}} (\bm{\sigma}\cdot \bm{x}) e^{\ti \frac {\theta} 2 \bm{n}\cdot \bm{\sigma}} = \bm{\sigma} \cdot (\bm{R}_{\bm{n}}(\theta)\bm{x})$$


{{<fold "Proof">}}

With $e^{-\ti \frac {\theta} 2 \bm{n}\cdot \bm{\sigma}} = \cos (\frac {\theta} 2 ) - \ti \sin (\frac {\theta} 2) \bm{n}\cdot \bm{\sigma}$ , and the equality:


$$(\bm{\sigma} \cdot \bm{x}) (\bm{\sigma} \cdot \bm{y})=(\bm{x}\cdot \bm{y}) +\ti \bm{\sigma}\cdot (\bm{x}\times\bm{y})$$


It is easy to find with the properties of Pauli matrices:


$$\sigma^i \sigma^j = \delta_{ij} + \ti \epsilon_{ijk} \sigma^k$$


Then we can compute:


$$\begin{aligned}
e^{-\ti \frac {\theta} 2 \bm{n}\cdot \bm{\sigma}} (\bm{\sigma}\cdot \bm{x}) e^{\ti \frac {\theta} 2 \bm{n}\cdot \bm{\sigma}} &= (\bm{\sigma}\cdot \bm{x}) \cos^2 \frac \theta 2-2\bm{\sigma}\cdot (\bm{x}\times \bm{n}) \sin\frac {\theta} 2 \cos \frac \theta 2 +\sin^2 \frac \theta 2 (\bm{\sigma}\cdot \bm{n})(\bm{\sigma}\cdot \bm{x})(\bm{\sigma}\cdot \bm{n}) \\
&=(\bm{\sigma}\cdot \bm{x}) \cos^2 \frac \theta 2 + \bm{\sigma}\cdot(\bm{n}\times \bm{x})\sin\theta+\sin^2 \frac \theta 2 \Big((\bm{\sigma}\cdot \bm{n})(\bm{n}\cdot \bm{x}) -\bm{\sigma}\cdot (\bm{n}\times(\bm{x}\times \bm{n})) \Big) \\
&=(\bm{\sigma}\cdot \bm{x}) \cos^2 \frac \theta 2 + \bm{\sigma}\cdot(\bm{n}\times \bm{x})\sin\theta+\sin^2 \frac \theta 2 \Big((\bm{\sigma}\cdot \bm{n})(\bm{n}\cdot \bm{x}) -\bm{\sigma}\cdot\big(\bm{x} - \bm{n}(\bm{x}\cdot \bm{n}) \big) \Big) \\
&=(\bm{\sigma}\cdot \bm{x}) \cos \theta+\bm{\sigma}\cdot (\bm{n}\times \bm{x})\sin\theta +(1-\cos\theta)\bm{\sigma}\cdot \bm{n}(\bm{n}\cdot \bm{x}) \\
&=\bm{\sigma} \cdot \Big(\bm{n}(\bm{n}\cdot \bm{x}) + (\bm{x}-\bm{n}(\bm{n}\cdot \bm{x}))\cos\theta + (\bm{n}\times \bm{x})\sin\theta \Big) \\
&=\bm{\sigma}\cdot (\bm{R}_{\bm{n}}(\theta)\bm{x})
\end{aligned}$$


q.e.d.

{{< /fold >}}

1.  This map is `two-to-one` mapping from SU(2) to SO(3) . For $\bm{U},-\bm{U}\mapsto \bm{R}_{\bm{n}}(\theta)$ . Namely: $\text{SO}(3) \simeq \text{SU}(2)/\mathbb{Z}_2$
2.  SO(3) manifold is `real projective space` : $\text{RP}^3 = S^3/\mathbb{Z}_2$

A generalized conclusion is also hold, works for higher order representation of SU(2), reads:

_[Theorem]_ : The `representation` of SU(2) element of arbitrary order: $\hat{\bm{S}}$, which obeys the Lie algebra: $[\hat S_a,\hat S_b] = \ti \epsilon_{abc} \hat S_c$. Then unitary operator $e^{-\ti \theta \bm{n}\cdot \hat{\bm{S}}}$ performs on generators like a 3x3 rotation matrix $\bm{R}_{\bm{n}}(\theta)$ :


$$e^{-\ti \theta \bm{n}\cdot \hat{\bm{S}}} (\hat{\bm{S}}\cdot \bm{x}) e^{\ti \theta \bm{n}\cdot \hat{\bm{S}}} = \hat{\bm{S}} \cdot (\bm{R}_{\bm{n}}(\theta)\bm{x})$$


{{< fold "Proof" >}}


With the commutator:


$$\begin{aligned}[]
[\hat S_a, \hat S_b] &= \ti \epsilon_{abc}\hat S_c
\end{aligned}, $$


we have the rotation in 3-D Euclidean space described by \(\bm{R}_{\bm{n}}(\theta)\) which means:


$$\bm{R}_{\bm{n}}(\theta)\bm{x} = (\bm{x}\cdot \bm{n})\bm{n} +  \bm{n}\times \bm{x} \sin\theta + (\bm{x}-(\bm{x}\cdot \bm{n})\bm{n})\cos \theta .$$


Then, we consider the rotation unitary operator reads


$$\hat U(\bm{n},\theta) = \exp\Big(-\ti \theta \bm{n} \cdot \hat{\bm{S}}\Big) .$$


Note that the commutator:


$$\begin{aligned}[]
[\bm{x} \cdot \hat {\bm{S}}, \bm{n} \cdot \hat {\bm{S}} ] &= x_an_b \ti \epsilon_{abc}  \hat S_c = \ti (\bm{x}\times \bm{n})\cdot \hat{\bm{S}} \\
[[\bm{x}\cdot\hat {\bm{S}}, \bm{n} \cdot \hat {\bm{S}}], \bm{n}\cdot \hat {\bm{S}}] &= (\ti)^2 ((\bm{x} \times \bm{n})\times \bm{n})\cdot \hat{\bm{S}} \\
&=\ti^2 ((\bm{x}\cdot \bm{n})\bm{n} - \bm{x})\cdot \hat{\bm{S}} \\
[[[\bm{x}\cdot\hat {\bm{S}}, \bm{n} \cdot \hat {\bm{S}}], \bm{n}\cdot \hat {\bm{S}}], \bm{n}\cdot\hat{\bm{S}}] &= \ti^3 (-\bm{x}\times \bm{n})\cdot \hat S \\
&\cdots
\end{aligned}$$


Thus, together with the Baker-Hausdorff formula:


$$\begin{aligned}
\hat U(\bm{n},\theta) (\bm{x}\cdot \hat{\bm{S}})\hat U(\bm{n},\theta)^\dagger &= (\bm{x}\cdot \hat{\bm{S}}) + (\ti \theta)[\bm{x}\cdot \hat {\bm{S}}, \bm{n}\cdot \hat{\bm{S}}/\hbar] + (\ti\theta)^2 [[\bm{x}\cdot \hat{\bm{S}}, \bm{n}\cdot \hat {\bm{S}}/\hbar],\bm{n}\cdot \hat {\bm{S}}/\hbar] / 2! + \cdots \\
&= (\bm{x}\cdot \hat{\bm{S}}) - \theta (\bm{x}\times \bm{n})\cdot \hat{\bm{S}} + (-\theta)^2 ((\bm{x}\times \bm{n})\times \bm{n})\cdot \hat{\bm{S}} / 2! +\cdots \\
&= (\bm{x}\cdot \hat{\bm{S}}) (1 - \frac {\theta^2} {2!} + \frac {\theta^4} {4!}) + (\bm{x}\cdot \bm{n}) (\bm{n}\cdot \bm{S}) (\frac {\theta^2} {2!} - \frac {\theta^4} {4!} +\cdots) \\
& \indent + (\bm{x}\times \bm{n}) \cdot \hat{\bm{S}}(-\theta + \frac {\theta^3} {3!} + \cdots) \\
&= \Big(\bm{x} \cos\theta + (\bm{x}\cdot \bm{n})\bm{n}(1-\cos\theta) - (\bm{x}\times \bm{n})\sin\theta\Big)\cdot \hat{\bm{S}} \\
&= (\bm{R}_{\bm{n}}(\theta)\bm{x}) \cdot \hat{\bm{S}}
\end{aligned}$$


Then we have the equality:


$$\exp\Big(-\ti \theta \bm{n}\cdot \hat{\bm{S}} \Big)(\hat{\bm{S}} \cdot \bm{x}) \exp\Big(\ti \theta \bm{n} \cdot \hat{\bm{S}}\Big) = (\hat{\bm{S}} \cdot (\bm{R}_{\bm{n}}(\theta) \bm{x})) $$


q.e.d.


{{< /fold >}}

## Haar Measure

The Haar Measure of SU(2) is:


$$\td \mu(\bm{U}) = \delta(1-\sqrt{\sum_{\nu=0}^3 a_\nu^2}) \prod_{\nu=0}^3 \td a_\nu $$


up to a factor.

With 4-D polar coordinates: $a=r(\cos \theta/2,\sin\theta/2(\sin\psi\cos\phi,\sin\psi\sin\phi,\cos\psi))$ , one can write:


$$\td \mu(\bm{U}) = \frac 1 2 \sin^2 \frac \theta 2 \sin \psi \td\theta \td \psi \td \phi = \frac 1 2 \sin^2 \frac \theta 2 \sin\psi \td \theta \td^2 \bm{n}$$


## Lie Algebra of SU(2) & SO(3)

The Lie Algebra of SU(2) and SO(3) are the same: $\mathfrak{su}(2)=\mathfrak{so}(3)$

1.  Both $\mathfrak{su}(2)=\mathfrak{so}(3)$ are `three dimension`, with three basis(generators) $J_{1,2,3}$
2.  The commutator are: $[J_i,J_j]=\ti \epsilon_{ijk} J_k$ , sometimes are written as $\bm{J}\times \bm{J} = \ti \bm{J}$
3.  For $\mathfrak{so}(3)$ : $[J_i]_{jk}=-\ti \epsilon_{ijk}$
4.  For $\mathfrak{su}(2)$ : $J_i = \sigma^i/2$ (sometimes will be denoted as $S$ )

Group element can be expressed as: $\exp (-\ti \theta \bm{J}\cdot \bm{n})$ with real $\theta$ and unit vector $\bm{n}$

1.  For SO(3) , $\theta$ has period $2\pi$
2.  For SU(2) , $\theta$ has period $4\pi$ (2-to-1 mapping)
3.  $e^{-\ti \theta' \bm{J}\cdot \bm{n}'} e^{-\ti\theta \bm{J}\cdot \bm{n}} e^{\ti \theta'\bm{J}\cdot \bm{n}'} = e^{-\ti \theta \bm{J}\cdot (\bm{R}_{\bm{n}'}(\theta')\bm{n})}$ , That is `different` $\bm{n}$ but `same` $\theta$ elements are conjugate to each other.
4.  Any $(\theta,\bm{n})$ with same $|\theta|$ are in the same class. The character is only the `even function` of $\theta$

_[Theorem]_ : If $[J_a,M_b]=\ti \epsilon_{abc} M_c$ , then by the Baker-Hausdorff formula and $\bm{R}_{\bm{n}}(\theta) = \exp(-\ti\theta \bm{J}\cdot \bm{n})$ , one have:


$$\exp(-\ti\theta \bm{J}\cdot \bm{n}) M_b \exp(\ti\theta \bm{J}\cdot \bm{n})=\sum_{c}M_c [\bm{R}_{\bm{n}}(\theta)]_{cb} $$


{{<fold "Proof">}}

By Baker-Hausdorff formula:


$$\text{e}^{-\ti\theta \bm{J}\cdot \bm{n}} M_b \text{e}^{\ti\theta \bm{J}\cdot \bm{n}}=M_b+\ti \theta [M_b,\bm{J}\cdot \bm{n}]+ \frac {(\ti\theta)^2} 2 [[M_b,\bm{J}\cdot \bm{n}],\bm{J}\cdot \bm{n}]+\cdots$$


For


$$\begin{aligned}[]
C_0&=M_b\\
C_1&=[C_0,\bm{J}\cdot \bm{n}]=-\sum_{a,c}\ti \epsilon_{abc}M_c n_a \\
C_2&=[C_1,\bm{J}\cdot \bm{n}]=-\sum_{a,c}\ti \epsilon_{abc}n_a [M_c,\bm{J}\cdot \bm{n}]=-\epsilon_{abc}n_a \epsilon_{dcf} n_d M_f \\
&=-(\delta_{af}\delta_{bd}-\delta_{ad}\delta_{bf})n_an_d M_f=-n_b (n_aM_a)+ M_b
\end{aligned}$$


{{</fold>}}

## Schwinger Boson Representation

For 2-d complex vector, the operation of SU(2) matrices is:


$$\begin{bmatrix} z_1 \\ z_2 \end{bmatrix} \rightarrow_{\bm{U}} = \bm{U}\begin{bmatrix} z_1 \\ z_2 \end{bmatrix} = \begin{bmatrix}u z_1 + v z_2 \\ -v^* z_1 + u^* z_2 \end{bmatrix} $$


For 2 boson states: $\hat b_1^\dagger,\hat b_2^\dagger$ at n-boson Hilbert space:


$$\begin{aligned}
\ket{(z_1,z_2)_n} & \equiv \frac {(z_1\hat b_1^\dagger+z_2\hat b_2^\dagger)^n} {\sqrt{n!}} \ket{\text{vac}} = \sum_{n_1=0}^n z_1^{n_1}z_2^{n-n_1} \sqrt {\frac{n!} {n_1!(n-n_!)!}} \ket{1^{n_1},2^{n-n_1}}  \\
&= \sum_{r=0}^{2j} z_1^r z_2^{2j-r} \sqrt{\frac {n!} {r!(n-r)!}} \ket{j,r-j} \\
&=\sum_{m=-j}^j z_1^{j+m}z_2^{j-m}\sqrt{\frac {(2j)!} {(j+m)!(j-m)!} } \ket{j,m}
\end{aligned}$$


We label the occupation basis as: $\ket{1^{n_1},2^{n-n_1}}$ as $\ket{j=n/2,m=n_1-n/2}$

Then the occupation basis form the representation basis of SU(2):


$$\ket{j,m}\rightarrow_{\bm{U}} \sum_{m'} \ket{j,m'}D_{m',m}^{(j)}(\bm{U})$$


And:


$$D_{m,m'}^{(j)}(\bm{U}) = \sqrt{\frac {(j+m')!(j-m')!} {(j+m)!(j-m)!}} \sum_{k=0}^{j+m} \Big(\begin{array}{cc}j+m \\ k\end{array}\Big)\Big(\begin{array}{cc}j-m \\ j+m'-k\end{array}\Big) u^k v^{j+m-k}(-v^*)^{j+m'-k}(u^*)^{j-m-(j+m'-k)}$$


This is the ($2j+1$)-dimensional `irreducible` unitary representation of SU(2) .

$D_{m,m'}^{(j)}(\bm{U})$ is a `homogeneous polynomial` of degree $2j$ in terms of $u,v,u^*,v^*$ . Then for `integer` $j$ , $D_{m,m'}^{(j)}(\bm{U})=D_{m,m'}^{(j)}(-\bm{U})$ , it is an `irreducible` unitary representation of SO(3)

_[Theorem]_ : `Relation to spherical harmonics` : for `integer` $l$


$$D_{0m}^{(l)}(e^{\ti \phi J_z}e^{\ti\theta J_y}) = \sqrt{\frac {4\pi} {2l+1}} Y_l^m(\theta,\phi)$$


_[Theorem]_ : `Orthogonality` :


$$\int [D_{m'm}^{(j')}(\bm{U})]^* D_{n'n}^{(j)}(\bm{U})\td \mu(\bm{U}) = \frac {\int \td\mu(\bm{U})} {2j+1} \delta_{j'j}\delta_{m'n'}\delta_{mn}$$


_[Thorem]_ : `Character` of $j$-representation:


$$\chi_j(e^{-\ti \theta \bm{n}\cdot \bm{J}})=\chi_j(e^{-\ti \theta J_z})=\frac {\sin(\frac {2j+1} 2)\theta} {\sin \frac \theta 2}$$


{{<fold "Proof">}}

Consider $\bm{U}=e^{-\ti \theta J_z} = e^{-\ti\theta \sigma_z/2}$ , then it induces:


$$z_1\rightarrow e^{-\ti\theta/2} z_1 \ ; \ z_2 \rightarrow e^{\ti \theta/2} z_2$$


Then:


$$\begin{aligned}
\ket{(z_1,z_2)_n}&=\sum_{m=-j}^j z_1^{j+m}z_2^{j-m}\sqrt{\frac {(2j)!} {(j+m)!(j-m)!} } \ket{j,m} \\
&\rightarrow \sum_{m=-j}^j e^{-\ti m \theta} z_1^{j+m}z_2^{j-m}\sqrt{\frac {(2j)!} {(j+m)!(j-m)!} } \ket{j,m}
\end{aligned}$$


That means that $D_{m',m}^{(j)}(e^{-\ti \theta J_z})=\delta_{m',m}e^{-\ti m\theta}$ . Then:


$$\chi_j(e^{-\ti \theta J_z})=\text{Tr}D_{m',m}^{(j)}(e^{-\ti \theta J_z}) =\sum_{m=-j}^j e^{-\ti m\theta}=\frac {\sin(j+1/2)\theta} {\sin \theta/2}$$


q.e.d.

{{</fold>}}

# Angular Momentum

## Angular Momentum as SO(3) Generator

Consider the spatial rotation $\bm{R}_{\bm{n}}(\theta)$ acting on a wavefunction of 3D coordinate $\psi(\bm{x})$ :


$$(\hat R_{\bm{n}}(\theta)\psi)(\bm{x}) = \psi(\bm{R}_{\bm{n}}(\theta)^{-1}\bm{x}) =\psi(e^{\ti \theta \bm{n}\cdot \bm{J}}\bm{x})$$


Take $\ti \partial_\theta$ at $\theta=0$ we will obtain the generator:


$$\bm{n}\cdot\hat {\bm{L}} \psi(\bm{x}) = -(\bm{n}\cdot \bm{J})\bm{x} \cdot \partial_{\bm{x}} \psi(\bm{x})$$


That is:


$$\hat {\bm{L}} = -\ti \bm{x}\times \partial_{\bm{x}} = \hat{\bm{x}}\times \hat{\bm{p}} / \hbar $$


{{<fold "Proof">}}

Noting that $(\bm{J}^i)^{j}_{\indent k}=-\ti \epsilon^{ijk}$ , one has:


$$\begin{aligned}
(\bm{n}\cdot \bm{J})\bm{x}\cdot \partial_{\bm{x}} &= \delta_{ij}n^i (\bm{J}^j \bm{x})^k \partial_k \\
&=  \delta_{ij}n^i ((\bm{J}^j)^k_{\indent l} \bm{x}^l) \partial_k \\
&= -\ti  \delta_{ij}n^i \sum_l (\epsilon^{jkl} \bm{x}^l) \partial_k \\
&= -\ti \bm{n}\cdot (\bm{x}\times \partial_{\bm{x}})
\end{aligned}$$


Then $\hat{\bm{L}} = -\ti \bm{x}\times \partial_{\bm{x}}$

q.e.d.

{{</fold>}}

This is the `orbital angular momentum` . And the components:


$$\hat L^i = \sum_{jk} \epsilon^{ijk}\hat x^j \hat p^k / \hbar$$


_[Theorem]_ : useful commutator, with $\hat {\bm{L}}^2 = \delta_{ij}\hat L^i \hat L^j$


$$\begin{aligned}[]
[\hat L^i,\hat L^j] &= \ti\epsilon^{ijk}\hat L^k = \sum_k \hat L^k (\bm{J}^i)^{k}_{\indent j} \\
[\hat L^i ,\hat x^j] &= \ti\epsilon^{ijk}\hat p^k \\
[\hat L^i,\hat p^j] &= \ti \epsilon^{ijk}\hat x^k \\
[\hat {\bm{L}}^2,\hat L^{ijk}] &=0
\end{aligned}$$


{{<fold "Proof">}}

First:


$$\begin{aligned}[]
[\hat L^i,\hat L^j] &= \hbar^{-2} \sum_{m_1,n_1;m_2,n_2} \epsilon^{im_1m_2}\epsilon^{jn_1n_2}[\hat x^{m_1}\hat p^{m_2},\hat x^{n_1}\hat p^{n_2}] \\
&=\hbar^{-2} \sum_{m_1,n_1;m_2,n_2} \epsilon^{im_1m_2}\epsilon^{jn_1n_2}\big(\hat x^{m_1}(-\ti \hbar \delta_{m_2n_1}\hat p^{n_2}) + \hat x^{n_1}\ti\hbar\delta_{m_1n_2} \hat p^{m_2} \big) \\
&=-\ti\hbar^{-1} \sum_{m_1,n_2}\hat x^{m_1}\hat p^{n_2}(\delta_{in_2}\delta_{m_1j}-\delta_{ij}\delta_{m_1n_2}) +\ti\hbar^{-1}\sum_{n_1m_2}\hat x^{n_1}\hat p^{m_2}(\delta_{m_2j}\delta_{n_1i}-\delta_{ij}\delta_{m_2n_1}) \\
&=\ti\hbar^{-1} \sum_{mn}\hat x^m\hat p^n (\delta_{im}\delta_{jn}-\delta_{in}\delta_{jm}) \\
&=\ti \epsilon^{ijk}\hat L^k
\end{aligned}$$


Then:


$$\begin{aligned}[]
[\hat L^i,\hat x^j] &= \hbar^{-1}\sum_{mn}\epsilon^{imn} [\hat x^m\hat p^n,\hat x^j] \\
&=\hbar^{-1}\sum_{mn}\epsilon^{imn} -\ti \hbar \hat x^m\delta_{nj} \\
&=\ti \epsilon^{ijk}\hat x^k
\end{aligned}$$


For momentum is similar.

Last, with $\hat {\bm{L}}^2 = \delta_{ij}\hat L^i\hat L^j$ :


$$\begin{aligned}[]
[\hat {\bm{L}}^2,\hat L^i] &= \delta_{jk} [\hat L^j\hat L^k,\hat L^i] \\
&= \delta_{jk}\hat L^j \ti\epsilon^{kil}\hat L^l +\delta_{jk}\ti\epsilon^{jil}\hat L^l\hat L^k \\
&=0
\end{aligned}$$


For $\epsilon^{ijk}=-\epsilon^{ikj}$.

{{</fold>}}

_[Theorem]_ : `Ladder operator` $\hat L_{\pm} = \hat L^1 \pm \ti \hat L^2$ . Then:

1.  $[\hat L^3,\hat L_{\pm}] = \pm \hat L_{\pm}$ . Namely $\hat L_{\pm}$ changes $\hat L^3$ eigenvalue by $\pm 1$ .
2.  $[\hat L_+,\hat L_-] = 2\hat L^3$ , and:

    
    $$\hat {\bm{L}}^2 = (\hat L^3)^2 +\frac 1 2 (\hat L_+\hat L_-+\hat L_-\hat L_+)$$
    

{{<fold "Proof">}}

First we check the commutator:


$$[\hat L^3,\hat L_{\pm}] = [\hat L^3,\hat L^1\pm\ti\hat L^2]=\ti\hat L^2\pm \hat L^1 = \pm \hat L_{\pm}$$


Consider the eigenstate of $\hat L^3 \ket{L^3} = L^3 \ket {L^3}$ , these ladder operator will let:


$$\hat L^3 \hat L_{\pm}\ket{L^3} = (\pm\hat L_{\pm}+\hat L_{\pm}L^3)\ket{L^3} = (L^3\pm1)\hat L_{\pm}\ket{L^3}$$


That is:


$$\hat L_{\pm} \ket {L^3} \propto \ket{L^3\pm1}$$


there could be a factor.

The second property is very trivial.

{{</fold>}}

_[Theorem]_ : `Eigenstate/Eigenvalues` of Angular momentum. For $[\hat{\bm{L}}^2,\hat L^3]=0$ , we can find a set of `simultaneous eigenstates` of them:


$$\ket{l,m} \ , \ \text{ with } \hat{\bm{L}}^2\ket{l,m}=l(l+1)\ket{l,m} \ ; \ \hat L^3\ket{l,m}=m\ket{l,m}$$


{{<fold "Proof">}}

Let the simultaneous eigenstates are $\ket{\alpha,\beta}\equiv \ket{\hat{\bm{L}}^2=\alpha,\hat L^3=\beta}$ . Then for:


$$\hat {\bm{L}}^2=(\hat L^3)^2+\frac 1 2 (\hat L_+\hat L_-+\hat L_-\hat L_+)=\hat L^3(\hat L^3-1)+\hat L_+\hat L_-=\hat L^3(\hat L^3+1)+\hat L_-\hat L_+$$


And $\hat L_-\hat L_+,\hat L_+\hat L_-$ are semi-definite, because of $\hat L_{\pm}^\dagger = \hat L_{\mp}$ . Thenwe have:


$$\alpha\geq \beta(\beta\pm 1)$$


That means, there are $\beta_{\textrm{min}}\leq \beta \leq \beta_{\textrm{max}}$ . Namely:


$$\hat L_+\ket{\alpha,\beta_{\textrm{max}}} = \hat L_-\ket{\alpha,\beta_{\textrm{min}}}=0$$


Then $\alpha=\beta_{\textrm{max}}(\beta_{\textrm{max}} +1)=\beta_\textrm{min}(\beta_\textrm{min}-1)$ . With $\beta_{\textrm{min},\textrm{max}}$ are integer. One can solve that:


$$\beta_{\min} = \frac 1 2 -\sqrt{\frac 1 4 +\alpha} , \beta_\textrm{max} = -\frac 1 2 +\sqrt{\frac 1 4 +\alpha} $$


That is $\alpha=l(l+1)$ , and $-l\leq \beta \leq l$ .

q.e.d.

Additionally, why $\beta$ must be integer is because:


$$\hat L^3 = \hbar^{-1} (\hat x \hat p_y - \hat y \hat p_x)$$


With the ladder operator: $\hat a_\alpha =(2\hbar)^{-1/2}(\hat \alpha +\ti \hat p_\alpha)$ , $[\hat a_\alpha, \hat a_\beta^\dagger] =\delta_{\alpha\beta}$  \
Then we know that they behaves like boson.


$$\hat L^3 = \frac {\ti} 2(\hat a_x+\hat a_x^\dagger)(\hat a_y-\hat a_y^\dagger) - \frac {\ti} 2(\hat a_y+\hat a_y^\dagger)(\hat a_x-\hat a_x^\dagger)= \ti(\hat a_x^\dagger\hat a_y-\hat a_x\hat a_y^\dagger)$$


With unitary transform the $\hat a_{x,y}$ , we can rewrite that:


$$\hat L^3 = \hat b_1^\dagger\hat b_1 - \hat b_2^\dagger\hat b_2$$


And $\hat b_{1,2}$ are also boson operators. Then one can find that $\hat L^3$'s eigenvalue can only be integers.

{{</fold>}}

_[Note]_ : `Condon-Shortley` convention:


$$\hat L_{\pm}\ket{l,m} = \sqrt{l(l+1)-m(m\pm 1)}\ket{l,m\pm 1}$$


{{<fold "Proof">}}

One can compute the amplitude of $\hat L_{\pm}\ket{l,m}$ so that we can get the factor. (there could be a phase factor with modulus is 1):


$$\begin{aligned}
\bra{l,m}\hat L_{\pm}^\dagger \hat L_{\pm}\ket{l,m} &= \bra{l,m}\hat L_\mp\hat L_{\pm}\ket{l,m} \\
&=\bra{l,m}\hat {\bm{L}}^2-\hat L^3(\hat L^3 \pm 1) \ket{l,m}\\
&=l(l+1)-m(m\pm 1)
\end{aligned}$$


The Condon-Shortley convention is that that phase factor is 1. Then:


$$\hat L_{\pm}\ket{l,m} = \sqrt{l(l+1)-m(m\pm 1)}\ket{l,m\pm 1}$$


q.e.d.

{{</fold>}}

## Spin 1/2

`Real spin` or intrinsic angular momentum is the effect of relativity and quantum mechanics. There are many `pseudo-spin 1/2` systems, which are just `2-states` systems.

One can use 2 component quantities to describe the spin 1/2 wavefunction. Generators of rotation in spin 1/2 Hilbert space is: $\bm{S} = \bm{\sigma}/2$

Usually one will denote the eigenstates of $\sigma^3$ as: $\ket{S_z=\pm 1/2}$ (for in this basis $\sigma^3$ is diagonal)

_[Definition]_ : the `Hilbert space of spin 1/2` are:


$$\mathcal{H}_{1/2} = \text{span} \{\ket{S_z=\pm 1/2}\}$$


And the `spin operator` in this Hilbert space are:


$$\hat S^i = \frac 1 2 \sum_{s_1,s_2} \ket{s_1}(\sigma^i)_{s_1,s_2}\bra{s_2}$$


Where $\ket{1}=\ket{S_z=1/2} , \ket{2}=\ket{S_z=-1/2}$

{{<fold "Proof">}}

Full version:


$$\begin{aligned}
\hat S^1 &= \frac 1 2 \big( \ket{S_z=1/2}\bra{S_z=-1/2}+\ket{S_z=-1/2}\bra{S_z=1/2}\big) \\
\hat S^2 &= \frac 1 2 \big( -\ti \ket{S_z=1/2}\bra{S_z=-1/2}+\ti \ket{S_z=-1/2}\bra{S_z=1/2}\big) \\
\hat S^3 &= \frac 1 2 \big( \ket{S_z=1/2}\ket{S_z=1/2} - \ket{S_z=-1/2}\bra{S_z=-1/2}\big)
\end{aligned}$$


{{</fold>}}

_[Theorem]_ : `polarization` of state in $\mathcal{H}_{1/2}$ : For $\mathcal{H}_{1/2}\ni \ket{z_1,z_2} = z_1\ket{S_z=1/2}+z_2\ket{S_z=-1/2}$ with $|z_1|^2+|z_2|^2=1$ (normalization). It has the polarization direction:


$$\bm{n} = [z_1^*,z_2^*] \bm{\sigma} \begin{bmatrix} z_1 \\ z_2 \end{bmatrix}$$


And it satisfies: $(\bm{n}\cdot \hat{\bm{S}}) \ket{z_1,z_2} =\frac 1 2 \ket{z_1,z_2}$, $\bm{n}\in \mathbb{R}^3$ and $|\bm{n}|=1$

Usually one can note $\ket{z_1,z_2}\equiv \ket{\bm{n}}$ means the spin 1/2 with polarization direction is $\bm{n}$

{{<fold "Proof">}}

First we prove that $\bm{n}\in \mathbb{R}^3$ :


$$\bm{n}=(z_1^*z_2+z_2^*z_1,-\ti z_1^*z_2+\ti z_2^*z_1,z_1^*z_1-z_2^*z_2)$$


Obviously it is a real 3-component vector.

Then:


$$|\bm{n}|^2=z_1^*z_2z_1^*z_2+z_1^*z_2z_2^*z_1-z_1^*z_2z_1^*z_2+z_1^*z_2z_2^*z_1+|z_1|^4-|z_1|^2|z_2|^2+(1\leftrightarrow 2)=1$$


One can easily check that, with $\ket{z_1,z_2}\equiv [\ket{S_z=1/2},\ket{S_z=-1/2}]\begin{bmatrix} z_1\\z_2\end{bmatrix}$ ,


$$\hat S^i \ket{z_1,z_2} = \frac 1 2 [\ket{S_z=1/2},\ket{S_z=-1/2}]\sigma^i\begin{bmatrix} z_1\\z_2\end{bmatrix}\sim \frac 1 2 \sigma^i \bm{z}$$


Then:


$$\begin{aligned}
(\bm{n}\cdot \hat{\bm{S}}) \ket{z_1,z_2} &\sim \frac 1 2 (\bm{n}\cdot \bm{\sigma})\bm{z} \\
&=\frac 1 2\sum_i \big([z_1^*,z_2^*] \sigma^i \begin{bmatrix} z_1 \\ z_2 \end{bmatrix}\big)\sigma^i \begin{bmatrix} z_1 \\ z_2 \end{bmatrix} \\
&=\frac 1 2  \begin{bmatrix} |z_1|^2-|z_2|^2 & 2z_1z_2^* \\ 2z_1^*z_2 & -|z_1|^2+|z_2|^2 \end{bmatrix} \begin{bmatrix} z_1 \\ z_2 \end{bmatrix} \\
&= \frac 1 2 \bm{z} \\
&\sim \frac 1 2 \ket{z_1,z_2}
\end{aligned}$$


q.e.d.

{{</fold>}}

With the polarization direction $\bm{n}=(\sin\theta\cos\phi,\sin\theta\sin\phi,\cos\theta)$ , usually we use that:


$$z_1=e^{-\ti\phi/2}\cos\frac \theta 2 \ ; \ z_2=e^{\ti\phi/2}\sin\frac \theta 2$$


And the other base with inverse polarization is $(-\ti z_2^*,\ti z_1^*)$ , they are Orthogonal.

Then the `spinor` wavefunction is the elements of $\mathcal{H}_{\bm{x}}\otimes \mathcal{H}_{1/2}$:


$$\psi=\begin{bmatrix}\psi_{+}(\bm{x}) \\ \psi_{-}(\bm{x})\end{bmatrix} \sim \ket{\psi}=\int \td^3\bm{x}\Big(\psi_{+}(\bm{x})\ket{\bm{x}}\otimes\ket{z_1,z_2}+\psi_{-}(\bm{x})\ket{\bm{x}}\otimes\ket{-\ti z_2^*,\ti z_1^*} \Big)$$


Similarly, one has the identity about spin space:


$$\int \ket{\bm{n}}\bra{\bm{n}} \frac {\sin\theta \td \theta \td \phi} {2\pi} = 1$$


{{<fold "Proof">}}

With $\bm{n}=(\sin\theta\cos\phi,\sin\theta\sin\phi,\cos\theta)$ :


$$\ket{\bm{n}}=\ket{z_1,z_2}=e^{-\ti\phi/2}\cos\frac \theta 2 \ket{S_z=1/2}+e^{\ti\phi/2}\sin\frac \theta 2 \ket{S_z=-1/2}$$


Then:


$$\begin{aligned}
\int \ket{\bm{n}}\bra{\bm{n}} \frac {\sin\theta \td \theta \td \phi} {2\pi}&= \int \frac {\sin\theta\td \theta\td \phi} {2\pi} \Big(\cos^2\frac \theta 2 \ket{1/2}\bra{1/2}+\sin^2\frac {\theta} 2 \ket{-1/2}\bra{-1/2} \\
&\indent +e^{\ti\phi}\sin\frac \theta 2 \cos\frac \theta 2 \ket{-1/2}\bra{1/2} + e^{-\ti\phi}\cos\frac {\theta} 2 \sin\frac \theta 2 \ket{1/2}\bra{-1/2} \Big) \\
&=\ket{1/2}\bra{1/2}+\ket{-1/2}\bra{-1/2} \\
&=1
\end{aligned}$$


q.e.d.

{{< /fold >}}

_[Theorem]_ : `Rotation` of polarization in $\mathcal{H}_{1/2}$ : if $\ket{z_1,z_2}$ is the state with polarization of $\bm{n}$ , and:


$$e^{-\ti \frac \theta 2 \bm{n'}\cdot \bm \sigma}\begin{bmatrix}z_1 \\ z_2 \end{bmatrix}=\begin{bmatrix}z'_1 \\ z'_2 \end{bmatrix}$$


Then $\ket{z'_ 1,z'_ 2}$ is the state with polarization of $\bm{R}_{\bm{n}'}(\theta)\bm{n}$ , that is to say:


$$(\bm{R}_{\bm{n}'}(\theta)\bm{n})\cdot \hat{\bm{S}}\ket{z'_1,z'_2}=\frac 1 2 \ket{z_1,z_2}$$


{{< fold "Proof" >}}

One needs only prove that:


$$[z^*_1,z^*_2]\bm{\sigma}\begin{bmatrix}z_1 \\ z_2 \end{bmatrix}=\bm{n} \ ; \ e^{-\ti \frac \theta 2 \bm{n'}\cdot \bm \sigma}\begin{bmatrix}z_1 \\ z_2 \end{bmatrix}=\begin{bmatrix}z'_1 \\ z'_2 \end{bmatrix} \Rightarrow [z'^*_1,z'^*_2]\bm{\sigma}\begin{bmatrix}z'_1 \\ z'_2 \end{bmatrix} = \bm{R}_{\bm{n}'}(\theta)\bm{n}$$


That is equivalent to prove:


$$e^{\ti \frac \theta 2 \bm{n}'\cdot\bm{\sigma}}\bm{\sigma} e^{-\ti \frac \theta 2 \bm{n}'\cdot\bm{\sigma}}=\big[\bm{R}_{\bm{n}'}(\theta)\big]\bm{\sigma}$$


Where the left-hand-side is the product should be treated as matrix dot vector.

This is similar to what we have shown:


$$e^{-\ti \frac {\theta} 2 \bm{n}\cdot \bm{\sigma}} (\bm{\sigma}\cdot \bm{x}) e^{\ti \frac {\theta} 2 \bm{n}\cdot \bm{\sigma}} = \bm{\sigma} \cdot (\bm{R}_{\bm{n}}(\theta)\bm{x})$$


which is equivalent to:


$$e^{-\ti \frac {\theta} 2 \bm{n}\cdot \bm{\sigma}} \bm{\sigma} e^{\ti \frac {\theta} 2 \bm{n}\cdot \bm{\sigma}} =[\bm{R}_{\bm{n}}(-\theta)] \bm{\sigma}$$


q.e.d.

{{</fold>}}


## Addition of Angular Momentum

Let us consider a system of momentum $j_1+$ a system of momentum $j_2$

The tensor product under SU(2) rotation as:


$$\ket{j_1,m_1}\otimes \ket{j_2,m_2} \rightarrow_{\bm{U}} \sum_{m'_1,m'_2}\ket{j_1,m'_1}\otimes \ket{j_2,m'_2} D_{m'_1,m_1}^{(j_1)}(\bm{U})D_{m'_2,m_2}^{(j_2)}(\bm{U})$$


They form a $(2j_1+1)(2j_2+1)$-dimensional tensor product representation of SU(2) , and usually it is not irrep.

_[Theorem]_ : With $j$ noting the $j$ irrep. of SU(2) , we have the decomposition (Clebsch-Gordon):


$$j_1\otimes j_2 = (j_1+j_2) \oplus (j_1+j_2-1) \oplus (j_1+j_2-2)\oplus \cdots \oplus (|j_1-j_2|)$$


{{<fold "Proof">}}

To prove this theorem, we need the character table of SU(2) : $\chi_j=\sum_{\mu=0}^{2j} x^{j-\mu}$ , with $x=e^{\ti\theta}$ . Assume that $j_1\gt j_2$ , then:


$$\chi_{j_1\otimes j_2} = \chi_{j_1}\chi_{j_2} = \sum_{\mu_1=0}^{2j_1}\sum_{\mu_2=0}^{2j_2}x^{j_1+j_2-\mu_1-\mu_2}=\sum_{\mu=0}^{2(j_1+j_2)} c_{\mu}x^{j_1+j_2-\mu} $$


Where the coefficient $c_{\mu}$ can be obtained by compare items with same index:


$$c_{\mu}=\begin{cases}
\mu+1 & \text{for } \mu\lt 2j_2 , & \text{from } 0\leq \mu_2\leq \mu, \ \mu_1=\mu-\mu_2 \\
2j_2+1 & \text{for } 2j_2\leq \mu\leq 2j_1 , & \text{from } 0\leq \mu_2\leq 2j_2, \ \mu_1=\mu-\mu_2 \\
2j_1+2j_2-\mu+1 & \text{for }2j_1\leq \mu , & \text{from }\mu-2j_1\leq\mu_2\leq 2j_2 . \ \mu_1=\mu-\mu_2
\end{cases}$$


While the direct sum representation's character:


$$\chi_{\oplus} = \sum_{i=j_1-j_2}^{j_1+j_2} \sum_{\mu_i=0}^{2i} x^{i-\mu_i}=\sum_{\mu=0}^{2(j_1+j_2)} c'_{\mu}x^{j_1+j_2-\mu} $$


with:


$$c'_{\mu}=\begin{cases}
\mu+1 & \text{for } \mu\lt 2j_2 , & \text{from } j_1+j_2-\mu\leq i, \ \mu_i=i+\mu-j_1-j_2 \\
2j_2+1 & \text{for } 2j_2\leq \mu\leq 2j_1 , & \text{from all } i , \mu_i=i+\mu-j_1-j_2  \\
2j_1+2j_2-\mu+1 & \text{for }2j_1\leq \mu , & \text{from }\mu-j_1-j_2\leq i, \ \mu_i=i+\mu-j_1-j_2
\end{cases}$$


That is $c'_\mu=c_\mu$, namely the decomposition is correct.

{{</fold>}}

With the `total Angular Momentum` : $\hat {\bm{J}}=\hat {\bm{J}}_1 \otimes 1 + 1\otimes \hat{\bm{J}}_2$ (or simply $\hat {\bm{J}}_1+\hat{\bm{J}}_2$). The theorem shows that:

By a unitary transformation of basis, $\hat{\bm{J}}$ can be block-diagonalized, each block is the angular momentum operator for $J$ between $|J_1-J_2|$ and $J_1+J_2$ .

_[Theorem]_ : `Clebsch-Gordon` coefficients is the expansion coefficients of `total angular momentum` basis $\ket{J,m}$ on tensor product states $\ket{J_1,m_1}\otimes \ket{J_2,m_2}$ . \
According to analysis above, we have these two properties:

1.  `Selection rule` : $\bra{J_1,m_1;J_2,m_2}J,m\rangle$ is non-zero only if $m_1+m_2=m$ and $|J_1-J_2|\leq J\leq J_1+J_2$ and $J_1+J_2-J$ is integer.
2.  `Orthogonality` :

    
    $$\begin{aligned}
    \sum_{J,m}\bra{J_1,m_1;J_2,m_2}J,m\rangle \bra{J,m}J_1,m'_1;J_2,m'_2\rangle = \delta_{m_1,m'_1}\delta_{m_2,m'_2} \\
    \sum_{m_1,m_2}\bra{J,m}J_1,m_1;J_2,m_2\rangle \bra{J_1,m_1;J_2,m_2}J',m'\rangle = \delta_{m,m'}\delta_{J,J'}
    \end{aligned}$$
    

C-G coefficients can be obtained by the recursion relations:


$$\begin{aligned}
\bra{J_1,m_1;J_2,m_2}J,m\rangle &= \sqrt{\frac {(J_1-m_1)(J_1+m_1+1)} {(J-m)(J+m+1)}} \bra{J_1,m_1+1;J_2,m_2} J,m+1\rangle  \\
&\indent + \sqrt{\frac {(J_2-m_2)(J_2+m_2+1)} {(J-m)(J+m+1)}} \bra{J_1,m_1;J_2,m_2+1} J,m+1\rangle \\
&= \sqrt{\frac {(J_1+m_1)(J_1-m_1+1)} {(J+m)(J-m+1)}} \bra{J_1,m_1-1;J_2,m_2} J,m-1\rangle  \\
&\indent + \sqrt{\frac {(J_2+m_2)(J_2-m_2+1)} {(J+m)(J-m+1)}} \bra{J_1,m_1;J_2,m_2-1} J,m-1\rangle \\
\end{aligned}$$


{{<fold "Proof">}}

Using the expansion expression:


$$\ket{J,m}=\sum_{m_1,m_2}\ket{J_1,m_1;J_2,m_2}\bra{J_1,m_1;J_2,m_2}J,m\rangle$$


Then using the ladder operator of angular momentum $\hat J_{\pm}=\hat J_{1,\pm} +\hat J_{2,\pm}$ and the `Condon-Shortley` convention one can prove this recursion relation.

More over, with $m=J+1$, namely $ket{J,m}=0$ , we can get an equation:


$$\frac {\bra{J_1,m_1;J_2,J-m_1+1}J,J\rangle} {\bra{J_1,m_1;J_2,J-m_1}J,J\rangle} = -\sqrt{\frac{(J_2-(J-m_1)+1)(J_2+(J-m_1))} {(J_1-m_1+1)(J_1+m_1)}}$$


Then we can solve all $\bra{J_1,m_1;J_2,m_2=J-m_1}J,m=J\rangle$ up to an overall phase factor

{{</fold>}}

## Wigner-Eckart Theorem

_[Theorem(Wigner-Eckart)]_ : if $(2k+1)$ operators $\hat T_q^{(k)}$ with $q=-k,-k+1,\cdots,k$ , transforms under rotations as the $\ket{J=k,m=q}$ angular momentum state basis, namely, under SU(2) rotation $\bm{U}$ :


$$\hat T_q^{(k)} \rightarrow_{\bm{U}} \hat {T'}_q^{(k)}\equiv \hat U\hat T_q^{(k)}\hat U^\dagger = \sum_{q'}\hat T_{q'}^{(k)} D_{q',q}^{(k)}(\bm{U}) $$


Then the matrix elements of $\hat T_q^{(k)}$ between angular momentum basis is:


$$\bra{j',m'}\hat T_q^{(k)}\ket{j,m}=\bra{j',m'}j,m;k,q\rangle T(k;j,j')$$


That is, dependence of $m,m',q$ are all in C-G coefficients.

{{<fold "Proof">}}

With the equation that:


$$\hat U\hat T_q^{(k)}\hat U^\dagger = \sum_{q'}\hat T_{q'}^{(k)} D_{q',q}^{(k)}(\bm{U}) $$


we can obtain the commutator between $\hat T_q^{(k)}$ hat the generator of rotation:


$$[\hat {\bm{J}},\hat T_q^{(k)}]=\sum_{q'}\hat T_{q'}^{(k)} \bra{k,q'}\hat{\bm{J}}\ket{k,q}$$


Or in particular:


$$[\hat J_z,\hat T_q^{(k)}] = q \hat T_q^{(k)} \ ; \ [\hat J_{\pm},\hat T_q^{(k)}] = \sqrt{(k\mp q)(k\pm q+1)}\hat T_{q\pm 1}^{(k)}$$


Then we evaluate the matrix element, by the formula above or operate $\hat J_{\pm}$ on bra/ket directly:


$$\begin{aligned}
\bra{j',m'}[\hat J_{\pm},\hat T_q^{(k)}]\ket{j,m} &= \sqrt{(k\mp q)(k\pm q+1)} \bra{j',m'}\hat T_{q\pm 1}^{(k)}\ket{j,m} \\
\bra{j',m'}[\hat J_{\pm},\hat T_q^{(k)}]\ket{j,m} &=\sqrt{(j'\mp m')(j'\pm m'+1)}\bra{j',m'\pm 1}\hat T_q^{(k)}\ket{j,m} \\
&\indent -\sqrt{(j\mp m)(j\pm m+1)} \bra{j',m'}\hat T_q^{(k)}\ket{j,m\pm 1}
\end{aligned}$$


Or:


$$\begin{aligned}
\bra{j',m'\pm 1}\hat T_q^{(k)}\ket{j,m}&=\sqrt{\frac {(j\mp m)(j\pm m+1)} {(j'\mp m')(j'\pm m'+1)}} \bra{j',m'}\hat T_q^{(k)}\ket{j,m\pm 1} \\
&\indent + \sqrt{\frac {(k\mp q)(k\pm q+1)} {(j'\mp m')(j'\pm m'+1)}} \bra{j',m'}\hat T_{q\pm 1}^{(k)}\ket{j,m}
\end{aligned}$$


Which has the same form as recursion equation of C-G coefficients. That is:


$$\bra{j',m'}\hat T_{q}^{(k)}\ket{j,m}\propto \bra{j',m'}j,m;k,q\rangle$$


{{</fold>}}

# Time-reversal Symmetry

_[Definition]_ : in `non-Relativistic` quantum mechanics, `time-reversal` operation on wavefunction is:


$$\mathcal{T}: t\rightarrow t'=-t \ ; \ \psi\rightarrow \psi'=\psi^*$$


That is $\psi'(t')=\psi^*(-t)$

Then under time-reversal, the equation of motion should transform:


$$\mathcal{T}: \ti\hbar\frac {\td\psi} {\td t} = \hat H \psi\rightarrow \ti\hbar \frac {\td \psi'} {\td t'} = \hat H^* \psi'$$


Then if $\hat H^*=\hat H$ , we say that the system has `time-reversal symmetry`

## Conjugation Operator

_[Definition]_ : `Complex Conjugation Operator` : $\hat K$ is anti-linear operator : $\hat K (\lambda \ket{\psi})=\lambda^* \hat K \ket{\psi}$ defined on coordinate space : $\hat K \ket{\bm{x}}=\ket{\bm{x}}$ . Note that $\hat K^{-1}=\hat K = \hat K^\dagger$ . \
The Hermitian conjugate is defined by:


$$(\hat K^\dagger \ket{\psi},\ket{\phi}) = (\ket{\psi},\hat K\ket{\phi})^*$$


Then for those states which are independent of time, `time-reversal` operator is `complex conjugation operator`

1.  `Real states` are those which are invariant under $\hat K$ : $\hat K \ket{\phi}=\ket{\phi}$
2.  For wavefunction on coordinate space: $\bra{\bm{x}}\hat K\ket{\psi} =\bra{\bm{x}}\hat K\int \td^3 \bm{x}'\ket{\bm{x}'}\bra{\bm{x}'}\psi\rangle =(\bra{\bm{x}}\psi\rangle)^*$
3.  For momentum eigenstate: $\hat K\ket{\bm{p}} =(2\pi\hbar)^{-3/2}\hat K \int \td^3 \bm{x}\ket{x}e^{\ti\bm{p}\cdot \bm{x}/\hbar}=\ket{-\bm{p}}$
4.  For linear operator: $\hat K \hat O = \hat O^* \hat K$ . Note: $(\bra{\psi}\hat O\ket{\phi})^*=\bra{\psi}\hat O^*\ket{\phi}$ only for real states.

    {{<fold "Proof">}}

For arbitrary state $\ket{\psi}$ , we have:


$$\begin{aligned}
\hat K \hat O \ket{\psi} &= \int \td^3 \bm{x}\td^3 \bm{x}' \hat K\ket{\bm{x}'}\bra{\bm{x}'} \hat O \ket{\bm{x}}\bra{\bm{x}}\psi\rangle \\
&=\int \td^3 \bm{x}\td^3 \bm{x}' \ket{\bm{x}'} (\bra{\bm{x}'} \hat O \ket{\bm{x}})^* (\bra{\bm{x}}\psi\rangle)^* \\
&= \int \td^3 \bm{x}\td^3 \bm{x}' \ket{\bm{x}'} (\bra{\bm{x}'} \hat O \ket{\bm{x}})^* \bra{\bm{x}}\hat K \ket{\psi} \\
&=\hat O^* \hat K \ket{\psi}
\end{aligned}$$


That is: $\hat K \hat O = \hat O ^* \hat K$ . q.e.d.

    {{</fold>}}

5.  `Any anti-linear operator` $\hat O = \hat O \hat K \hat K$ where $\hat O \hat K$ is a linear operator.
    `Any anti-unitary operator` is of the form $\hat U \hat K$ where $\hat U$ is a unitary operator

## Time-reversal Symmetry and Angular Momentum

Time-reversal operation on states should `change sign` of `measured angular momentum` :


$$\bra{J,m'}\hat T^\dagger \hat {\bm{J}} \hat T \ket{J,m} = - \bra{J,m'}\hat{\bm{J}}\ket{J,m}$$


1.  Consider $\hat J_z$ , $\bra{J,m'}\hat J_z\ket{J,m}=\delta_{m',m}m$ , the above relation shows that $\hat T\ket{J,m}=c_m \ket{J,-m}$ . where $c_m$ is a phase factor.
2.  Consider $\hat J_x$ with the conclusion in 1, we have the requirement of $c_m$ :

    
    $$c_{m+1}=-c_m$$
    

    {{<fold "Proof">}}

We have the matrix element of $\hat J_x$ :


$$\bra{J,m'}\hat J_x\ket{J,m} = \frac 1 2 \Big(\delta_{m',m+1}\sqrt{(J-m)(J+m+1)} + \delta_{m'+1,m}\sqrt{(J-m')(J+m'+1)} \Big)$$


Then :


$$\begin{aligned}
\bra{J,m'}\hat T^\dagger \hat J_x\hat T\ket{J,m} &= c_{m'}^* c_m \bra{J,-m'}\hat J_x \ket{J,-m} \\
&= c_{m'}^* c_m \frac 1 2 \Big(\delta_{m',m-1}\sqrt{(J+m)(J-m+1)} \\
&\indent + \delta_{m'-1,m}\sqrt{(J+m')(J-m'+1)} \Big) \\
&= - \frac 1 2 \Big(\delta_{m',m+1}\sqrt{(J-m)(J+m+1)} \\
&\indent + \delta_{m'+1,m}\sqrt{(J-m')(J+m'+1)} \Big)
\end{aligned}$$


comparing terms, we have:


$$\begin{aligned}
c_{m'}^* c_{m'-1} \sqrt{(J+m')(J-m'+1)} &= -\sqrt{(J-m'+1)(J+m')} \\
c^*_{m-1}c_m \sqrt{(J+m)(J-m+1)} &= -\sqrt{(J-m+1)(J+m)}
\end{aligned}$$


That is:


$$c_m c_{m-1}^* =-1$$


For $c_m$ is phase factor, $|c_m|=1$ , we have:


$$c_{m+1}=-c_m$$


    {{</fold>}}

3.  Generally, we have $\hat T \ket{J,m}= c (-1)^{J-m}\ket{J,-m}$ , with $c$ is a constant phase. \
    With `Condon-Shortley convention`, for integer $J$ , we let $c=(-1)^J$

    
    $$\hat T \ket{J,m}=(-1)^m \ket{J,-m}$$
    

    For spin-1/2 , the usual convention is that $c=1$, that is:

    
    $$\hat T\ket{S_z=1/2}=\ket{S_z=-1/2} \ ; \ \hat T\ket{S_z=-1/2} = -\ket{S_z=1/2}$$
    

4.  Generally, we have:

    
    $$\hat T \hat T \ket{J,m}=\hat T (c(-1)^{J-m}\ket{J,-m})=c^*c (-1)^{2J} \ket{J,m}=(-1)^{2J} \ket{J,m}$$
    

    Then for half-odd-integer $J$ , $\hat T^2=-1$ , for integer $J$ it is $\hat T^2=1$

Time-reversal operations on operators: time-reversal operator: $\hat T = \hat U \hat K$ . Where $\hat U$ is some unitary operator.

We need that $(U)_{ij}(\bm{J})^*_{jk}(U^\dagger)_{kl} = - (\bm{J})_{il}$ , where $(A)_{ij} = \bra{i}\hat A \ket{j}$ . $U$ would depend on basis choice.

1.  Using $\ket{J,J_z}$ basis, $\hat U = e^{\ti \pi \hat J_y}$ (`Condon-Shortley convention`) . In this basis $\hat J_y$ are purely imaginary matrix elements. so changes sign under complex conjuagation; $\hat J_{x,z}$ matrix elements are real, but:

    
    $$e^{\ti \pi \hat J_y}\hat J_{x,z} e^{-\ti\pi \hat J_y} = -\hat J_{x,z}$$
    

2.  For spin-1/2, the common convention is $\hat U = \ti \sigma^2$

3.  However if `real basis` is used, in which the matrix elements of $\hat {\bm{L}}$ are all purely imaginary. Time-reversal is just complex conjugation on matrix elements, with $\hat U =1$.

## Kramers Theorem(Kramers Degeneracy)

For systems `with time-reversal symmetry` and of `half-odd-integer angular momentum`, all energy levels are `(at least)` doubly degenerate.

1.  Suppose energy eigenstate $\ket{E}$ is non-degenerate, time-reversal symmetry dictates that $\hat T\ket{E}$ are also energy $E$ eigenstate. So we have $\hat T\ket{E}=e^{\ti \phi} \ket{E}$ , and $\hat T\hat T \ket{E} = e^{-\ti\phi}e^{\ti \phi} \ket{E}=\ket{E}$ . But it contradicts $\hat T^2=-1$ for half-odd-integer spin.
2.  For system with odd number of electrons and time-reversal symmetry, the energy levels must be doubly degenerate. Because `odd number of spin-1/2 can only produce half-odd-integer total spin. `
