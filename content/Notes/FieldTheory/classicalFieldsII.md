---
title: "Classical Fields: Dirac Field"
date: "2018-12-11T15:21:12+08:00"
lastmod: "2018-12-11T15:21:12+08:00"
draft: false
tags: ["classical-theory"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
summary: "The classical field theory for Dirac spinor field, so-called Dirac Field. Together with the solution of Dirac equation and some properties of Dirac field."
---

# Dirac Field

## Formalism
_[Definition]_ : Dirac field is the field of Dirac Spinor. The Lagrangian is Lorentz Scalar constructed by Dirac Spinor:

<div>$$\mathcal{L} = \bar{\psi}(\ti\gamma^\mu\partial_\mu-m)\psi$$</div>

This Lagrangian are not symmetric to `$\psi$` and `$\bar{\psi}$` , but this form will not lead the momentum vanish.

Note that `$\psi$` is a 4-components Dirac Spinor. And these four components are independent. So we have the equation of motion:

<div>$$(\ti \gamma^\mu \partial_\mu -m)\psi = 0$$</div>

To let the form of the Dirac equation invariant under Lorentz Transformation, one need requires that the Dirac field transforms as:

<div>$$\psi(x)\rightarrow \psi'(x') = \Lambda_{1/2}\psi(x'=L(\omega) x) \ ; \ \Lambda_{1/2} = \exp(-\frac {\ti} 4 \omega_{\mu\nu} \sigma^{\mu\nu}) $$</div>

And the `canonically conjugate field` are also quantity with 4 components:

<div>$$\pi = \ti \bar{\psi}\gamma^0 = \ti \psi^\dagger$$</div>

The Hamiltonian:

<div>$$H = \int \td^3 \bm{x} \Big\{-\sum_{i=1}^3 \ti \bar{\psi}\gamma^i \partial_i \psi + m \bar{\psi}\psi  \Big\} $$</div>

## Solution of The Equation

To solve the Dirac Equation, one can also use the Fourier Transformation. Remember that `$\psi$` are 4-components quantity:

<div>$$\psi = \int \frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4/2}} e^{\ti \bm{k}\cdot \bm{x}-\ti \omega t} a(\bm{k},\omega) $$</div>

Where `$a(\bm{k},\omega)$` are 4-components Dirac spinor, and also let `$k=(\omega,\bm{k})$`. Then one can write:

<div>$$k_{\mu}\gamma^{\mu} a(\bm{k},\omega) -m a(\bm{k},\omega) = 0$$</div>

In the basis that `$\gamma^{\mu} = \begin{bmatrix} 0 & \sigma^{\mu} \\ \bar{\sigma}^{\mu} & 0 \end{bmatrix}$` , we can solve this equation of matrix. The homogeneous equation has non-trivial solution, that requires:

<div>$$\det(k_{\mu}\gamma^{\mu} -m) =0 \Rightarrow (-k_0^2+k_1^2+k_2^2+k_3^2+m^2)^2\equiv (m^2-k_\mu k^\mu)^2=0 $$</div>

Namely : `$\omega^2 = m^2+|\bm{k}|^2$` or `$\omega \equiv \pm \omega_{\bm{k}} = \pm \sqrt{m^2+|\bm{k}|^2}$`

Then we can rewrite the general solution as:

<div>$$\psi^{(+)} \propto e^{\ti \bm{k}\cdot \bm{x}-\ti \omega_{\bm{k}} t} u(\bm{k}) \ ; \ \psi^{(-)}\propto e^{-\ti \bm{k}\cdot \bm{x}+\ti \omega_{\bm{k}} t} v(\bm{k})$$</div>

Where the two spinor: `$u=\begin{bmatrix} u_l\\ u_r\end{bmatrix} , v=\begin{bmatrix} v_l\\ v_r\end{bmatrix}$` shall satisfy:

<div>$$\begin{aligned}
(k_{\mu}\gamma^\mu -m) u &= 0\\
(k_{\mu}\gamma^\mu +m) v &=0
\end{aligned}$$</div>

Using the equality:

<div>$$(k_\mu\gamma^\mu-m)(k_{\mu}\gamma^\mu +m) = 0 $$</div>

{{%fold "Proof"%}}

With `$\sigma^i\sigma^j =\delta_i^j +\ti \epsilon^{ijk}\sigma^k$`

<div>$$\begin{aligned}
(k_\mu\sigma^\mu)(k_\mu\bar{\sigma}^\mu) &= k_0^2 + k_0k_i\sigma^i-k_ik_0\sigma^i -k_ik_j(\delta_i^j+\ti \epsilon^{ijk}\sigma^k) \\
&=k_0^2-k_ik_i\\
&=k_\mu k^\mu
\end{aligned}$$</div>

Then for `$k_\mu\gamma^\mu = \begin{bmatrix} 0 & k_\mu \sigma^\mu \\ k_\mu \bar{\sigma}^\mu & 0 \end{bmatrix}$` , we have:

<div>$$(k_\mu\gamma^\mu-m)(k_{\mu}\gamma^\mu +m) = \begin{bmatrix} k_\mu k^\mu & 0 \\ 0 & k_\mu k^\mu \end{bmatrix} -m^2 =0$$</div>

with `$k_\mu k^\mu = m^2$`

{{%/fold%}}

With two sets of `2-components quantities` : `$\chi^{(s)},\xi^{(s)} \ ; \ s=1,2$` , we can write down(widely used convention):

<div>$$u^{(s)}(\bm{k})=\frac {m+k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} \chi^{(s)} \\ \chi^{(s)}\end{bmatrix} \ ; \ v^{(s)}(\bm{k})=\frac {m-k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix}$$</div>

<mark>The factor is added so that `$\bar{u}u,\bar{v}v$` are Lorentz scalar</mark> , and `$\chi,\xi$` are just 2x1 matrices (basis of 2-D linear space), <mark>They are not Weyl spinor!</mark>. Under Lorentz Transformation they are invariant.

{{%fold "Proof"%}}

With `$u$` , we have:

<div>$$\begin{aligned}
\bar{u}u &= u^\dagger \gamma^0 u \\
&=\frac {1} {2m(m+\omega_{|\bm{k}|})} [\chi^{\dagger},\chi^\dagger](m+k_\mu \gamma^{\mu\dagger}) \gamma^0 (m+k_\mu \gamma^\mu) \begin{bmatrix} \chi \\ \chi \end{bmatrix} \\
&=\frac {1} {2m(m+\omega_{|\bm{k}|})} [\chi^{\dagger},\chi^\dagger]\begin{bmatrix} m\sigma^0 & k_\mu \bar{\sigma}^{\mu} \\ k_\mu \sigma^\mu & m \sigma^0\end{bmatrix} \begin{bmatrix} 0 & \sigma^0\\ \sigma^0 & 0\end{bmatrix} \begin{bmatrix} m\sigma^0 & k_\mu \sigma^{\mu} \\ k_\mu \bar{\sigma}^\mu & m \sigma^0\end{bmatrix} \begin{bmatrix} \chi \\ \chi \end{bmatrix} \\
&=\frac {1} {2m(m+\omega_{|\bm{k}|})} [\chi^{\dagger},\chi^\dagger]\begin{bmatrix} 2m k_\mu \bar{\sigma}^{\mu} & k_\mu k^\mu +m^2 \\ k_\mu k^\mu +m^2 & 2m k_\mu \sigma^\mu\end{bmatrix} \begin{bmatrix} \chi \\ \chi \end{bmatrix} \\
&=\frac {m k_0 (\chi^\dagger \chi + \chi^\dagger \chi) + m^2(\chi^\dagger\chi + \chi^\dagger \chi)} {m(m+\omega_{|\bm{k}|})} \\
&=2\chi^\dagger \chi
\end{aligned}$$</div>

Is invariant under Lorentz transformation.

The more general formulas are:

<div>$$\begin{aligned}
\bar{u}^{(s)}u^{(r)} &= 2 \chi^{(s)\dagger}\chi^{(r)} \\
\bar{v}^{(s)}v^{(r)} &= -2 \xi^{(s)\dagger}\xi^{(r)} \\
\end{aligned}$$</div>

{{%/fold%}}

Sometimes one can write them as a much beautiful form:

<div>$$u^{(s)}(\bm{k})=\frac {1} {\sqrt{m}} \begin{bmatrix} \sqrt{k_\mu \sigma^\mu} \chi^{(s)} \\ \sqrt{k_\mu \bar{\sigma}^\mu}\chi^{(s)}\end{bmatrix} \ ; \ v^{(s)}(\bm{k})=\frac {1} {\sqrt{m}} \begin{bmatrix} \sqrt{k_\mu \sigma^\mu} \xi^{(s)} \\ -\sqrt{k_\mu \bar{\sigma}^{\mu}} \xi^{(s)}\end{bmatrix}$$</div>

This form of `$u,v$` will satisfy the equation automatically. With the convention that the square-root of matrix is the branch that have position eigenvalue.

{{%fold "Proof"%}}

The equation for `$u_{l(r)},v_{l(r)}$` are:

<div>$$\begin{aligned}
k_\mu \sigma^\mu u_r -m u_l &=0 \\
k_\mu \bar{\sigma}^\mu u_l - m u_r &=0\\
k_\mu \sigma^\mu v_r +m v_l &=0 \\
k_\mu \bar{\sigma}^\mu v_l + m v_r &=0
\end{aligned}$$</div>

For `$(k_\mu\sigma^\mu)(k_\mu\bar{\sigma}^{\mu})=k_\mu k^\mu$` , there are only two independent equations((1) and (3), (2) are the same as (1), and (4) are the same as (2)). One can easily check that the form above satisfy these equations.

More over, we can check that `$\bar{u}u,\bar{v}v$` are Lorentz scalar, remember `$k_{\mu}\sigma^{\mu}$` is Hermitian.

<div>$$\begin{aligned}
\bar{u} u &= u^{\dagger} \gamma^0 u \\
&= \frac 1 m \Big(\chi^\dagger \sqrt{k_\mu\sigma^\mu}\sqrt{k_\mu \bar{\sigma}^\mu} \chi + \chi^\dagger \sqrt{k_\mu\bar{\sigma}^\mu}\sqrt{k_\mu \sigma^\mu} \chi  \Big) \\
&= 2\chi^\dagger \chi
\end{aligned}$$</div>

Check for `$v$` is similar, the general form are still:

<div>$$\begin{aligned}
\bar{u}^{(s)}u^{(r)} &= 2 \chi^{(s)\dagger}\chi^{(r)} \\
\bar{v}^{(s)}v^{(r)} &= -2 \xi^{(s)\dagger}\xi^{(r)} \\
\end{aligned}$$</div>

One can also directly prove they are the same. Notice that `$k_\mu \sigma^\mu$` is Hermitian:

<div>$$\sqrt{k_\mu \sigma^\mu} = a_\mu \sigma^\mu$$</div>

Then square the both sides:

<div>$$k_\mu \sigma^\mu = a_0^2 + 2a_0 a_i \sigma^i + a_i a_j \sigma^i\sigma^j = |a|^2+2a_0 a_i \sigma^i$$</div>

Where `$|a|^2 = a_0^2 +a_1^2 +a_2^2 +a_3^2$` . Then one can write the equation:

<div>$$\begin{aligned}
k_0 &= |a|^2 \\
k_i &= 2a_0 a_i
\end{aligned}$$</div>

Then eliminate `$a_i$` , one have: `$k_0 = a_0^2 + \sum_{i=1}^3k_i^2/(4a_0^2)$`

One can solve that:

<div>$$\begin{cases}
& a_0 = \sqrt{\frac 1 2 (k_0 \pm m)} \\
& a_i = k_i/(2a_0)
\end{cases}$$</div>

We need the positive branch, for `$\det a_\mu \sigma^\mu = a_\mu a^\mu=2a_0^2-k_0=\lambda_1\lambda_2 \gt 0$` , we need to choose the branch that `$a_0=\sqrt{(k_0+m)/2}$` . Then:

<div>$$\sqrt{k_\mu\sigma^\mu} = \frac {m\sigma^0+k_\mu \sigma^\mu} {\sqrt{2(m+k_0)}} $$</div>

Similarly, one can write:

<div>$$\sqrt{k_\mu\bar{\sigma}^\mu} = \frac {m\sigma^0+k_\mu \bar{\sigma}^\mu} {\sqrt{2(m+k_0)}} $$</div>

That is:

<div>$$\frac 1 {\sqrt{m}} \begin{bmatrix} \sqrt{k_\mu \sigma^\mu} \chi \\ \pm \sqrt{k_\mu\bar{\sigma}^{\mu}} \chi \end{bmatrix} = \frac {m\pm k_\mu\gamma^\mu} {\sqrt{2m(m+k_0)}} \begin{bmatrix} \chi \\ \pm \chi \end{bmatrix} $$</div>

q.e.d.

{{%/fold%}}



## Properties of Dirac Field

1.  According to the definition above. `$u^{(s)},v^{(s)}$` as the function of `$k=(\omega,\bm{k})$` has the property:

    <div>$$\begin{aligned}
    u^{(s)}(k) &= \exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu}) u^{(s)}(k=(m,\bm{0})) \\
    v^{(s)}(k) &= \exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu}) v^{(s)}(k=(m,\bm{0})) \\
    \end{aligned}$$</div>

    Where `$S^{\mu\nu}=\frac 1 2 \sigma_{\mu\nu}$` and `$\omega_{\mu\nu}$` are the parameters of Lorentz transformation, which let:

    <div>$$\Lambda(\omega)(m,\bm{0}) = k$$</div>

    Similarly:

    <div>$$\begin{aligned}
    \bar{u}^{(s)}(k) &= \bar{u}^{(s)}(k=(m,\bm{0})) \exp(\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})  \\
    v^{(s)}(k) &= \bar{v}^{(s)}(k=(m,\bm{0})) \exp(\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})  \\
    \end{aligned}$$</div>

    {{%fold "Proof"%}}

One can check the formular of Lorentz Transformation:

<div>$$\exp(-\ti a \bm{n}\cdot \bm{K}) (1,\bm{0})\equiv \Lambda(\bm{\theta}=\bm{0},\bm{\eta}=a \bm{n};\bm{L},\bm{K}) (1,\bm{0}) = (\cosh a , \sinh a \ \bm{n})$$</div>

where `$|\bm{n}|=1$`, namely `$\bm{n}$` is a unit 3-vector.

With the relation that: `$\omega_{0,i}=\eta^i$` , we have that:

<div>$$\Lambda(\omega_{\mu\nu}=\delta_{\mu}^0 \delta_{\nu}^i \eta^i-\delta_{\nu}^0 \delta_{\mu}^i \eta^i)(m,\bm{0})=k$$</div>

Where `$\eta^i=a k^i/|\bm{k}|$` and `$a=\sinh^{-1}(|\bm{k}|/m)$`

With this parameter:

<div>$$\exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu}) =\exp(-\ti \sum_{i=1}^3 \eta^i S^{0,i})=\begin{bmatrix} \cosh \frac a 2 +\sinh \frac a 2 \frac {k_i\sigma^i} {|\bm{k}|} & 0 \\ 0 &\cosh \frac a 2 -\sinh \frac a 2 \frac {k_i\sigma^i} {|\bm{k}|} \end{bmatrix}$$</div>

For `$u^{(s)}(k=(m,\bm{0}))=\begin{bmatrix} \chi^{(s)} \\ \chi^{(s)}\end{bmatrix} \ ; \ v^{(s)}(k=(m,\bm{0}))=\begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix}$` , we have:

<div>$$\begin{aligned}
\exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})u^{(s)}(k=(m,\bm{0})) &= \Big(\cosh \frac a 2 + \sinh \frac a 2 \frac 1 {|\bm{k}|} k_i \gamma^i \Big)u^{(s)}(k=(m,\bm{0})) \\
\exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})v^{(s)}(k=(m,\bm{0})) &= \Big(\cosh \frac a 2 - \sinh \frac a 2 \frac 1 {|\bm{k}|} k_i \gamma^i \Big)v^{(s)}(k=(m,\bm{0}))
\end{aligned}$$</div>

For the formula of hyperbolic-sin/cos:

<div>$$\cosh^2 \frac a 2 = \frac {\cosh a+1} 2 \ ; \ \sinh^2 \frac a 2 = \frac {\cosh a -1} 2 \ ; \ \cosh^2 a-\sinh^2 a= 1$$</div>

We have:

<div>$$\begin{aligned}
\cosh \frac a 2 &= \sqrt{\frac 1 2 (1+\sqrt{\frac {m^2 +|\bm{k}|^2} {m^2}})} = \sqrt{\frac {m+k_0} {2m}} = \frac {m+k_0} {\sqrt{{2m(m+\omega_{|\bm{k}|})}}} \\
\sinh \frac a 2 &= \sqrt{\frac 1 2 (-1+\sqrt{\frac {m^2 +|\bm{k}|^2} {m^2}})} = \sqrt{\frac {-m+k_0} {2m}} = \frac {|\bm{k}|} {\sqrt{{2m(m+\omega_{|\bm{k}|})}}}
\end{aligned}$$</div>

Where `$k_0=\sqrt{m^2+\bm{k}^2}=\omega_{|\bm{k}|}$`

Then we have:

<div>$$\begin{aligned}
\exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})u^{(s)}(k=(m,\bm{0})) &= \frac {m+k_\mu \gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} u^{(s)}(k=(m,\bm{0})) \\
\exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})v^{(s)}(k=(m,\bm{0})) &= \frac {m-k_\mu \gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}}v^{(s)}(k=(m,\bm{0}))
\end{aligned}$$</div>

Noting that for `$v$` :

<div>$$k_0 \begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix} =-k_0 \begin{bmatrix}0 & \sigma^0 \\ \sigma^0 & 0 \end{bmatrix}\begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix}=-k_0\gamma^0 \begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix}$$</div>

Additionally:

<div>$$\gamma^0\big[\exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})\big]^\dagger \gamma^0 = \exp(\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})$$</div>

We can prove the formula about `$\bar{u},\bar{v}$`

Then this property is proved.

    {{%/fold%}}

2.  `$u^{(s)},v^{(s)}$` as the function of 4-vector `$(k=(k_0\equiv \omega_{|\bm{k}|},\bm{k}))$` has the property :

    <div>$$\begin{aligned}
    u^{(s)}(k) & = \Lambda_{0\rightarrow k}\Lambda_{k'\rightarrow 0} u^{(s)}(k') \\
    v^{(s)}(k) & = \Lambda_{0\rightarrow k}\Lambda_{k'\rightarrow 0} v^{(s)}(k')
    \end{aligned}$$</div>

    Where `$\Lambda_{k_1\rightarrow k_2}$` is the Lorentz Transformation for Dirac Spinor `$\Lambda_{k_1\rightarrow k_2} =\exp(-\ti \omega_{\mu\nu}S^{\mu\nu}/2)$` with parameter `$\omega$` inducing 4-vector Lorentz Transformation: `$\Lambda(\omega)k_1=k_2$` . Obviously `$\Lambda_{k_1\rightarrow k_2} = \Lambda_{k_2\rightarrow k_1}^{-1}$`

3.  `$u^{(s)}$` and `$v^{(s)}$` satisfy(with `$\bar{x}=x^\dagger \gamma^0$` for Dirac spinor `$x$` ) :

    <div>$$\begin{aligned}
    \bar{u}^{(r)}(k)u^{(s)}(k) &= 2(\chi^{(r)})^\dagger \chi^{(s)} \\
    \bar{v}^{(r)}(k)v^{(s)}(k) &= -2(\xi^{(r)})^\dagger \xi^{(s)} \\
    \bar{u}^{(r)}(k)v^{(s)}(k) &= \bar{v}^{(r)}(k)u^{(s)}(k)=0
    \end{aligned}$$</div>

    {{%fold "Proof"%}}

The first two equality has been proved. We consider the third one:

<div>$$\begin{aligned}
\bar{u}^{(r)}(k)v^{(s)}(k)&=u^{(r)\dagger}(k)\gamma^0 v^{(s)}(k) \\
&=\frac 1 m [\chi^{(r)\dagger}\sqrt{k_\mu\sigma^{\mu}},\chi^{(r)\dagger}\sqrt{k_\mu\bar{\sigma}^{\mu}}] \gamma^0 \begin{bmatrix} \sqrt{k_\mu \sigma^{\mu}} \xi^{(s)} \\ -\sqrt{k_\mu \bar{\sigma}^{\mu}} \xi^{(s)}\end{bmatrix} \\
&= \frac 1 m (-k_\mu k^\mu \chi^{(r)\dagger}\xi^{(s)}+k_{\mu}k^{\mu} \chi^{(r)\dagger}\xi^{(s)})\\
&= 0
\end{aligned}$$</div>

q.e.d.

    {{%/fold%}}

4.  With the special choose of

    <div>$$\chi^{(r)\dagger}\chi^{(s)} = \xi^{(r)\dagger}\xi^{(s)} = \delta_{r}^{s} m$$</div>

    We can define the `Energy Projector` :

    <div>$$\begin{aligned}
    P^{(+)} &= \frac 1 {2m} \sum_{s=1,2} u^{(s)}(k)\bar{u}^{(s)}(k) = \frac {k_{\mu}\gamma^{\mu}+m} {2m} \\
    P^{(-)} &= -\frac 1 {2m} \sum_{s=1,2} v^{(s)}(k)\bar{v}^{(s)}(k) = \frac {-k_{\mu}\gamma^{\mu}+m} {2m}
    \end{aligned}$$</div>

    With the equality that `$(k_{\mu}\gamma^{\mu}+m)(k_{\mu}\gamma^{\mu}-m)=0$` and `$k_{\mu}\gamma^{\mu}k_\nu \gamma^\nu = k_{\mu}k^{\mu}$` , one can find that:

    <div>$$\begin{aligned}
    P^{(+) 2} &= P^{(+)} \\
    P^{(-) 2} &= P^{(-)} \\
    P^{(+)}\hat P^{(-)} &= P^{(-)}P^{(+)} = 0 \\
    P^{(+)} +P^{(-)} & = 1
    \end{aligned}$$</div>

    That is why call them `Projector` .

    More over, acting any solution of free Dirac equation, `$\hat P^{(+)}$` extracts the `positive-energy part` and `$\hat P^{(-)}$` extracts the `negative-energy part`

    {{%fold "Proof"%}}

For `$\chi,\xi$` are orthogonal, we have `$\sum_{s=1,2} \chi^{(s)}\chi^{(s)\dagger} =\sum_{s=1,2} \xi^{(s)}\xi^{(s)\dagger}= m$` is a c-number

<div>$$\begin{aligned}
\sum_{s=1,2} u^{(s)}(k)\bar{u}^{(s)}(k) &= \frac 1 m \sum_{s=1,2}  \begin{bmatrix} \sqrt{k_\mu \sigma^{\mu}} \chi^{(s)} \\ \sqrt{k_\mu \bar{\sigma}^{\mu}} \chi^{(s)}\end{bmatrix} [\chi^{(s)\dagger}\sqrt{k_\mu\sigma^{\mu}},\chi^{(s)\dagger}\sqrt{k_\mu\bar{\sigma}^{\mu}}] \gamma^0 \\
&= \begin{bmatrix} k_\mu \sigma^\mu & m \\ m & k_{\mu}\bar{\sigma}^\mu  \end{bmatrix} \gamma^0 \\
&= \begin{bmatrix} m & k_{\mu}\sigma^\mu \\  k_{\mu}\bar{\sigma}^\mu& m   \end{bmatrix} \\
&= (m+k_\mu\gamma^\mu) \\
\sum_{s=1,2} v^{(s)}(k)\bar{v}^{(s)}(k) &= \frac 1 m \sum_{s=1,2}  \begin{bmatrix} \sqrt{k_\mu \sigma^{\mu}} \xi^{(s)} \\ -\sqrt{k_\mu \bar{\sigma}^{\mu}} \xi^{(s)}\end{bmatrix} [\xi^{(s)\dagger}\sqrt{k_\mu\sigma^{\mu}},-\xi^{(s)\dagger}\sqrt{k_\mu\bar{\sigma}^{\mu}}] \gamma^0 \\
&=\begin{bmatrix} k_\mu \sigma^\mu & -m \\ -m & k_{\mu}\bar{\sigma}^\mu  \end{bmatrix} \gamma^0 \\
&=(-m+k_\mu\gamma^{\mu})
\end{aligned}$$</div>

Then:

<div>$$\Big(\frac{\pm k_\mu\gamma^{\mu}+ m} {2m}\Big)^2 = \frac 1 {4m^2}\Big( k_{\mu}k^\mu \pm 2m k_\mu\gamma^\mu +m^2\Big) = \frac{\pm k_\mu\gamma^\mu+m} {2m} $$</div>

q.e.d.

    {{%/fold%}}

5.  `Gordon Identities` :

    <div>$$\begin{aligned}
    2m \bar{u}^{(s')}(\bm{k}') \gamma^\mu u^{(s)}(\bm{k}) &= \bar{u}^{(s')}(\bm{k}')\big[(k'+k)^\mu+2\ti S^{\mu\nu}(k'-k)_\nu \big]u^{(s)}(\bm{k}) \\
    -2m \bar{v}^{(s')}(\bm{k}') \gamma^\mu v^{(s)}(\bm{k}) &= \bar{v}^{(s')}(\bm{k}')\big[(k'+k)^\mu+2\ti S^{\mu\nu}(k'-k)_\nu \big]v^{(s)}(\bm{k}) \\
    \end{aligned}$$</div>

    Where the 0-components of `$k$` always is `$k_0=\sqrt{m^2+|\bm{k}|^2}$`

    {{%fold "Proof"%}}

To prove them, one need to notice that:

<div>$$\begin{aligned}
\gamma^\mu k_\nu \gamma^\nu &= \frac 1 2 \{\gamma^\mu,k_\nu \gamma^\nu\}+\frac 1 2 [\gamma^\mu,k_\nu \gamma^\nu] = k^\mu - 2\ti S^{\mu\nu} k_\nu \\
k_\nu \gamma^{\nu} \gamma^\mu &= \frac 1 2 \{\gamma^\mu,k_\nu \gamma^\nu\}-\frac 1 2 [\gamma^\mu,k_\nu \gamma^\nu] = k^\mu + 2\ti S^{\mu\nu} k_\nu \\
\end{aligned}$$</div>

Then, together with:

<div>$$\begin{aligned}
(k_\mu\gamma^{\mu}-m) u^{(s)}(\bm{k}) &=0 \\
(k_\mu\gamma^{\mu}+m) v^{(s)}(\bm{k}) &=0 \\
\bar{u}^{(s)}(\bm{k})(k_\mu\gamma^{\mu}-m)  &=0 \\
\bar{v}^{(s)}(\bm{k})(k_\mu\gamma^{\mu}+m)  &=0 \\
\end{aligned}$$</div>

which can be obtained with `$\gamma^0\gamma^{\mu\dagger}=\gamma^\mu\gamma^0$` . Then we can compute:

<div>$$\begin{aligned}
m\bar{u}^{(s')}(\bm{k}') \gamma^\mu u^{(s)}(\bm{k})&=\bar{u}^{(s')}(\bm{k}') \gamma^\mu k_{\nu}\gamma^{\nu} u^{(s)}(\bm{k}) = \bar{u}^{(s')}(\bm{k}') (k^\mu-2\ti S^{\mu\nu}k_\nu) u^{(s)}(\bm{k}) \\
m\bar{u}^{(s')}(\bm{k}') \gamma^\mu u^{(s)}(\bm{k})&=\bar{u}^{(s')}(\bm{k}')  k'_{\nu}\gamma^{\nu} \gamma^\mu u^{(s)}(\bm{k}) = \bar{u}^{(s')}(\bm{k}') (k'^\mu+2\ti S^{\mu\nu}k'_\nu) u^{(s)}(\bm{k})
\end{aligned}$$</div>

Adding these two we have:

<div>$$2m \bar{u}^{(s')}(\bm{k}) \gamma^\mu u^{(s)}(\bm{k}) = \bar{u}^{(s')}(\bm{k})\big[(k'+k)^\mu+2\ti S^{\mu\nu}(k'-k)_\nu \big]u^{(s)}(\bm{k})$$</div>

And for `$v$` , actually we need only convert `$m\rightarrow -m$` .

Then these equalities are proved.

    {{%/fold%}}



    One of the special situation is that:

    <div>$$\begin{aligned}
    \bar{u}^{(s')}(\bm{k}) \gamma^\mu u^{(s)}(\bm{k}) &=2k^\mu \delta^{s',s} \\
    \bar{v}^{(s')}(\bm{k}') \gamma^\mu v^{(s)}(\bm{k}) &=2k^{\mu}\delta^{s',s}
    \end{aligned}$$</div>

6.  Equalities:

    <div>$$\begin{aligned}
    2m \bar{u}^{(s')}(\bm{k}')\gamma^{\mu} v^{(s)}(\bm{k}) &= \bar{u}^{(s')}(\bm{k}')\big[(k'-k)^{\mu}+2\ti S^{\mu\nu}(k'+k)_{\nu} \big] v^{(s)}(\bm{k}) \\
    -2m \bar{v}^{(s')}(\bm{k}')\gamma^{\mu} u^{(s)}(\bm{k}) &= \bar{v}^{(s')}(\bm{k}')\big[(k'-k)^{\mu}+2\ti S^{\mu\nu}(k'+k)_{\nu} \big] u^{(s)}(\bm{k}) \\
    \end{aligned}$$</div>

    With the special situation:

    <div>$$\begin{aligned}
    2m\bar{u}^{(s')}(\bm{k}) \gamma^\mu v^{(s)}(-\bm{k}) &=2k^\mu \bar{u}^{(s')}(\bm{k})v^{(s)}(-\bm{k}) \\
    -2m\bar{v}^{(s')}(\bm{k}) \gamma^\mu u^{(s)}(-\bm{k}) &=2k^\mu \bar{u}^{(s')}(\bm{k})v^{(s)}(-\bm{k}) \\
    \end{aligned}$$</div>

    {{%fold "Proof"%}}

The proof is similar to what we have done in `Gordon Equalities` :

<div>$$\begin{aligned}
-m \bar{u}^{(s')}(\bm{k}')\gamma^{\mu} v^{(s)}(\bm{k}) &= \bar{u}^{(s')}(\bm{k}')\gamma^{\mu} k_\nu \gamma^{\nu} v^{(s)}(\bm{k}) = \bar{u}^{(s')}(\bm{k}') (k^\mu-2\ti S^{\mu\nu}k_\nu) v^{(s)}(\bm{k}) \\
m \bar{u}^{(s')}(\bm{k}')\gamma^{\mu} v^{(s)}(\bm{k}) &= \bar{u}^{(s')}(\bm{k}')k'_\nu \gamma^{\nu}\gamma^{\mu}  v^{(s)}(\bm{k}) = \bar{u}^{(s')}(\bm{k}')(k'^\mu+2\ti S^{\mu\nu}k'_\nu) v^{(s)}(\bm{k}) \\
\\
m \bar{v}^{(s')}(\bm{k}')\gamma^{\mu} u^{(s)}(\bm{k}) &= \bar{v}^{(s')}(\bm{k}')\gamma^{\mu} k_\nu \gamma^{\nu} u^{(s)}(\bm{k}) = \bar{v}^{(s')}(\bm{k}')(k^\mu-2\ti S^{\mu\nu}k_\nu) u^{(s)}(\bm{k}) \\
-m \bar{v}^{(s')}(\bm{k}')\gamma^{\mu} u^{(s)}(\bm{k}) &= \bar{u}^{(s')}(\bm{k}')k'_\nu \gamma^{\nu}\gamma^{\mu}  v^{(s)}(\bm{k}) = \bar{u}^{(s')}(\bm{k}')(k'^\mu+2\ti S^{\mu\nu}k'_\nu) v^{(s)}(\bm{k}) \\
\end{aligned}$$</div>

Subtracting them will get the proof.

    {{%/fold%}}

With these properties, we can write down the general solution:

<div>$$\psi(x) = \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2} \Big( a(\bm{k},s) u^{(s)}(k)e^{-\ti k_\mu x^\mu} + b(\bm{k,s})^{*} v^{(s)}(k)e^{\ti k_{\mu }x^\mu} \Big)$$</div>

Where `$a,b$` are complex-valued function, and the factor `$\sqrt{\frac 1 {2\omega_{|\bm{k}|}}}$` is used to let the `$\psi$` has a correct unit, and will be normalized when we quantize it.

The canonically momentum:

<div>$$\pi(x)= \ti \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2} \Big( a(\bm{k},s)^{*} u^{(s)}(k)^\dagger e^{\ti k_\mu x^\mu} + b(\bm{k,s}) v^{(s)}(k)^\dagger e^{-\ti k_{\mu }x^\mu} \Big)$$</div>

And Hamiltonian (with `$\chi^{(r)\dagger}\chi^{(s)} = \xi^{(r)\dagger}\xi^{(s)}=m\delta_r^s$` ):

<div>$$H=\sum_s \int \td^3\bm{k} \ \omega_{|\bm{k}|} \Big[ a(\bm{k},s)^* a(\bm{k},s) - b(\bm{k},s) b(\bm{k},s)^*\Big]$$</div>


{{%fold "Proof"%}}

For the Hamiltonian of Dirac field:

<div>$$H = \int \td^3 \bm{x} \Big\{-\sum_{i=1}^3 \ti \bar{\psi}\gamma^i \partial_i \psi + m \bar{\psi}\psi  \Big\}$$</div>

We need to compute those two items:

<div>$$\begin{aligned}

\int \td^3 \bm{x} \bar{\psi}\psi &=2m \sum_{s} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \  a(\bm{k},s)^* a(\bm{k},s) - b(\bm{k},s) b(\bm{k},s)^* \\
& \indent  + \sum_{s,s'}\int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ b(\bm{k},s) a(-\bm{k},s') \bar{v}^{(s)}(\bm{k}) u^{(s')}(-\bm{k}) e^{-2\ti \omega_{|\bm{k}|}t} \\
& \indent + \sum_{s,s'}\int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ a(\bm{k},s)^* b(-\bm{k},s')^* \bar{u}^{(s)}(\bm{k}) v^{(s')}(-\bm{k}) e^{2\ti \omega_{|\bm{k}|}t} \\
\\
-\ti \int \td^3 \bm{x} \bar{\psi} \gamma^i \partial_i \psi &= \sum_{s,s'} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ a(\bm{k},s)^* a(\bm{k},s') \bar{u}^{(s)}(\bm{k}) k_i \gamma^i u^{(s')}(\bm{k}) \\
& \indent - \sum_{s,s'} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ b(\bm{k},s) b(\bm{k},s')^* \bar{v}^{(s)}(\bm{k}) k_i \gamma^i v^{(s')}(\bm{k}) \\
& \indent  - \sum_{s,s'}\int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ b(\bm{k},s) a(-\bm{k},s') \bar{v}^{(s)}(\bm{k}) k_i \gamma^i u^{(s')}(-\bm{k}) e^{-2\ti \omega_{|\bm{k}|}t} \\
& \indent + \sum_{s,s'}\int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ a(\bm{k},s)^* b(-\bm{k},s')^* \bar{u}^{(s)}(\bm{k}) k_i\gamma^i v^{(s')}(-\bm{k}) e^{2\ti \omega_{|\bm{k}|}t} \\
\\
\end{aligned}$$</div>

According to those equalities:

<div>$$\begin{aligned}
\bar{u}^{(s)}(\bm{k})\gamma^j u^{(r)}(\bm{k}) &= 2k^j \delta^{sr} \\
\bar{v}^{(s)}(\bm{k})\gamma^j v^{(r)}(\bm{k}) &= 2k^j \delta^{sr} \\
\end{aligned}$$</div>

And:

<div>$$\begin{aligned}
\bar{u}^{(s)}(\bm{k})\gamma^\mu v^{(s')}(-\bm{k}) &= \frac {k^\mu} m \bar{u}^{(s)}(\bm{k}) v^{(s')}(-\bm{k}) \\
\bar{v}^{(s)}(\bm{k})\gamma^\mu u^{(s')}(-\bm{k}) &= -\frac {k^\mu} m \bar{v}^{(s)}(\bm{k}) u^{(s')}(-\bm{k}) \\
\end{aligned}$$</div>

And at last:

<div>$$\begin{aligned}
m\bar{u}^{(s)}(\bm{k}) v^{(s')}(-\bm{k})&= \bar{u}^{(s)}(\bm{k})(-k_0\gamma^0+k_i\gamma^i)v^{(s')}(-\bm{k}) \\
&=\bar{u}^{(s)}v^{(s')}(-\bm{k}) (-k_0 k^0+k_i k^i)/m \\
&=-m\bar{u}^{(s)}v^{(s')}(-\bm{k}) \\
&=0 \\
\bar{v}^{(s)}(\bm{k}) u^{(s')}(-\bm{k})&=v^{(s)\dagger}(-(-\bm{k}))\gamma^0u^{(s')}(-\bm{k}) \\
&=\big( u^{(s')\dagger}(-\bm{k})\gamma^0v^{(s)}(-(-\bm{k}))\big)^\dagger \\
&=0
\end{aligned}$$</div>

Then we have:

<div>$$\begin{aligned}

\int \td^3 \bm{x} \bar{\psi}\psi &= 2m \sum_{s} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \  a(\bm{k},s)^* a(\bm{k},s) - b(\bm{k},s) b(\bm{k},s)^* \\
\\
-\ti \int \td^3 \bm{x} \bar{\psi} \gamma^i \partial_i \psi &= \sum_{s,s'} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ a(\bm{k},s)^* a(\bm{k},s') 2k_i k^i\delta^{s',s} \\
& \indent - \sum_{s,s'} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ b(\bm{k},s) b(\bm{k},s')^* 2k_i k^i\delta^{s',s} \\
\end{aligned}$$</div>

Then:

<div>$$\begin{aligned}
H &=\int \td^3 \bm{x} \Big\{-\sum_{i=1}^3 \ti \bar{\psi}\gamma^i \partial_i \psi + m \bar{\psi}\psi  \Big\} \\
&= \sum_{s} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ a(\bm{k},s)^* a(\bm{k},s) 2k_i k^i- \sum_{s} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ b(\bm{k},s) b(\bm{k},s)^* 2k_i k^i \\
&\indent + 2m^2 \sum_{s} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \  a(\bm{k},s)^* a(\bm{k},s) - b(\bm{k},s) b(\bm{k},s)^* \\
&=\sum_s \int \td^3\bm{k} \ \omega_{|\bm{k}|} \Big[ a(\bm{k},s)^* a(\bm{k},s) - b(\bm{k},s) b(\bm{k},s)^*\Big]
\end{aligned}$$</div>


{{%/fold%}}
