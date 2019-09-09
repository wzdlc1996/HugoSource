---
title: "Quantization of Free Field: Scalar Field"
date: 2018-12-20T14:29:47+08:00
draft: false
tags: ["quantum"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
summary: "The canonical quantization of Real-valued Scalar Field(Klein Gordon Field). And computation of propagator and discussion, especially the causality property. At last we will discuss the discrete symmetry of Klein Gordon Field in Quantum Theory"
---

# Quantization of Klein-Gordon Field

## Canonical Quantization of real-valued Scalar Field

Here we only consider the `real-valued` Scalar Field. The result for charged one (complex-valued) is easily to be obtained. The Hamiltonian of Scalar Field system is:

<div>$$H=\frac 1 2 \int \td^3 \bm{x} \ \big(\pi^2+\nabla\phi\cdot \nabla\phi+m^2\phi^2 \big)$$</div>

To quantized this system, we need let the `canonical coordinate and momentum` be `operators on Hilbert space`: `$\pi(\bm{x})\rightarrow \hat \pi(\bm{x}) \ ; \ \phi(\bm{x})\rightarrow \hat \phi(\bm{x})$` . For simplicity, we will omit the ^ of the operator symbol. Because in the future we will discuss the Quantum Field Theory only.

The `operator` should satisfy the `commutation relation`:

<div>$$[\pi(\bm{x}),\pi(\bm{x}')]=[\phi(\bm{x}),\phi(\bm{x}')]=0\ ; \ [\phi(\bm{x}),\pi(\bm{x}')]=\ti \delta^3(\bm{x}-\bm{x}')$$</div>

They are operators in `Schrodinger Picture`, which are independent of time. Equivalently, we can say they are operators in `Heisenberg Picture` with the same time. That is why these relations are so-called as `equal-time commutation relation`

One can rewrite them into the plane wave expansion. Like what we did in Classical Theory. In Schrodinger Picture:

<div>$$\begin{aligned}
\phi(\bm{x})&=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \Big\{ e^{\ti \bm{k}\cdot \bm{x}} a(\bm{k})+e^{-\ti \bm{k}\cdot \bm{x}} a(\bm{k})^{\dagger} \Big\} \\
\pi(\bm{x})&=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac {\ti \omega_{|\bm{k}|}} {\sqrt{2\omega_{|\bm{k}|}}} \Big\{ -e^{\ti \bm{k}\cdot \bm{x}} a(\bm{k})+e^{-\ti \bm{k}\cdot \bm{x}} a(\bm{k})^{\dagger} \Big\} \\
\end{aligned}$$</div>

Where we let the coefficient `$a^*$` to be operator `$a^\dagger$` so that `$\phi$` will be a Hermitian operator, corresponding to the real-valued field requirement, and `$\omega_{|\bm{k}|}=\sqrt{|\bm{k}|^2+m^2}$`

We can write the inverse transform, which will represent `$a(\bm{k})$` by `$\phi,\pi$`:

<div>$$\begin{aligned}
a(\bm{k})&=\int \frac {\td^3\bm{x}} {(2\pi)^{3/2}} \Big\{\sqrt{\frac  {\omega_{|\bm{k}|} } 2} e^{-\ti\bm{k}\cdot \bm{x}}\phi(\bm{x})+\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} e^{-\ti \bm{k}\cdot \bm{x}} \pi(\bm{x}) \Big\} \\
a(\bm{k})^\dagger&=\int \frac {\td^3\bm{x}} {(2\pi)^{3/2}} \Big\{\sqrt{\frac  {\omega_{|\bm{k}|} } 2} e^{\ti\bm{k}\cdot \bm{x}}\phi(\bm{x})-\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} e^{\ti \bm{k}\cdot \bm{x}} \pi(\bm{x}) \Big\} \\
\end{aligned}$$</div>

And their commutator:

<div>$$[a(\bm{k}),a(\bm{k}')]=[a(\bm{k})^\dagger,a(\bm{k}')^\dagger]=0 \ ; \ [a(\bm{k}),a(\bm{k}')^\dagger]=\delta^3(\bm{k}-\bm{k}')$$</div>

{{%fold "Proof"%}}

Using the 3-d delta function: `$\delta^3(\bm{x}-\bm{y})=\int \frac {\td^3 \bm{k}} {(2\pi)^3} e^{\ti \bm{k}\cdot(\bm{x}-\bm{y})}$` , we have:

<div>$$\begin{aligned}
\frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \Big(a(\bm{k})+a(-\bm{k})^\dagger\Big)&=\int \frac {\td^3\bm{x}} {(2\pi)^{3/2}} e^{-\ti \bm{k}\cdot \bm{x}} \phi(\bm{x})\\
\frac {-\ti\omega_{|\bm{k}|}} {\sqrt{2\omega_{|\bm{k}|}}} \Big(a(\bm{k})-a(-\bm{k})^\dagger\Big)&=\int \frac {\td^3\bm{x}} {(2\pi)^{3/2}} e^{-\ti \bm{k}\cdot \bm{x}} \pi(\bm{x})
\end{aligned}$$</div>

That is:

<div>$$\begin{aligned}
a(\bm{k})&=\int \frac {\td^3\bm{x}} {(2\pi)^{3/2}} \Big\{\sqrt{\frac  {\omega_{|\bm{k}|} } 2} e^{-\ti\bm{k}\cdot \bm{x}}\phi(\bm{x})+\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} e^{-\ti \bm{k}\cdot \bm{x}} \pi(\bm{x}) \Big\} \\
a(\bm{k})^\dagger&=\int \frac {\td^3\bm{x}} {(2\pi)^{3/2}} \Big\{\sqrt{\frac  {\omega_{|\bm{k}|} } 2} e^{\ti\bm{k}\cdot \bm{x}}\phi(\bm{x})-\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} e^{\ti \bm{k}\cdot \bm{x}} \pi(\bm{x}) \Big\} \\
\end{aligned}$$</div>

We can compute some commutator:

<div>$$\begin{aligned}[]
[a(\bm{k}),a(\bm{k}')] &= \int \frac {\td^3\bm{x}\td^3\bm{x}'} {(2\pi)^3} \Big\{\ti\sqrt{\frac {\omega} {4\omega'}} e^{-\ti(\bm{k}\cdot\bm{x}+\bm{k}'\cdot \bm{x}')} [\phi(\bm{x}),\pi(\bm{x}')]+\ti\sqrt{\frac {\omega'} {4\omega}}e^{-\ti(\bm{k}\cdot\bm{x}+\bm{k}'\cdot \bm{x}')} [\pi(\bm{x}),\phi(\bm{x}')] \Big\} \\
&=\int \frac {\td^3\bm{x}\td^3\bm{x}'} {(2\pi)^3} \Big\{-\sqrt{\frac {\omega} {4\omega'}} e^{-\ti(\bm{k}\cdot\bm{x}+\bm{k}'\cdot \bm{x}')} \delta^3(\bm{x}-\bm{x}')+\sqrt{\frac {\omega'} {4\omega}}e^{-\ti(\bm{k}\cdot\bm{x}+\bm{k}'\cdot \bm{x}')} \delta^3(\bm{x}-\bm{x}') \Big\} \\
&=\int \frac {\td^3 \bm{x}} {(2\pi)^3} \Big\{-\sqrt{\frac {\omega} {4\omega'}} e^{-\ti(\bm{k}+\bm{k}')\cdot \bm{x}}+ \sqrt{\frac {\omega'} {4\omega}} e^{-\ti(\bm{k}+\bm{k}')\cdot \bm{x}} \Big\} \\
&= -\sqrt{\frac {\omega} {4\omega'}}+ \sqrt{\frac {\omega'} {4\omega}} \\
&=0
\end{aligned}$$</div>

Similarly, one can prove `$[a(\bm{k})^\dagger,a(\bm{k}')^\dagger]=0$`

Then we compute:

<div>$$\begin{aligned}[]
[a(\bm{k}),a(\bm{k}')^\dagger] &= \int \frac {\td^3\bm{x}\td^3\bm{x}'} {(2\pi)^3} \Big\{-\ti\sqrt{\frac {\omega} {4\omega'}} e^{-\ti(\bm{k}\cdot\bm{x}-\bm{k}'\cdot \bm{x}')} [\phi(\bm{x}),\pi(\bm{x}')]+\ti\sqrt{\frac {\omega'} {4\omega}}e^{\ti(\bm{k}\cdot\bm{x}-\bm{k}'\cdot \bm{x}')} [\pi(\bm{x}),\phi(\bm{x}')] \Big\} \\
&=\int \frac {\td^3\bm{x}\td^3\bm{x}'} {(2\pi)^3} \Big\{\sqrt{\frac {\omega} {4\omega'}} e^{-\ti(\bm{k}\cdot\bm{x}-\bm{k}'\cdot \bm{x}')} \delta^3(\bm{x}-\bm{x}')+\sqrt{\frac {\omega'} {4\omega}}e^{\ti(\bm{k}\cdot\bm{x}-\bm{k}'\cdot \bm{x}')} \delta^3(\bm{x}-\bm{x}') \Big\} \\
&=\int \frac {\td^3 \bm{x}} {(2\pi)^3} \Big\{\sqrt{\frac {\omega} {4\omega'}} e^{-\ti(\bm{k}-\bm{k}')\cdot \bm{x}}+ \sqrt{\frac {\omega'} {4\omega}} e^{\ti(\bm{k}-\bm{k}')\cdot \bm{x}} \Big\} \\
&=2 \sqrt{\frac {\omega_{|\bm{k}|}} {4\omega_{|\bm{k}'|}}}\delta^3(\bm{k}-\bm{k}')\\
&=\delta^3(\bm{k}-\bm{k}')
\end{aligned}$$</div>

{{%/fold%}}

With this result and the hold-order discussion in Classical theory, we can write the Hamiltonian as:

<div>$$\hat H =\frac 1 2 \int \td^3\bm{k} \ \omega_{|\bm{k}|} \big(a(\bm{k})^\dagger a(\bm{k})+a(\bm{k})a(\bm{k})^\dagger\big)=E_0+\int \td^3 \bm{k} \ \omega_{|\bm{k}|} a(\bm{k})^\dagger a(\bm{k})$$</div>

Where `$E_0=\frac 1 2 \int\td^3\bm{k} \ \omega_{|\bm{k}|}\delta(0)$`. This is a `$\infty$` quantity. But it will not bother us if we admit that the absolute value of energy is non-measurable. But the relative value is work.

<mark> But in General Relativistic theory, the energy value will influence the space-time structure. This argument will not work at that situation.</mark>

With this argument, we can simply write the Hamiltonian as:

<div>$$\hat H= \int \td^3 \bm{k} \ \omega_{|\bm{k}|} a(\bm{k})^\dagger a(\bm{k})$$</div>

One can also write these operators in `Heisenberg Picture` :

<div>$$\begin{aligned}
\phi(x)&=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \Big\{ e^{-\ti k_\mu x^\mu} a(\bm{k})+e^{\ti k_\mu x^\mu} a(\bm{k})^{\dagger} \Big\} \\
\pi(x)&=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac {\ti \omega_{|\bm{k}|}} {\sqrt{2\omega_{|\bm{k}|}}} \Big\{ -e^{-\ti k_\mu x^\mu} a(\bm{k})+e^{\ti k_\mu x^\mu} a(\bm{k})^{\dagger} \Big\} \\
\end{aligned}$$</div>

{{%fold "Proof"%}}

With the commutator of `$a,a^\dagger$` and `$\hat H$`:

<div>$$\begin{aligned}[]
[a(\bm{k}),\hat H]&=\omega_{|\bm{k}|} a(\bm{k}) \\
[a(\bm{k})^\dagger,\hat H]&=-\omega_{|\bm{k}|} a(\bm{k})^\dagger
\end{aligned}$$</div>

Noting that `$\hat H$` is independent of time, we have:

<div>$$\begin{aligned}
a_H(\bm{k}) &=e^{\ti t\hat H} a(\bm{k}) e^{-\ti t \hat H}=e^{-\ti \omega_{|\bm{k}|} t} a(\bm{k}) \\
a_H(\bm{k})^\dagger &= e^{\ti \omega_{|\bm{k}|} t} a(\bm{k})^\dagger
\end{aligned}$$</div>

That is, in Heisenberg Picture, the operators which is dependent of time:

<div>$$\begin{aligned}
\phi(x)&=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \Big\{ e^{-\ti k_\mu x^\mu} a(\bm{k})+e^{\ti k_\mu x^\mu} a(\bm{k})^{\dagger} \Big\} \\
\pi(x)&=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac {\ti \omega_{|\bm{k}|}} {\sqrt{2\omega_{|\bm{k}|}}} \Big\{ -e^{-\ti k_\mu x^\mu} a(\bm{k})+e^{\ti k_\mu x^\mu} a(\bm{k})^{\dagger} \Big\} \\
\end{aligned}$$</div>

{{%/fold%}}

## Hilbert Space of Scalar Field

The Hamiltonian of Real-valued Scalar Field is the same as the Hamiltonian of a set of non-interaction harmonic oscillators. Then we can construct the `Hilbert space` by the `ground state` and `creation/annihilation operators`. This is also called as `Fock space`.

_[Definition]_ : `vacuum of the Klein-Gordon Field` is the ground state of Scalar Field. Usually denote it as `$\ket{0}$` , and it is zero if annihilation operator acts on it:

<div>$$a(\bm{k}) \ket{0}=0 \ ; \ \forall \bm{k}$$</div>

Assume that it is normalized as `$\bra{0}0\rangle=1$` . Then the energy of vacuum is zero: `$\bra{0}\hat H\ket{0}=0$`.

_[Definition]_ : `1-particle` state is proportional to a creation operator acting on vacuum. Usually denote it as `$\ket{\bm{k}}$` :

<div>$$\ket{\bm{k}} = \sqrt{2\omega_{|\bm{k}|}} a(\bm{k})^\dagger \ket{0}$$</div>

And the orthonormal relation is:

<div>$$\bra{\bm{k}}\bm{k}'\rangle = 2\omega_{|\bm{k}|} \delta^3(\bm{k}-\bm{k}')$$</div>

One can prove that under the Lorentz Transformation that leads `$\Lambda_{\bm{k}\rightarrow \bm{0}} k=(m,0,0,0)$`, one has

<div>$$\bra{\Lambda_{\bm{k}\rightarrow \bm{0}} \bm{k}} \Lambda_{\bm{k}\rightarrow \bm{0}} \bm{k}'\rangle = \bra{\bm{k}}\bm{k}'\rangle$$</div>

in this degree we say this quantity is invariant under Lorentz transformation.

And the `complete relation` in `1-particle` subspace:

<div>$$1_{\text{one-particle}}=\int \frac {\td^3\bm{k}} {2\omega_{|\bm{k}|}} \ket{\bm{k}}\bra{\bm{k}}$$</div>

Where `$\int \td^3\bm{p} (2\omega_{|\bm{p}|})^{-1}=\int_{p^0\gt 0} \td^4p \  \delta(p^\mu p_\mu-m^2)$` is covariant measure.

{{%fold "Proof"%}}

Consider
<div>$$\begin{aligned}
\bra{\bm{k}}\bm{p}\rangle &= 2\omega_{|\bm{k}|} \delta^3(\bm{k}-\bm{p}) \\
&=2\sqrt{m^2+|\bm{k}|^2}\delta(k^1-p^1)\delta(k^2-p^2)\delta(k^3-p^3)
\end{aligned}$$</div>

Consider Lorentz transform acting on `$\bm{k},\bm{p}$` :

<div>$$\begin{aligned}
\bra{\Lambda\bm{k}}\Lambda \bm{p}\rangle &= 2\sqrt{m^2+|\Lambda \bm{k}|^2}\prod_i\delta(\Lambda^i_{\indent \mu}(k^\mu - p^\mu)) \\
&=2\frac {|\Lambda^0_{\indent \mu}k^\mu|} {|\text{det}J|} \prod_i \delta(k^i-p^i)
\end{aligned}$$</div>

Where `$\Lambda \bm{k}$` means the spatial components of `$\Lambda(\omega_{|\bm{k}|},\bm{k})$` . And:

<div>$$\begin{aligned}
\det J &= \det\Big[ \frac {\partial} {\partial k^j}\Big(\Lambda^i_{\indent 0}(\sqrt{m^2+|\bm{k}|^2})-p_0)+\Lambda^i_{\indent l} (k^l-p^l)\Big)\Big] \\
&=\det\Big[\Lambda^i_{\indent 0} \frac {k^j} {\sqrt{m^2+|\bm{k}|^2}}+\Lambda^i_{\indent j} \Big] \\
&=\det \begin{bmatrix}\Lambda^1_{\indent 1}+\Lambda^1_{\indent 0} k^1/k^0 & \Lambda^1_{\indent 2}+\Lambda^1_{\indent 0} k^2/k^0 & \Lambda^1_{\indent 3}+\Lambda^1_{\indent 0} k^3/k^0 \\
\Lambda^2_{\indent 1}+\Lambda^2_{\indent 0} k^1/k^0 & \Lambda^2_{\indent 2}+\Lambda^2_{\indent 0} k^2/k^0 & \Lambda^2_{\indent 3}+\Lambda^2_{\indent 0} k^3/k^0 \\
\Lambda^3_{\indent 1}+\Lambda^3_{\indent 0} k^1/k^0 & \Lambda^3_{\indent 2}+\Lambda^3_{\indent 0} k^2/k^0 & \Lambda^3_{\indent 3}+\Lambda^3_{\indent 0} k^3/k^0 \end{bmatrix} \\
&=\det \Lambda'_0+\frac {k^1} {k^0} \det \Lambda'_1-\frac {k^2} {k^0}\det \Lambda'_2 +\frac {k^3} {k^0}\det \Lambda'_3 \\
&=\frac 1 {k^0}\sum_{\mu=0}^3 (-1)^{\mu}k_\mu \det \Lambda'_\mu
\end{aligned}$$</div>

Where `$\det \Lambda'_\mu$` are determinants of minors of `$\Lambda$` with cancelling `$0$`-row-`$\mu$`-column. That is:

<div>$$\det \Lambda =\sum_{\mu=0}^3 (-1)^\mu \Lambda^0_{\indent \mu} \det \Lambda'_\mu $$</div>

For `$k_\mu= m \Lambda^0_{\indent \mu}$` , we have that: `$\Lambda^0_{\indent \mu}k^\mu = m \Lambda^0_{\indent \mu} \Lambda^{0\mu}=m\Lambda^0_{\indent \mu} \Lambda_0^{\indent \mu}=m\delta_0^0=m$` , which means that in this case: `$\Lambda k=(m,0,0,0)$` . And `$\det J=\frac m {k^0}\det \Lambda=m/k^0$`

That means under this special Lorentz Transformation: `$\Lambda_{\bm{k}\rightarrow \bm{0}} (\sqrt{m^2+\bm{k}^2},k^1,k^2,k^3) =(m,0,0,0)$` :

<div>$$\langle\Lambda_{\bm{k}\rightarrow \bm{0}} \bm{k}|\Lambda_{\bm{k}\rightarrow \bm{0}}\bm{p}\rangle =2k^0 \prod_i \delta(k^i-p^i)=\bra{\bm{k}}\bm{p}\rangle $$</div>

q.e.d.

Consider the integral:

<div>$$\begin{aligned}
\int \td^4 p \  \delta(p^\mu p_\mu-m^2) f(p)&=\int \td^3 \bm{p} \int \td p^0 \ \delta\Big((p^0)^2-m^2-|\bm{p}|^2\Big)f(p^0,\bm{p}) \\
&=\int \td^3 \bm{p} \frac {f(p^0=\sqrt{m^2+|\bm{p}|^2},\bm{p})} {2\sqrt{m^2+|\bm{p}|^2}} + \int \td^3 \bm{p} \frac {f(p^0=-\sqrt{m^2+|\bm{p}|^2},\bm{p})} {2\sqrt{m^2+|\bm{p}|^2}} \\
&=\int \frac {\td^3 \bm{p}} {2\omega_{|\bm{p}|}} \tilde{f}(\bm{p})
\end{aligned}$$</div>

Where:

<div>$$\tilde{f}(\bm{p})=f(p^0=\omega_{|\bm{p}|},\bm{p})+f(p^0=-\omega_{|\bm{p}|},\bm{p})$$</div>

If `$f$` is independent of `$p^0$` , it is simply `$\tilde{f}=2f$`.

In this case, we can write down the equality of integral measure:

<div>$$\int \frac {\td^3 \bm{p}} {2\omega_{|\bm{p}|}}=\frac 1 2\int \td^4 p \ \delta(p^\mu p_\mu -m^2)=\int_{p^0\gt 0} \td^4 p \ \delta(p^\mu p_\mu -m^2)$$</div>

The right-hand-side of the equality is obvious invariant under (Orthochronous) Lorentz Transformation.

{{%/fold%}}

In Fock space, the Lorentz transformation for coordinates induces the Unitary transformation for operators (In finite-dimensional space Lorentz group has no unitary representation because it is not `tight`. But Fock space is infinite-dimensional.).

_[Definition]_ : Consider the coordinate transformation(`special Lorentz Transformation`) `$x\rightarrow x'=\Lambda x$` , the corresponding operator on Hilbert space is `$U(\Lambda)$` , then we have:

<div>$$U(\Lambda)\ket{\bm{k}}=\ket{\Lambda \bm{k}}$$</div>

The vacuum is unique: `$U(\Lambda)\ket{0}=\ket{0}$` . And the creation operator:

<div>$$U(\Lambda) a(\bm{k})^\dagger U(\Lambda)^{-1} = \sqrt {\frac {\omega_{|\Lambda \bm{k}|}} {\omega_{|\bm{k}|}}} a(\Lambda \bm{k})^\dagger$$</div>

Same for annihilation operator. And one can check that the field operator will be:

<div>$$\phi'(x'=\Lambda x)\equiv U(\Lambda)\phi(x)U(\Lambda)^{-1} = \phi(x'=\Lambda x)$$</div>

{{%fold "Proof"%}}

For the field operator:

<div>$$\phi(x)=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \Big\{ e^{-\ti k_\mu x^\mu} a(\bm{k})+e^{\ti k_\mu x^\mu} a(\bm{k})^{\dagger} \Big\}$$</div>

We have:

<div>$$\begin{aligned}
U(\Lambda)\phi(x)U(\Lambda)^{-1}&=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac {\sqrt{2\omega_{|\Lambda \bm{k}|}}} {2\omega_{|\bm{k}|}} \Big\{ e^{-\ti k_\mu x^\mu} a(\Lambda\bm{k})+e^{\ti k_\mu x^\mu} a(\Lambda\bm{k})^{\dagger} \Big\} \\
&=\int \frac {\td^3 \Lambda\bm{k}} {(2\pi)^{3/2}} \frac {\sqrt{2\omega_{|\Lambda \bm{k}|}}} {2\omega_{|\Lambda\bm{k}|}} \Big\{ e^{-\ti k_\mu x^\mu} a(\Lambda\bm{k})+e^{\ti k_\mu x^\mu} a(\Lambda\bm{k})^{\dagger} \Big\} \\
&=\phi(x'=\Lambda x)
\end{aligned}$$</div>

Where we used `$k_\mu x^\mu = (\Lambda k)_\mu (\Lambda x)^\mu$` , and the covariant of the integral measure:

<div>$$\int \frac {\td^3 \bm{k}} {2\omega_{|\bm{k}|}}$$</div>

together with that `$\Lambda$` is the special Lorentz Transformation.

{{%/fold%}}

For general cases, if `$\Lambda$` is a general Lorentz Transformation, this conclusion works for operators in Schrodinger equation for they are independent of time, or equivalently, the zero-component of `$k$` :

<div>$$\phi'(\bm{x}'=\Lambda \bm{x})\equiv U(\Lambda)\phi(\bm{x})U(\Lambda)^{-1} = \phi(\bm{x}'=\Lambda \bm{x})$$</div>

{{%fold "Some discussion about this and the classical form"%}}

This seems to violate the transformation regulation in Classical theory which is:

<div>$$\psi(x)\rightarrow \psi'(x'=\Lambda_{\text{spacetime}}(\omega)x) = \big(\Lambda_{\text{Field}}(\omega)\psi\big)(x=\Lambda_{\text{spacetime}}(\omega)^{-1}x') $$</div>

But actually not. Here we use the field operator `$\phi$` to create or annihilate at some spacetime point. But in classical theory we discussed that the coordinate transform with a `fixed` field. Like the passive transformation & active transformation, they are just mutually inverse.

We will see this at spinor and vector field, in which the inverse relationship will be much more clear. For the `$\Lambda_{\text{Field}}$` in those cases are inversion too.

{{%/fold%}}

## Causality of Scalar Field

Our quantization will not violent to the causality demanded by special Relativistic Theory. That is to say:

_[Theorem]_ : In Heisenberg Picture, for any two point `$x,y$` with spacelike interval: `$\|x-y\|^2\lt 0$` . Then the field operators are commutable:

<div>$$[\phi(x),\phi(y)]=0 \ ; \ \|x-y\|^2\lt 0$$</div>

{{%fold "Proof"%}}

With the quantization that `$[a(\bm{k}),a(\bm{k}')^\dagger]=\delta^3(\bm{k}-\bm{k}')$` . we have:

<div>$$\begin{aligned}[]
[\phi(x),\phi(y)]&= \int \frac {\td^3 \bm{k}_1\td^3 \bm{k}_2} {(2\pi)^{3} \sqrt{4\omega_1\omega_2}}\Big\{[a(\bm{k}_1),a(\bm{k}_2)^\dagger]e^{-\ti k_1\cdot x+\ti k_2\cdot y}+[a(\bm{k}_1)^\dagger,a(\bm{k}_2)]e^{\ti k_1\cdot x-\ti k_2\cdot y} \Big\} \\
&=\int \frac {\td^3 \bm{k}} {(2\pi)^3 2\omega_{|\bm{k}|}}\big(e^{-\ti k\cdot (x-y)}-e^{\ti k\cdot (x-y)} \big) \\
& \equiv \ti \Delta(x-y)
\end{aligned}$$</div>

One can rewrite the integral as a covariant form:

<div>$$\ti \Delta(x-y)=\int \frac {\td^4 k} {(2\pi)^3} \delta(k^\mu k_\mu-m^2)\Theta(k^0)\big(e^{-\ti k\cdot (x-y)}-e^{\ti k\cdot (x-y)}\big)$$</div>

For `$x-y$` is a spacelike vector, we can always find a Lorentz Transformation so that `$\ti\Delta(x-y)=f(\bm{x}-\bm{y})$` . Then:

<div>$$f(\bm{x})=\int \frac {\td^4 k} {(2\pi)^3} \delta(k^\mu k_\mu-m^2)\Theta(k^0)\big(e^{-\ti \bm{k}\cdot \bm{x}}-e^{\ti \bm{k}\cdot \bm{x}}\big)=0$$</div>

which can be easily find by transform the parameter `$\bm{k}\rightarrow -\bm{k}$` .

q.e.d.

{{%/fold%}}

## Complex-valued Scalar Field

We write down the conclusion about `complex-valued Scalar Field` here. The derivation is similar to the real-valued case. But we need two kinds of creation operator corresponding to the internal degrees of freedom of Complex-valued Scalar Field:

The field operator in Heisenberg Picture:

<div>$$\phi(x) = \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}2\omega_{|\bm{k}|}} \Big\{e^{-\ti k\cdot x} a_+(\bm{k}) + e^{\ti k\cdot x} a_-(\bm{k})^\dagger \Big\}$$</div>

Where `$k\cdot x=k_\mu x^\mu$` . And the Hamiltonian:

<div>$$\hat H=\int \td^3 \bm{k} \  \omega_{|\bm{k}|} \big(a_+(\bm{k})^\dagger a_+(\bm{k})+a_-(\bm{k})^\dagger a_-(\bm{k}) \big)$$</div>

And the commutation relationship:

<div>$$\begin{aligned}[]
[a_+(\bm{k}),a_+(\bm{k}')] &= [a_+(\bm{k})^\dagger,a_+(\bm{k}')^\dagger]=0 \\
[a_-(\bm{k}),a_-(\bm{k}')] &= [a_-(\bm{k})^\dagger,a_-(\bm{k}')^\dagger]=0 \\
[a_+(\bm{k}),a_-(\bm{k}')] &= [a_+(\bm{k})^\dagger,a_-(\bm{k}')^\dagger]=0\\
[a_+(\bm{k}),a_+(\bm{k}')^\dagger]&=[a_-(\bm{k}),a_-(\bm{k}')^\dagger]=\delta^3(\bm{k}-\bm{k}')
\end{aligned}$$</div>

The conserved charge:

<div>$$Q=\int\td^3 \bm{k} \ \big(a_+(\bm{k})^\dagger a_+(\bm{k})-a_-(\bm{k})^\dagger a_-(\bm{k}) \big) = \sum_{\bm{k}} \big(N_{\bm{k}}^+-N_{\bm{k}}^-\big)$$</div>

# Propagator of Scalar Field

_[Definition]_ : `Feynman Propagator` or `two-point time-ordered Green's Function` of Scalar Field is defined as :

<div>$$\ti \Delta_F(x-y):=\bra{0}\mathcal{T}\{\phi(x)\phi(y)^\dagger\}\ket{0} $$</div>

Here the time-ordered product (`for bosonic operators`) is:

<div>$$\mathcal{T}\{A(x)B(y)\}=\Theta(x^0-y^0)A(x)B(y)+\Theta(y^0-x^0)B(y)A(x)$$</div>

One can compute the propagator:

<div>$$\ti \Delta_F(x-y)=\int \frac {\td^4 p} {(2\pi)^4} e^{-\ti p\cdot (x-y)} \frac {\ti} {p_\mu p^\mu-m^2+\ti \epsilon}$$</div>

Where `$\epsilon\rightarrow 0^+$` .

{{%fold "Proof"%}}

We compute these two terms in time-ordered product:

<div>$$\begin{aligned}
\bra{0}\phi(x)\phi(y)^\dagger\ket{0}&= \int \frac {\td^3 \bm{k}_1 \td^3 \bm{k}_2} {(2\pi)^3 \sqrt{4\omega_1\omega_2}}e^{-\ti k_2\cdot x+\ti k_1\cdot y} \bra{0}a(\bm{k}_2)a(\bm{k}_1)^\dagger \ket{0}  \\
&=\int \frac {\td^3 \bm{k}} {(2\pi)^3 2\omega_{|\bm{k}|}} e^{-\ti k\cdot (x-y)} \\
\bra{0}\phi(y)^\dagger\phi(x)\ket{0}&=\int \frac {\td^3 \bm{k}_1 \td^3 \bm{k}_2} {(2\pi)^3 \sqrt{4\omega_1\omega_2}}e^{-\ti k_2\cdot y+\ti k_1\cdot x} \bra{0}a(\bm{k}_2)a(\bm{k}_1)^\dagger \ket{0}  \\
&=\int \frac {\td^3 \bm{k}} {(2\pi)^3 2\omega_{|\bm{k}|}} e^{\ti k\cdot (x-y)} \\
\end{aligned}$$</div>

Then we have:

<div>$$\ti \Delta_F(x-y)=\int \frac {\td^3 \bm{p}} {(2\pi)^3 2\omega_{|\bm{p}|}} \Big\{\Theta(x^0-y^0)e^{-\ti p\cdot (x-y)} + \Theta(y^0-x^0)e^{\ti p\cdot (x-y)} \Big\}$$</div>

Then we consider the integral:

<div>$$\begin{aligned}
\int \frac {\td^4 p} {(2\pi)^4} e^{-\ti p\cdot x} \frac {\ti} {p_\mu p^\mu-m^2+\ti \epsilon}&=\int \frac {\td^3\bm{p}} {(2\pi)^4} \int \td p^0 \frac {\ti e^{-\ti p\cdot x}} {(p^0-\omega_{|\bm{p}|}+\ti \epsilon)(p^0+\omega_{|\bm{p}|}-\ti \epsilon)}
\end{aligned}$$</div>

If `$x^0\lt 0$` , the Jordon's Lemma allow us to use the upper half plane. Then the pole is `$-\omega_{|\bm{p}|}+\ti \epsilon$` , we have:

<div>$$\text{integral} =2\pi \ti \int \frac {\td^3 \bm{p}} {(2\pi)^4} \frac {\ti e^{\ti \omega_{|\bm{p}|}x^0+\ti \bm{p}\cdot \bm{x}}} {-2\omega_{|\bm{p}|}}=\int \frac {\td^3 \bm{p}} {(2\pi)^3 2\omega_{|\bm{p}|}} e^{\ti \omega_{|\bm{p}|}x^0 - \ti \bm{p}\cdot \bm{x}} = \int \frac {\td^3 \bm{p}} {(2\pi)^3 2\omega_{|\bm{p}|}} e^{\ti p\cdot x } $$</div>

And if `$x^0\gt 0$` , we can only use the lower half plane. Then the pole is `$\omega_{|\bm{p}|}-\ti \epsilon$` , we have:

<div>$$\text{integral} =-2\pi \ti \int \frac {\td^3 \bm{p}} {(2\pi)^4} \frac {\ti e^{-\ti \omega_{|\bm{p}|}x^0+\ti \bm{p}\cdot \bm{x}}} {2\omega_{|\bm{p}|}}=\int \frac {\td^3 \bm{p}} {(2\pi)^3 2\omega_{|\bm{p}|}} e^{-\ti \omega_{|\bm{p}|}x^0 + \ti \bm{p}\cdot \bm{x}} = \int \frac {\td^3 \bm{p}} {(2\pi)^3 2\omega_{|\bm{p}|}} e^{-\ti p\cdot x } $$</div>

That is :

<div>$$\int \frac {\td^4 p} {(2\pi)^4} e^{-\ti p\cdot x} \frac {\ti} {p_\mu p^\mu-m^2+\ti \epsilon}=\int \frac {\td^3 \bm{p}} {(2\pi)^3 2\omega_{|\bm{p}|}} \Big\{\Theta(x^0-y^0)e^{-\ti p\cdot (x-y)} + \Theta(y^0-x^0)e^{\ti p\cdot (x-y)} \Big\}$$</div>

Or equivalently:

<div>$$\ti \Delta_F(x-y) = \int \frac {\td^4 p} {(2\pi)^4} e^{-\ti p\cdot (x-y)} \frac {\ti} {p_\mu p^\mu-m^2+\ti \epsilon}$$</div>

{{%/fold%}}

# Discrete Symmetry of Scalar Field

## Spatial Inversion

We hope the `spatial inversion` induces a unitary operator so as to:

<div>$$U_P \phi(x^0,\bm{x})U_P^{-1}= e^{\ti \theta_P} \phi(x^0,-\bm{x})$$</div>

Where `$e^{\ti\theta_P}$` is a phase-factor. And `$U_P\ket{0}=\ket{0}$` .

For creation operators:

<div>$$U_P a_+(\bm{p})U_P^{-1}=e^{\ti \theta_P} a_+(-\bm{p}) \ ; \ U_P a_-(\bm{p})^\dagger U_P^{-1}=e^{\ti \theta_P} a_-(-\bm{p})^\dagger$$</div>

For complex-valued Klein-Gordon Field, `$\theta_P$` has no physical meaning. But for real-valued Klein-Gordon Field, `$e^{\ti \theta_P}=\pm 1$`, denoting the particle's internal parity.

We can also represent `$U_P$` by creation/annihilation operators:

<div>$$U_P=\exp\Bigg\{\ti \frac {\pi} 2 \int \td^3 \bm{k} \Big(a_+(\bm{k})^\dagger a_+(-\bm{k})+a_-(\bm{k})^\dagger a_-(-\bm{k}) - e^{\ti \theta}\big(a_+(\bm{k})^\dagger a_+(\bm{k})+a_-(\bm{k})^\dagger a_-(\bm{k})\big) \Big) \Bigg\}$$</div>

## Charge Conjugation

We hope the `charge conjugation` induces a unitary operator so as to:

<div>$$U_C \phi(x)U_C^{-1}=e^{\ti \theta_C}\phi(x)^\dagger$$</div>

Where `$e^{\ti\theta_C}$` is a phase-factor, and also is unmeasurable for complex-valued field. For real-valued Klein-Gordon Field `$e^{\ti \theta_C}=\pm 1$` .

And for creation operators:

<div>$$U_C a_+(\bm{p})U_C^{-1}=e^{\ti \theta_C} a_-(\bm{p}) \ ; \ U_C a_-(\bm{p})^\dagger U_C^{-1}=e^{\ti \theta_C} a_+(\bm{p})^\dagger$$</div>

## Time Reversal

`Time reversal` induces an anti-unitary operator. With conjugation operator `$K$` we can write it as `$U_T K$` , where `$U_T$` is a unitary operator:

<div>$$(U_T K) \phi(x^0,\bm{x})(U_T K)^{-1} = e^{\ti \theta_T} \phi(-x^0,\bm{x})$$</div>

And for creation operators:

<div>$$(U_T K) a_+(\bm{k})(U_T K)^{-1} = e^{\ti \theta_T} a_+(-\bm{k}) \ ; \ (U_T K) a_-(\bm{k})(U_T K)^{-1} = e^{-\ti \theta_T} a_-(-\bm{k})$$</div>
