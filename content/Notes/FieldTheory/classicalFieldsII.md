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


$$\mathcal{L} = \bar{\psi}(\ti\gamma^\mu\partial_\mu-m)\psi$$


This Lagrangian are not symmetric to $\psi$ and $\bar{\psi}$ , but this form will not lead the momentum vanish.

Note that $\psi$ is a 4-components Dirac Spinor. And these four components are independent. So we have the equation of motion:


$$(\ti \gamma^\mu \partial_\mu -m)\psi = 0$$


To let the form of the Dirac equation invariant under Lorentz Transformation, one need requires that the Dirac field transforms as:


$$\psi(x)\rightarrow \psi'(x') = \Lambda_{1/2}\psi(x'=L(\omega) x) \ ; \ \Lambda_{1/2} = \exp(-\frac {\ti} 4 \omega_{\mu\nu} \sigma^{\mu\nu}) $$


And the `canonically conjugate field` are also quantity with 4 components:


$$\pi = \ti \bar{\psi}\gamma^0 = \ti \psi^\dagger$$


The Hamiltonian:


$$H = \int \td^3 \bm{x} \Big\{-\sum_{i=1}^3 \ti \bar{\psi}\gamma^i \partial_i \psi + m \bar{\psi}\psi  \Big\} $$


## Solution of The Equation

To solve the Dirac Equation, one can also use the Fourier Transformation. Remember that $\psi$ are 4-components quantity:


$$\psi = \int \frac {\td^3 \bm{k}\td \omega} {(2\pi)^{4/2}} e^{\ti \bm{k}\cdot \bm{x}-\ti \omega t} a(\bm{k},\omega) $$


Where $a(\bm{k},\omega)$ are 4-components Dirac spinor, and also let $k=(\omega,\bm{k})$. Then one can write:


$$k_{\mu}\gamma^{\mu} a(\bm{k},\omega) -m a(\bm{k},\omega) = 0$$


In the basis that $\gamma^{\mu} = \begin{bmatrix} 0 & \sigma^{\mu} \\ \bar{\sigma}^{\mu} & 0 \end{bmatrix}$ , we can solve this equation of matrix. The homogeneous equation has non-trivial solution, that requires:


$$\det(k_{\mu}\gamma^{\mu} -m) =0 \Rightarrow (-k_0^2+k_1^2+k_2^2+k_3^2+m^2)^2\equiv (m^2-k_\mu k^\mu)^2=0 $$


Namely : $\omega^2 = m^2+|\bm{k}|^2$ or $\omega \equiv \pm \omega_{\bm{k}} = \pm \sqrt{m^2+|\bm{k}|^2}$

Then we can rewrite the general solution as:


$$\psi^{(+)} \propto e^{\ti \bm{k}\cdot \bm{x}-\ti \omega_{\bm{k}} t} u(\bm{k}) \ ; \ \psi^{(-)}\propto e^{-\ti \bm{k}\cdot \bm{x}+\ti \omega_{\bm{k}} t} v(\bm{k})$$


Where the two spinor: $u=\begin{bmatrix} u_l\\ u_r\end{bmatrix} , v=\begin{bmatrix} v_l\\ v_r\end{bmatrix}$ shall satisfy:


$$\begin{aligned}
(k_{\mu}\gamma^\mu -m) u &= 0\\
(k_{\mu}\gamma^\mu +m) v &=0
\end{aligned}$$


Using the equality:


$$(k_\mu\gamma^\mu-m)(k_{\mu}\gamma^\mu +m) = 0 $$


{{<fold "Proof">}}

With $\sigma^i\sigma^j =\delta_i^j +\ti \epsilon^{ijk}\sigma^k$


$$\begin{aligned}
(k_\mu\sigma^\mu)(k_\mu\bar{\sigma}^\mu) &= k_0^2 + k_0k_i\sigma^i-k_ik_0\sigma^i -k_ik_j(\delta_i^j+\ti \epsilon^{ijk}\sigma^k) \\
&=k_0^2-k_ik_i\\
&=k_\mu k^\mu
\end{aligned}$$


Then for $k_\mu\gamma^\mu = \begin{bmatrix} 0 & k_\mu \sigma^\mu \\ k_\mu \bar{\sigma}^\mu & 0 \end{bmatrix}$ , we have:


$$(k_\mu\gamma^\mu-m)(k_{\mu}\gamma^\mu +m) = \begin{bmatrix} k_\mu k^\mu & 0 \\ 0 & k_\mu k^\mu \end{bmatrix} -m^2 =0$$


with $k_\mu k^\mu = m^2$

{{</fold>}}

With two sets of `2-components quantities` : $\chi^{(s)},\xi^{(s)} \ ; \ s=1,2$ , we can write down(widely used convention):


$$u^{(s)}(\bm{k})=\frac {m+k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} \chi^{(s)} \\ \chi^{(s)}\end{bmatrix} \ ; \ v^{(s)}(\bm{k})=\frac {m-k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix}$$


<mark>The factor is added so that $\bar{u}u,\bar{v}v$ are Lorentz scalar</mark> , and $\chi,\xi$ are just 2x1 matrices (basis of 2-D linear space), <mark>They are not Weyl spinor!</mark>. Under Lorentz Transformation they are invariant.

{{<fold "Proof">}}

With $u$ , we have:


$$\begin{aligned}
\bar{u}u &= u^\dagger \gamma^0 u \\
&=\frac {1} {2m(m+\omega_{|\bm{k}|})} [\chi^{\dagger},\chi^\dagger](m+k_\mu \gamma^{\mu\dagger}) \gamma^0 (m+k_\mu \gamma^\mu) \begin{bmatrix} \chi \\ \chi \end{bmatrix} \\
&=\frac {1} {2m(m+\omega_{|\bm{k}|})} [\chi^{\dagger},\chi^\dagger]\begin{bmatrix} m\sigma^0 & k_\mu \bar{\sigma}^{\mu} \\ k_\mu \sigma^\mu & m \sigma^0\end{bmatrix} \begin{bmatrix} 0 & \sigma^0\\ \sigma^0 & 0\end{bmatrix} \begin{bmatrix} m\sigma^0 & k_\mu \sigma^{\mu} \\ k_\mu \bar{\sigma}^\mu & m \sigma^0\end{bmatrix} \begin{bmatrix} \chi \\ \chi \end{bmatrix} \\
&=\frac {1} {2m(m+\omega_{|\bm{k}|})} [\chi^{\dagger},\chi^\dagger]\begin{bmatrix} 2m k_\mu \bar{\sigma}^{\mu} & k_\mu k^\mu +m^2 \\ k_\mu k^\mu +m^2 & 2m k_\mu \sigma^\mu\end{bmatrix} \begin{bmatrix} \chi \\ \chi \end{bmatrix} \\
&=\frac {m k_0 (\chi^\dagger \chi + \chi^\dagger \chi) + m^2(\chi^\dagger\chi + \chi^\dagger \chi)} {m(m+\omega_{|\bm{k}|})} \\
&=2\chi^\dagger \chi
\end{aligned}$$


Is invariant under Lorentz transformation.

The more general formulas are:


$$\begin{aligned}
\bar{u}^{(s)}u^{(r)} &= 2 \chi^{(s)\dagger}\chi^{(r)} \\
\bar{v}^{(s)}v^{(r)} &= -2 \xi^{(s)\dagger}\xi^{(r)} \\
\end{aligned}$$


{{</fold>}}

Sometimes one can write them as a much beautiful form:


$$u^{(s)}(\bm{k})=\frac {1} {\sqrt{m}} \begin{bmatrix} \sqrt{k_\mu \sigma^\mu} \chi^{(s)} \\ \sqrt{k_\mu \bar{\sigma}^\mu}\chi^{(s)}\end{bmatrix} \ ; \ v^{(s)}(\bm{k})=\frac {1} {\sqrt{m}} \begin{bmatrix} \sqrt{k_\mu \sigma^\mu} \xi^{(s)} \\ -\sqrt{k_\mu \bar{\sigma}^{\mu}} \xi^{(s)}\end{bmatrix}$$


This form of $u,v$ will satisfy the equation automatically. With the convention that the square-root of matrix is the branch that have position eigenvalue.

{{<fold "Proof">}}

The equation for $u_{l(r)},v_{l(r)}$ are:


$$\begin{aligned}
k_\mu \sigma^\mu u_r -m u_l &=0 \\
k_\mu \bar{\sigma}^\mu u_l - m u_r &=0\\
k_\mu \sigma^\mu v_r +m v_l &=0 \\
k_\mu \bar{\sigma}^\mu v_l + m v_r &=0
\end{aligned}$$


For $(k_\mu\sigma^\mu)(k_\mu\bar{\sigma}^{\mu})=k_\mu k^\mu$ , there are only two independent equations((1) and (3), (2) are the same as (1), and (4) are the same as (2)). One can easily check that the form above satisfy these equations.

More over, we can check that $\bar{u}u,\bar{v}v$ are Lorentz scalar, remember $k_{\mu}\sigma^{\mu}$ is Hermitian.


$$\begin{aligned}
\bar{u} u &= u^{\dagger} \gamma^0 u \\
&= \frac 1 m \Big(\chi^\dagger \sqrt{k_\mu\sigma^\mu}\sqrt{k_\mu \bar{\sigma}^\mu} \chi + \chi^\dagger \sqrt{k_\mu\bar{\sigma}^\mu}\sqrt{k_\mu \sigma^\mu} \chi  \Big) \\
&= 2\chi^\dagger \chi
\end{aligned}$$


Check for $v$ is similar, the general form are still:


$$\begin{aligned}
\bar{u}^{(s)}u^{(r)} &= 2 \chi^{(s)\dagger}\chi^{(r)} \\
\bar{v}^{(s)}v^{(r)} &= -2 \xi^{(s)\dagger}\xi^{(r)} \\
\end{aligned}$$


One can also directly prove they are the same. Notice that $k_\mu \sigma^\mu$ is Hermitian:


$$\sqrt{k_\mu \sigma^\mu} = a_\mu \sigma^\mu$$


Then square the both sides:


$$k_\mu \sigma^\mu = a_0^2 + 2a_0 a_i \sigma^i + a_i a_j \sigma^i\sigma^j = |a|^2+2a_0 a_i \sigma^i$$


Where $|a|^2 = a_0^2 +a_1^2 +a_2^2 +a_3^2$ . Then one can write the equation:


$$\begin{aligned}
k_0 &= |a|^2 \\
k_i &= 2a_0 a_i
\end{aligned}$$


Then eliminate $a_i$ , one have: $k_0 = a_0^2 + \sum_{i=1}^3k_i^2/(4a_0^2)$

One can solve that:


$$\begin{cases}
& a_0 = \sqrt{\frac 1 2 (k_0 \pm m)} \\
& a_i = k_i/(2a_0)
\end{cases}$$


We need the positive branch, for $\det a_\mu \sigma^\mu = a_\mu a^\mu=2a_0^2-k_0=\lambda_1\lambda_2 \gt 0$ , we need to choose the branch that $a_0=\sqrt{(k_0+m)/2}$ . Then:


$$\sqrt{k_\mu\sigma^\mu} = \frac {m\sigma^0+k_\mu \sigma^\mu} {\sqrt{2(m+k_0)}} $$


Similarly, one can write:


$$\sqrt{k_\mu\bar{\sigma}^\mu} = \frac {m\sigma^0+k_\mu \bar{\sigma}^\mu} {\sqrt{2(m+k_0)}} $$


That is:


$$\frac 1 {\sqrt{m}} \begin{bmatrix} \sqrt{k_\mu \sigma^\mu} \chi \\ \pm \sqrt{k_\mu\bar{\sigma}^{\mu}} \chi \end{bmatrix} = \frac {m\pm k_\mu\gamma^\mu} {\sqrt{2m(m+k_0)}} \begin{bmatrix} \chi \\ \pm \chi \end{bmatrix} $$


q.e.d.

{{</fold>}}

Here the 2-component quantities $\chi,\xi$ are arbitrary. In fact, they are relative to the spin of Dirac particle. We introduce a useful convention about them:

Given a direction $\bm{n}$ , we define $\chi^{(s=1,2)}$ are eigenvector of the matrix $\bm{n}\cdot \bm{\sigma}$ , which means the spin projected to $\bm{n}$ :


$$(\bm{n}\cdot \bm{\sigma}) \chi^{(\pm)} = \pm \chi^{(\pm)}$$


Where $\pm$ denote the index of which denote the spin-up/down along $\bm{n}$ .

Then let corresponding $\xi^{(pm)}$ are spin-inversion 2-component quantity:


$$\xi^{(\pm)} = (-\ti \sigma^2) \Big(\chi^{(\pm)} \Big)^*$$


Which leads to $(\bm{n}\cdot \bm{\sigma})\xi^{(\pm)}=\mp \xi^{(\pm)}$ . According to the property $\sigma^2 \bm{\sigma} \sigma^2 = -\bm{\sigma}^*$ . Note that this "spin-inverse" operator are not `reflexive relation`! Let $A x= (-\ti\sigma^2) (x^*)$ , one can find that: $A A x = -x$

If $\bm{n}=|\bm{n}|(\sin\theta\cos\phi,\sin\theta\sin\phi,\cos\theta)$ , one can choose that:


$$\chi^{(+)}(\bm{p}) = \begin{bmatrix} \cos(\theta/2) \\ e^{\ti \phi}\sin (\theta/2)\end{bmatrix} \ ; \ \chi^{(-)}(\bm{p})=\begin{bmatrix} -e^{-\ti\phi}\sin(\theta/2) \\ \cos(\theta/2) \end{bmatrix}$$


## Properties of Dirac Field

1.  According to the definition above. $u^{(s)},v^{(s)}$ as the function of $k=(\omega,\bm{k})$ has the property:

    
$$\begin{aligned}
    u^{(s)}(k) &= \exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu}) u^{(s)}(k=(m,\bm{0})) \\
    v^{(s)}(k) &= \exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu}) v^{(s)}(k=(m,\bm{0})) \\
    \end{aligned}$$


    Where $S^{\mu\nu}=\frac 1 2 \sigma_{\mu\nu}$ and $\omega_{\mu\nu}$ are the parameters of Lorentz transformation, which let:

    
$$\Lambda(\omega)(m,\bm{0}) = k$$


    Similarly:

    
$$\begin{aligned}
    \bar{u}^{(s)}(k) &= \bar{u}^{(s)}(k=(m,\bm{0})) \exp(\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})  \\
    v^{(s)}(k) &= \bar{v}^{(s)}(k=(m,\bm{0})) \exp(\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})  \\
    \end{aligned}$$


    {{<fold "Proof">}}

One can check the formular of Lorentz Transformation:


$$\exp(-\ti a \bm{n}\cdot \bm{K}) (1,\bm{0})\equiv \Lambda(\bm{\theta}=\bm{0},\bm{\eta}=a \bm{n};\bm{L},\bm{K}) (1,\bm{0}) = (\cosh a , \sinh a \ \bm{n})$$


where $|\bm{n}|=1$, namely $\bm{n}$ is a unit 3-vector.

With the relation that: $\omega_{0,i}=\eta^i$ , we have that:


$$\Lambda(\omega_{\mu\nu}=\delta_{\mu}^0 \delta_{\nu}^i \eta^i-\delta_{\nu}^0 \delta_{\mu}^i \eta^i)(m,\bm{0})=k$$


Where $\eta^i=a k^i/|\bm{k}|$ and $a=\sinh^{-1}(|\bm{k}|/m)$

With this parameter:


$$\exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu}) =\exp(-\ti \sum_{i=1}^3 \eta^i S^{0,i})=\begin{bmatrix} \cosh \frac a 2 +\sinh \frac a 2 \frac {k_i\sigma^i} {|\bm{k}|} & 0 \\ 0 &\cosh \frac a 2 -\sinh \frac a 2 \frac {k_i\sigma^i} {|\bm{k}|} \end{bmatrix}$$


For $u^{(s)}(k=(m,\bm{0}))=\begin{bmatrix} \chi^{(s)} \\ \chi^{(s)}\end{bmatrix} \ ; \ v^{(s)}(k=(m,\bm{0}))=\begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix}$ , we have:


$$\begin{aligned}
\exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})u^{(s)}(k=(m,\bm{0})) &= \Big(\cosh \frac a 2 + \sinh \frac a 2 \frac 1 {|\bm{k}|} k_i \gamma^i \Big)u^{(s)}(k=(m,\bm{0})) \\
\exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})v^{(s)}(k=(m,\bm{0})) &= \Big(\cosh \frac a 2 - \sinh \frac a 2 \frac 1 {|\bm{k}|} k_i \gamma^i \Big)v^{(s)}(k=(m,\bm{0}))
\end{aligned}$$


For the formula of hyperbolic-sin/cos:


$$\cosh^2 \frac a 2 = \frac {\cosh a+1} 2 \ ; \ \sinh^2 \frac a 2 = \frac {\cosh a -1} 2 \ ; \ \cosh^2 a-\sinh^2 a= 1$$


We have:


$$\begin{aligned}
\cosh \frac a 2 &= \sqrt{\frac 1 2 (1+\sqrt{\frac {m^2 +|\bm{k}|^2} {m^2}})} = \sqrt{\frac {m+k_0} {2m}} = \frac {m+k_0} {\sqrt{{2m(m+\omega_{|\bm{k}|})}}} \\
\sinh \frac a 2 &= \sqrt{\frac 1 2 (-1+\sqrt{\frac {m^2 +|\bm{k}|^2} {m^2}})} = \sqrt{\frac {-m+k_0} {2m}} = \frac {|\bm{k}|} {\sqrt{{2m(m+\omega_{|\bm{k}|})}}}
\end{aligned}$$


Where $k_0=\sqrt{m^2+\bm{k}^2}=\omega_{|\bm{k}|}$

Then we have:


$$\begin{aligned}
\exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})u^{(s)}(k=(m,\bm{0})) &= \frac {m+k_\mu \gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} u^{(s)}(k=(m,\bm{0})) \\
\exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})v^{(s)}(k=(m,\bm{0})) &= \frac {m-k_\mu \gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}}v^{(s)}(k=(m,\bm{0}))
\end{aligned}$$


Noting that for $v$ :


$$k_0 \begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix} =-k_0 \begin{bmatrix}0 & \sigma^0 \\ \sigma^0 & 0 \end{bmatrix}\begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix}=-k_0\gamma^0 \begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix}$$


Additionally:


$$\gamma^0\big[\exp(-\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})\big]^\dagger \gamma^0 = \exp(\frac {\ti} 2 \omega_{\mu\nu} S^{\mu\nu})$$


We can prove the formula about $\bar{u},\bar{v}$

Then this property is proved.

    {{</fold>}}

2.  $u^{(s)},v^{(s)}$ as the function of 4-vector $(k=(k_0\equiv \omega_{|\bm{k}|},\bm{k}))$ has the property :

    
$$\begin{aligned}
    u^{(s)}(k) & = \Lambda_{0\rightarrow k}\Lambda_{k'\rightarrow 0} u^{(s)}(k') \\
    v^{(s)}(k) & = \Lambda_{0\rightarrow k}\Lambda_{k'\rightarrow 0} v^{(s)}(k')
    \end{aligned}$$


    Where $\Lambda_{k_1\rightarrow k_2}$ is the Lorentz Transformation for Dirac Spinor $\Lambda_{k_1\rightarrow k_2} =\exp(-\ti \omega_{\mu\nu}S^{\mu\nu}/2)$ with parameter $\omega$ inducing 4-vector Lorentz Transformation: $\Lambda(\omega)k_1=k_2$ . Obviously $\Lambda_{k_1\rightarrow k_2} = \Lambda_{k_2\rightarrow k_1}^{-1}$

3.  $u^{(s)}$ and $v^{(s)}$ satisfy(with $\bar{x}=x^\dagger \gamma^0$ for Dirac spinor $x$ ) :

    
$$\begin{aligned}
    \bar{u}^{(r)}(k)u^{(s)}(k) &= 2(\chi^{(r)})^\dagger \chi^{(s)} \\
    \bar{v}^{(r)}(k)v^{(s)}(k) &= -2(\xi^{(r)})^\dagger \xi^{(s)} \\
    \bar{u}^{(r)}(k)v^{(s)}(k) &= \bar{v}^{(r)}(k)u^{(s)}(k)=0
    \end{aligned}$$


    {{<fold "Proof">}}

The first two equality has been proved. We consider the third one:


$$\begin{aligned}
\bar{u}^{(r)}(k)v^{(s)}(k)&=u^{(r)\dagger}(k)\gamma^0 v^{(s)}(k) \\
&=\frac 1 m [\chi^{(r)\dagger}\sqrt{k_\mu\sigma^{\mu}},\chi^{(r)\dagger}\sqrt{k_\mu\bar{\sigma}^{\mu}}] \gamma^0 \begin{bmatrix} \sqrt{k_\mu \sigma^{\mu}} \xi^{(s)} \\ -\sqrt{k_\mu \bar{\sigma}^{\mu}} \xi^{(s)}\end{bmatrix} \\
&= \frac 1 m (-k_\mu k^\mu \chi^{(r)\dagger}\xi^{(s)}+k_{\mu}k^{\mu} \chi^{(r)\dagger}\xi^{(s)})\\
&= 0
\end{aligned}$$


q.e.d.

    {{</fold>}}

4.  With the special choose of

    
$$\chi^{(r)\dagger}\chi^{(s)} = \xi^{(r)\dagger}\xi^{(s)} = \delta_{r}^{s} m$$


    We can define the `Energy Projector` :

    
$$\begin{aligned}
    P^{(+)} &= \frac 1 {2m} \sum_{s=1,2} u^{(s)}(k)\bar{u}^{(s)}(k) = \frac {k_{\mu}\gamma^{\mu}+m} {2m} \\
    P^{(-)} &= -\frac 1 {2m} \sum_{s=1,2} v^{(s)}(k)\bar{v}^{(s)}(k) = \frac {-k_{\mu}\gamma^{\mu}+m} {2m}
    \end{aligned}$$


    With the equality that $(k_{\mu}\gamma^{\mu}+m)(k_{\mu}\gamma^{\mu}-m)=0$ and $k_{\mu}\gamma^{\mu}k_\nu \gamma^\nu = k_{\mu}k^{\mu}$ , one can find that:

    
$$\begin{aligned}
    P^{(+) 2} &= P^{(+)} \\
    P^{(-) 2} &= P^{(-)} \\
    P^{(+)}P^{(-)} &= P^{(-)}P^{(+)} = 0 \\
    P^{(+)} +P^{(-)} & = 1
    \end{aligned}$$


    That is why call them `Projector` .

    More over, acting any solution of free Dirac equation, $P^{(+)}$ extracts the `positive-energy part` and $P^{(-)}$ extracts the `negative-energy part`

    {{<fold "Proof">}}

For $\chi,\xi$ are orthogonal, we have $\sum_{s=1,2} \chi^{(s)}\chi^{(s)\dagger} =\sum_{s=1,2} \xi^{(s)}\xi^{(s)\dagger}= m$ is a c-number


$$\begin{aligned}
\sum_{s=1,2} u^{(s)}(k)\bar{u}^{(s)}(k) &= \frac 1 m \sum_{s=1,2}  \begin{bmatrix} \sqrt{k_\mu \sigma^{\mu}} \chi^{(s)} \\ \sqrt{k_\mu \bar{\sigma}^{\mu}} \chi^{(s)}\end{bmatrix} [\chi^{(s)\dagger}\sqrt{k_\mu\sigma^{\mu}},\chi^{(s)\dagger}\sqrt{k_\mu\bar{\sigma}^{\mu}}] \gamma^0 \\
&= \begin{bmatrix} k_\mu \sigma^\mu & m \\ m & k_{\mu}\bar{\sigma}^\mu  \end{bmatrix} \gamma^0 \\
&= \begin{bmatrix} m & k_{\mu}\sigma^\mu \\  k_{\mu}\bar{\sigma}^\mu& m   \end{bmatrix} \\
&= (m+k_\mu\gamma^\mu) \\
\sum_{s=1,2} v^{(s)}(k)\bar{v}^{(s)}(k) &= \frac 1 m \sum_{s=1,2}  \begin{bmatrix} \sqrt{k_\mu \sigma^{\mu}} \xi^{(s)} \\ -\sqrt{k_\mu \bar{\sigma}^{\mu}} \xi^{(s)}\end{bmatrix} [\xi^{(s)\dagger}\sqrt{k_\mu\sigma^{\mu}},-\xi^{(s)\dagger}\sqrt{k_\mu\bar{\sigma}^{\mu}}] \gamma^0 \\
&=\begin{bmatrix} k_\mu \sigma^\mu & -m \\ -m & k_{\mu}\bar{\sigma}^\mu  \end{bmatrix} \gamma^0 \\
&=(-m+k_\mu\gamma^{\mu})
\end{aligned}$$


Then:


$$\Big(\frac{\pm k_\mu\gamma^{\mu}+ m} {2m}\Big)^2 = \frac 1 {4m^2}\Big( k_{\mu}k^\mu \pm 2m k_\mu\gamma^\mu +m^2\Big) = \frac{\pm k_\mu\gamma^\mu+m} {2m} $$


q.e.d.

    {{</fold>}}

5.  `Gordon Identities` :

    
$$\begin{aligned}
    2m \bar{u}^{(s')}(\bm{k}') \gamma^\mu u^{(s)}(\bm{k}) &= \bar{u}^{(s')}(\bm{k}')\big[(k'+k)^\mu+2\ti S^{\mu\nu}(k'-k)_\nu \big]u^{(s)}(\bm{k}) \\
    -2m \bar{v}^{(s')}(\bm{k}') \gamma^\mu v^{(s)}(\bm{k}) &= \bar{v}^{(s')}(\bm{k}')\big[(k'+k)^\mu+2\ti S^{\mu\nu}(k'-k)_\nu \big]v^{(s)}(\bm{k}) \\
    \end{aligned}$$


    Where the 0-components of $k$ always is $k_0=\sqrt{m^2+|\bm{k}|^2}$

    {{<fold "Proof">}}

To prove them, one need to notice that:


$$\begin{aligned}
\gamma^\mu k_\nu \gamma^\nu &= \frac 1 2 \{\gamma^\mu,k_\nu \gamma^\nu\}+\frac 1 2 [\gamma^\mu,k_\nu \gamma^\nu] = k^\mu - 2\ti S^{\mu\nu} k_\nu \\
k_\nu \gamma^{\nu} \gamma^\mu &= \frac 1 2 \{\gamma^\mu,k_\nu \gamma^\nu\}-\frac 1 2 [\gamma^\mu,k_\nu \gamma^\nu] = k^\mu + 2\ti S^{\mu\nu} k_\nu \\
\end{aligned}$$


Then, together with:


$$\begin{aligned}
(k_\mu\gamma^{\mu}-m) u^{(s)}(\bm{k}) &=0 \\
(k_\mu\gamma^{\mu}+m) v^{(s)}(\bm{k}) &=0 \\
\bar{u}^{(s)}(\bm{k})(k_\mu\gamma^{\mu}-m)  &=0 \\
\bar{v}^{(s)}(\bm{k})(k_\mu\gamma^{\mu}+m)  &=0 \\
\end{aligned}$$


which can be obtained with $\gamma^0\gamma^{\mu\dagger}=\gamma^\mu\gamma^0$ . Then we can compute:


$$\begin{aligned}
m\bar{u}^{(s')}(\bm{k}') \gamma^\mu u^{(s)}(\bm{k})&=\bar{u}^{(s')}(\bm{k}') \gamma^\mu k_{\nu}\gamma^{\nu} u^{(s)}(\bm{k}) = \bar{u}^{(s')}(\bm{k}') (k^\mu-2\ti S^{\mu\nu}k_\nu) u^{(s)}(\bm{k}) \\
m\bar{u}^{(s')}(\bm{k}') \gamma^\mu u^{(s)}(\bm{k})&=\bar{u}^{(s')}(\bm{k}')  k'_{\nu}\gamma^{\nu} \gamma^\mu u^{(s)}(\bm{k}) = \bar{u}^{(s')}(\bm{k}') (k'^\mu+2\ti S^{\mu\nu}k'_\nu) u^{(s)}(\bm{k})
\end{aligned}$$


Adding these two we have:


$$2m \bar{u}^{(s')}(\bm{k}) \gamma^\mu u^{(s)}(\bm{k}) = \bar{u}^{(s')}(\bm{k})\big[(k'+k)^\mu+2\ti S^{\mu\nu}(k'-k)_\nu \big]u^{(s)}(\bm{k})$$


And for $v$ , actually we need only convert $m\rightarrow -m$ .

Then these equalities are proved.

    {{</fold>}}



    One of the special situation is that:

    
$$\begin{aligned}
    \bar{u}^{(s')}(\bm{k}) \gamma^\mu u^{(s)}(\bm{k}) &=2k^\mu \delta^{s',s} \\
    \bar{v}^{(s')}(\bm{k}') \gamma^\mu v^{(s)}(\bm{k}) &=2k^{\mu}\delta^{s',s}
    \end{aligned}$$


6.  Equalities:

    
$$\begin{aligned}
    2m \bar{u}^{(s')}(\bm{k}')\gamma^{\mu} v^{(s)}(\bm{k}) &= \bar{u}^{(s')}(\bm{k}')\big[(k'-k)^{\mu}+2\ti S^{\mu\nu}(k'+k)_{\nu} \big] v^{(s)}(\bm{k}) \\
    -2m \bar{v}^{(s')}(\bm{k}')\gamma^{\mu} u^{(s)}(\bm{k}) &= \bar{v}^{(s')}(\bm{k}')\big[(k'-k)^{\mu}+2\ti S^{\mu\nu}(k'+k)_{\nu} \big] u^{(s)}(\bm{k}) \\
    \end{aligned}$$


    With the special situation:

    
$$\begin{aligned}
    2m\bar{u}^{(s')}(\bm{k}) \gamma^\mu v^{(s)}(-\bm{k}) &=2k^\mu \bar{u}^{(s')}(\bm{k})v^{(s)}(-\bm{k}) \\
    -2m\bar{v}^{(s')}(\bm{k}) \gamma^\mu u^{(s)}(-\bm{k}) &=2k^\mu \bar{u}^{(s')}(\bm{k})v^{(s)}(-\bm{k}) \\
    \end{aligned}$$


    {{<fold "Proof">}}

The proof is similar to what we have done in `Gordon Equalities` :


$$\begin{aligned}
-m \bar{u}^{(s')}(\bm{k}')\gamma^{\mu} v^{(s)}(\bm{k}) &= \bar{u}^{(s')}(\bm{k}')\gamma^{\mu} k_\nu \gamma^{\nu} v^{(s)}(\bm{k}) = \bar{u}^{(s')}(\bm{k}') (k^\mu-2\ti S^{\mu\nu}k_\nu) v^{(s)}(\bm{k}) \\
m \bar{u}^{(s')}(\bm{k}')\gamma^{\mu} v^{(s)}(\bm{k}) &= \bar{u}^{(s')}(\bm{k}')k'_\nu \gamma^{\nu}\gamma^{\mu}  v^{(s)}(\bm{k}) = \bar{u}^{(s')}(\bm{k}')(k'^\mu+2\ti S^{\mu\nu}k'_\nu) v^{(s)}(\bm{k}) \\
\\
m \bar{v}^{(s')}(\bm{k}')\gamma^{\mu} u^{(s)}(\bm{k}) &= \bar{v}^{(s')}(\bm{k}')\gamma^{\mu} k_\nu \gamma^{\nu} u^{(s)}(\bm{k}) = \bar{v}^{(s')}(\bm{k}')(k^\mu-2\ti S^{\mu\nu}k_\nu) u^{(s)}(\bm{k}) \\
-m \bar{v}^{(s')}(\bm{k}')\gamma^{\mu} u^{(s)}(\bm{k}) &= \bar{u}^{(s')}(\bm{k}')k'_\nu \gamma^{\nu}\gamma^{\mu}  v^{(s)}(\bm{k}) = \bar{u}^{(s')}(\bm{k}')(k'^\mu+2\ti S^{\mu\nu}k'_\nu) v^{(s)}(\bm{k}) \\
\end{aligned}$$


Subtracting them will get the proof.

    {{</fold>}}

7.  With the convention that $\xi^{(s)} = (-\ti \sigma^2) \Big(\chi^{(s)} \Big)^*$ , we can check:

    
$$u^{(s)}(\bm{k})=-\ti \gamma^2\Big(v^{(s)}(\bm{k}) \Big)^* \ ; \ v^{(s)}(\bm{k})=-\ti \gamma^2 \Big(u^{(s)}(\bm{k}) \Big)^*$$


    {{<fold "Proof">}}

Using the definition of $u,v$ :


$$u^{(s)}(\bm{k})=\frac {m+k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} \chi^{(s)} \\ \chi^{(s)}\end{bmatrix} \ ; \ v^{(s)}(\bm{k})=\frac {m-k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix}$$


For $\xi^{(s)}=(-\ti \sigma^2)(\chi^{(s)})^*$ , we have:


$$v^{(s)}(\bm{k})=\frac {m-k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} -\ti\sigma^2 \chi^{(s)*} \\ \ti \sigma^2\chi^{(s)*}\end{bmatrix}=\frac {m-k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}}(-\ti \gamma^2)\Big( \begin{bmatrix} \chi^{(s)} \\ \chi^{(s)}\end{bmatrix}\Big)^*$$


Then we need only prove that:


$$(m-k_\mu\gamma^\mu)(-\ti\gamma^2)=-\ti \gamma^2 (m+k_\mu \gamma^\mu)^*$$


For $\ti\gamma^2$ is real matrix and $(\gamma^2)^2=-1$, we have it is equivalent to $(m+k_\mu\gamma^\mu)^*=-\ti \gamma^2 (m+k_\mu \gamma^\mu)(-\ti\gamma^2)$ , which means what we need to prove for these two equalities are equivalent.

Then what we need is to prove $-k_\mu\gamma^\mu\gamma^2 = \gamma^2 (k_\mu \gamma^\mu)^*$

With the property of Pauli matrices: $\sigma^2 \sigma^j \sigma^2 = -\sigma^{j*}$ , we can prove that $\gamma^2\gamma^\mu\gamma^2=\gamma^{\mu*}$ :


$$\gamma^2\gamma^\mu\gamma^2=\begin{bmatrix} 0 & \sigma^2 \\ -\sigma^2 & 0\end{bmatrix}\begin{bmatrix} 0 & \sigma^\mu \\ \sigma_\mu & 0\end{bmatrix}\begin{bmatrix} 0 & \sigma^2 \\ -\sigma^2 & 0\end{bmatrix}=\begin{bmatrix}0 & \sigma^2 \sigma_\mu\sigma^2 \\ \sigma^2 \sigma^\mu \sigma^2 & 0\end{bmatrix}$$


For $\mu=0$ , that is $\gamma^2\gamma^0\gamma^2=\gamma^0=\gamma^{0*}$ , and for $\mu=1,2,3$ , it is $\gamma^2\gamma^j\gamma^2=\gamma^{j*}$

Then we have:


$$(k_\mu \gamma^\mu)^* = \gamma^2 (k_\mu\gamma^\mu)\gamma^2\Rightarrow -k_\mu\gamma^\mu\gamma^2 = \gamma^2 (k_\mu \gamma^\mu)^*$$


q.e.d.

    {{</fold>}}

8.  With the convention that $x^{(\bar{s})} = (-\ti \sigma^2) \Big(x^{(s)} \Big)^*$ , where $x=\chi,\xi$ , we can check:

    
$$u^{(\bar s)}(-\bm{k})=-\gamma^1\gamma^3 \Big(u^{(s)}(\bm{k}) \Big)^* \ ; \ v^{(\bar s)}(-\bm{k})=-\gamma^1\gamma^3 \Big(v^{(s)}(\bm{k}) \Big)^*$$


    Where $u^{(\bar{s})}$ is generated by $\chi^{(\bar{s})}$ , similar for $v$ .

    {{<fold "Proof">}}

Using the definition of $u,v$:


$$u^{(s)}(\bm{k})=\frac {m+k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} \chi^{(s)} \\ \chi^{(s)}\end{bmatrix} \ ; \ v^{(s)}(\bm{k})=\frac {m-k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix}$$


According to the convention, we have:


$$u^{(\bar s)}(\bm{k})=\frac {m+k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix}-\ti \sigma^2 \chi^{(s)*}\\ -\ti \sigma^2 \chi^{(s)*}\end{bmatrix} \ ; \ v^{(\bar s)}(\bm{k})=\frac {m-k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix}-\ti \sigma^2 \xi^{(s)*}\\ -\ti \sigma^2 \xi^{(s)*}\end{bmatrix}$$


Then we need only to prove that:


$$(m\pm (k^0,-\bm{k})\cdot \gamma)\begin{bmatrix}-\ti \sigma^2 & 0 \\ 0 & -\ti\sigma^2\end{bmatrix}=-\gamma^1\gamma^3(m\pm k_\mu \gamma^\mu)^*$$


For $\begin{bmatrix}-\ti \sigma^2 & 0 \\ 0 & -\ti\sigma^2\end{bmatrix}=-\gamma^1\gamma^3$ , we need only prove that:


$$((k^0,-\bm{k})\cdot \gamma) \gamma^1\gamma^3=\gamma^1\gamma^3 (k_\mu\gamma^\mu)^*$$


Or


$$\gamma^0\gamma^1\gamma^3=\gamma^1\gamma^3\gamma^0 \ ; \ \gamma^i\gamma^1\gamma^3=-\gamma^1\gamma^3\gamma^{i*}$$


It can be easily checked by compute.

q.e.d.

    {{</fold>}}

## Plane-Wave Expansion and Hamiltonian

With these properties, we can write down the general solution:


$$\psi(x) = \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2} \Big( a(\bm{k},s) u^{(s)}(k)e^{-\ti k_\mu x^\mu} + b(\bm{k,s})^{*} v^{(s)}(k)e^{\ti k_{\mu }x^\mu} \Big)$$


Where $a,b$ are complex-valued function, and the factor $\sqrt{\frac 1 {2\omega_{|\bm{k}|}}}$ is used to let the $\psi$ has a correct unit, and will be normalized when we quantize it.

The canonically momentum:


$$\pi(x)= \ti \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2} \Big( a(\bm{k},s)^{*} u^{(s)}(k)^\dagger e^{\ti k_\mu x^\mu} + b(\bm{k,s}) v^{(s)}(k)^\dagger e^{-\ti k_{\mu }x^\mu} \Big)$$


And Hamiltonian (with $\chi^{(r)\dagger}\chi^{(s)} = \xi^{(r)\dagger}\xi^{(s)}=m\delta_r^s$ ):


$$H=\sum_s \int \td^3\bm{k} \ \omega_{|\bm{k}|} \Big[ a(\bm{k},s)^* a(\bm{k},s) - b(\bm{k},s) b(\bm{k},s)^*\Big]$$



{{<fold "Proof">}}

For the Hamiltonian of Dirac field:


$$H = \int \td^3 \bm{x} \Big\{-\sum_{i=1}^3 \ti \bar{\psi}\gamma^i \partial_i \psi + m \bar{\psi}\psi  \Big\}$$


We need to compute those two items:


$$\begin{aligned}

\int \td^3 \bm{x} \bar{\psi}\psi &=2m \sum_{s} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \  a(\bm{k},s)^* a(\bm{k},s) - b(\bm{k},s) b(\bm{k},s)^* \\
& \indent  + \sum_{s,s'}\int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ b(\bm{k},s) a(-\bm{k},s') \bar{v}^{(s)}(\bm{k}) u^{(s')}(-\bm{k}) e^{-2\ti \omega_{|\bm{k}|}t} \\
& \indent + \sum_{s,s'}\int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ a(\bm{k},s)^* b(-\bm{k},s')^* \bar{u}^{(s)}(\bm{k}) v^{(s')}(-\bm{k}) e^{2\ti \omega_{|\bm{k}|}t} \\
\\
-\ti \int \td^3 \bm{x} \bar{\psi} \gamma^i \partial_i \psi &= \sum_{s,s'} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ a(\bm{k},s)^* a(\bm{k},s') \bar{u}^{(s)}(\bm{k}) k_i \gamma^i u^{(s')}(\bm{k}) \\
& \indent - \sum_{s,s'} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ b(\bm{k},s) b(\bm{k},s')^* \bar{v}^{(s)}(\bm{k}) k_i \gamma^i v^{(s')}(\bm{k}) \\
& \indent  - \sum_{s,s'}\int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ b(\bm{k},s) a(-\bm{k},s') \bar{v}^{(s)}(\bm{k}) k_i \gamma^i u^{(s')}(-\bm{k}) e^{-2\ti \omega_{|\bm{k}|}t} \\
& \indent + \sum_{s,s'}\int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ a(\bm{k},s)^* b(-\bm{k},s')^* \bar{u}^{(s)}(\bm{k}) k_i\gamma^i v^{(s')}(-\bm{k}) e^{2\ti \omega_{|\bm{k}|}t} \\
\\
\end{aligned}$$


According to those equalities:


$$\begin{aligned}
\bar{u}^{(s)}(\bm{k})\gamma^j u^{(r)}(\bm{k}) &= 2k^j \delta^{sr} \\
\bar{v}^{(s)}(\bm{k})\gamma^j v^{(r)}(\bm{k}) &= 2k^j \delta^{sr} \\
\end{aligned}$$


And:


$$\begin{aligned}
\bar{u}^{(s)}(\bm{k})\gamma^\mu v^{(s')}(-\bm{k}) &= \frac {k^\mu} m \bar{u}^{(s)}(\bm{k}) v^{(s')}(-\bm{k}) \\
\bar{v}^{(s)}(\bm{k})\gamma^\mu u^{(s')}(-\bm{k}) &= -\frac {k^\mu} m \bar{v}^{(s)}(\bm{k}) u^{(s')}(-\bm{k}) \\
\end{aligned}$$


And at last:


$$\begin{aligned}
m\bar{u}^{(s)}(\bm{k}) v^{(s')}(-\bm{k})&= \bar{u}^{(s)}(\bm{k})(-k_0\gamma^0+k_i\gamma^i)v^{(s')}(-\bm{k}) \\
&=\bar{u}^{(s)}(\bm{k})v^{(s')}(-\bm{k}) (-k_0 k^0+k_i k^i)/m \\
&=-m\bar{u}^{(s)}(\bm{k})v^{(s')}(-\bm{k}) \\
&=0 \\
\bar{v}^{(s)}(\bm{k}) u^{(s')}(-\bm{k})&=v^{(s)\dagger}(-(-\bm{k}))\gamma^0u^{(s')}(-\bm{k}) \\
&=\big( u^{(s')\dagger}(-\bm{k})\gamma^0v^{(s)}(-(-\bm{k}))\big)^\dagger \\
&=0
\end{aligned}$$


Then we have:


$$\begin{aligned}

\int \td^3 \bm{x} \bar{\psi}\psi &= 2m \sum_{s} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \  a(\bm{k},s)^* a(\bm{k},s) - b(\bm{k},s) b(\bm{k},s)^* \\
\\
-\ti \int \td^3 \bm{x} \bar{\psi} \gamma^i \partial_i \psi &= \sum_{s,s'} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ a(\bm{k},s)^* a(\bm{k},s') 2k_i k^i\delta^{s',s} \\
& \indent - \sum_{s,s'} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ b(\bm{k},s) b(\bm{k},s')^* 2k_i k^i\delta^{s',s} \\
\end{aligned}$$


Then:


$$\begin{aligned}
H &=\int \td^3 \bm{x} \Big\{-\sum_{i=1}^3 \ti \bar{\psi}\gamma^i \partial_i \psi + m \bar{\psi}\psi  \Big\} \\
&= \sum_{s} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ a(\bm{k},s)^* a(\bm{k},s) 2k_i k^i- \sum_{s} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \ b(\bm{k},s) b(\bm{k},s)^* 2k_i k^i \\
&\indent + 2m^2 \sum_{s} \int \td^3 \bm{k} \frac 1 {2\omega_{|\bm{k}|}} \  a(\bm{k},s)^* a(\bm{k},s) - b(\bm{k},s) b(\bm{k},s)^* \\
&=\sum_s \int \td^3\bm{k} \ \omega_{|\bm{k}|} \Big[ a(\bm{k},s)^* a(\bm{k},s) - b(\bm{k},s) b(\bm{k},s)^*\Big]
\end{aligned}$$


{{</fold>}}

# U(1) Symmetry of Dirac Field and Charge

Like the complex-valued Scalar Field, there is a $\text{U}(1)$ symmetry for Dirac Field: Lagrangian is invariant if field is changed by a phase factor.


$$\mathcal{L} \rightarrow \mathcal{L}'=\bar{\psi} e^{-\ti \alpha}(\ti \gamma^\mu \partial_\mu -m)e^{\ti \alpha}\psi = \mathcal{L}$$


Then we can compute the conserved chage(with $\delta x=0\ ; \ \delta \psi=\ti \psi \delta\alpha$ as the generator):


$$Q=\int \td^3 \bm{x} \frac {\partial\mathcal{L}} {\partial(\partial_0\psi)} \cdot \delta \psi\sim \int \td^3 \bm{x} \ \bar{\psi}\gamma^0\psi $$


With the plane-wave expansion, one can write it with $a,b$ coefficients with holding the order:


$$Q=\int \td^3 \bm{x} \ \psi^\dagger \psi =\sum_{s=1,2}\int \td^3 \bm{k} \Big(a(\bm{k},s)^* a(\bm{k},s)+b(\bm{k},s)b(\bm{k},s)^*\Big)$$


{{<fold "Proof">}}

With:


$$\psi(x) = \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2} \Big( a(\bm{k},s) u^{(s)}(\bm{k})e^{-\ti k_\mu x^\mu} + b(\bm{k,s})^{*} v^{(s)}(\bm{k})e^{\ti k_{\mu }x^\mu} \Big) $$


For $\bar{\psi}\gamma^0\psi=\psi^\dagger \psi$ , we have:


$$\begin{aligned}
\int \td^3 \bm{x} \ \psi^\dagger \psi &=\sum_{s,r} \int \frac {\td^3 \bm{k} \td^3 \bm{k}'} {(2\pi)^3 \sqrt{4\omega\omega'}} \Big(a(\bm{k},s)^* a(\bm{k}',r) u^{(s)}(\bm{k})^\dagger u^{(r)}(\bm{k}') e^{-\ti (k'-k)\cdot x} \\
&\indent + b(\bm{k},s) b(\bm{k}',r)^* v^{(s)}(\bm{k})^\dagger v^{(r)}(\bm{k}') e^{\ti (k'-k)\cdot x} \\
&\indent + a(\bm{k},s)^* b(\bm{k}',r)^* u^{(s)}(\bm{k})^\dagger v^{(r)}(\bm{k}') e^{\ti(k'+k)\cdot x} \\
&\indent + b(\bm{k},s)a(\bm{k}',r) v^{(s)}(\bm{k})^\dagger u^{(r)}(\bm{k}') e^{-\ti (k'+k)\cdot x}  \Big) \\
&= \sum_{s,r}\int \frac {\td^3 \bm{k}} {2\omega_{|\bm{k}|}}  \Big(a(\bm{k},s)^* a(\bm{k},r) u^{(s)}(\bm{k})^\dagger u^{(r)}(\bm{k}) + b(\bm{k},s) b(\bm{k},r)^* v^{(s)}(\bm{k})^\dagger v^{(r)}(\bm{k}) \\
&\indent + a(\bm{k},s)^* b(-\bm{k},r)^* u^{(s)}(\bm{k})^\dagger v^{(r)}(-\bm{k}) e^{2\ti \omega_{|\bm{k}|}t} \\
&\indent + b(\bm{k},s)a(-\bm{k},r) v^{(s)}(\bm{k})^\dagger u^{(r)}(-\bm{k}) e^{-2\ti \omega_{|\bm{k}|}t}  \Big) \\
\end{aligned}$$


and using the following equalities:


$$\bar{u}^{(s)}(\bm{k})\gamma^0 u^{(r)}(\bm{k})=\bar{v}^{(s)}(\bm{k})\gamma^0 v^{(r)}(\bm{k})=2k^0 \delta^{sr} $$


And with that $(m+k_\mu \gamma^\mu)^\dagger=(m+(k^0,-\bm{k})\cdot \gamma)$ , and that $(m+k_\mu \gamma^\mu)(m-k_\mu \gamma^\mu)=0$ , we have:


$$u^{(s)\dagger}(\bm{k})v^{(r)}(-\bm{k})=\begin{bmatrix}\chi^{(s)\dagger} & \chi^{(s)\dagger}\end{bmatrix} \frac {(m+k_\mu\gamma^\mu)^\dagger (m-(k^0,-\bm{k})\cdot \gamma)} {2m(m+k^0)}\begin{bmatrix} \xi^{(r)} \\ - \xi^{(r)}\end{bmatrix}=0$$


Similarly $v^{(s)\dagger}(\bm{k})u^{(r)}(-\bm{k})=0$ . Then we have:


$$\int \td^3 \bm{x} \ \psi^\dagger \psi =\sum_{s=1,2}\int \td^3 \bm{k} \Big(a(\bm{k},s)^* a(\bm{k},s)+b(\bm{k},s)b(\bm{k},s)^*\Big)$$


q.e.d.

{{</fold>}}
