---
title: "Quantization of Free Field: Dirac Field"
date: 2018-12-23T16:27:27+08:00
draft: false
tags: ["classical-theory"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
summary: "The canonical quantization of Spinor Field(Dirac Field). One can find that the usual quantization procedure(canonical commutation relationship) does not work for it, because it leads to the Hamiltonian with no lower bound. To quantize it correctly, we need modify it as the anti-commutation relationship, which means that Dirac particles are Fermions. Then we will computation of propagator and do some discussion. At last we will discuss the discrete symmetry of Dirac Field in Quantum Theory"
---

# Quantization of Dirac Field

## Canonical Quantization of Dirac Spinor Field

The Hamiltonian of Dirac Spinor Field is:

<div>$$H = \int \td^3 \bm{x} \Big\{-\sum_{i=1}^3 \ti \bar{\psi}\gamma^i \partial_i \psi + m \bar{\psi}\psi \Big\}$$</div>

Where the `$\psi$` should be a 4-component-Dirac-spinor. And the `canonical momentum` is `$\pi=\ti \bar{\psi}\gamma^0=\ti\psi^\dagger$` . Then with the `anti-commutation relationship` we need:

<div>$$\{\pi_\alpha (\bm{x}),\pi_\beta(\bm{x}')\}=\{\psi_\alpha(\bm{x}),\psi_\beta(\bm{x}')\}=0 \ ; \ \{\psi_\alpha(\bm{x}),\pi_\beta(\bm{x}')\}=\ti \delta_{\alpha\beta}\delta^3(\bm{x}-\bm{x}')$$</div>

Which means that:

<div>$$\begin{aligned}[]
\{\psi_\alpha(\bm{x}),\psi_\beta(\bm{x}')\}&=0 \\
\{\psi_\alpha(\bm{x}),\psi_\beta(\bm{x}')^\dagger\}&=\delta_{\alpha\beta}\delta^3(\bm{x}-\bm{x}')
\end{aligned}$$</div>

One can rewrite them into the plane wave expansion. In Schrodinger Picture:

<div>$$\psi(\bm{x})=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2}\Big(e^{\ti \bm{k}\cdot \bm{x}} u^{(s)}(\bm{k}) a(\bm{k},s)+e^{-\ti \bm{k}\cdot \bm{x}} v^{(s)}(\bm{k}) b(\bm{k},s)^\dagger \Big)$$</div>

Where `$a,b$` are operators, and `$\omega_{|\bm{k}|}=\sqrt{m^2+|\bm{k}|^2}$` . Spinors:

<div>$$u^{(s)}(\bm{k})=\frac {m+k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} \chi^{(s)} \\ \chi^{(s)}\end{bmatrix} \ ; \ v^{(s)}(\bm{k})=\frac {m-k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix}$$</div>

With the 2-component quantities `$\chi,\xi$` satisfy `$\chi^{(r)\dagger}\chi^{(s)}=\xi^{(r)\dagger}\xi^{(s)}=\delta_r^s m$` .

We can write the inverse transform, which will represent `$a,b$` by `$\psi,\psi^\dagger$` :

<div>$$\begin{aligned}
a(\bm{k},s)&= \frac 1 {\sqrt{2\omega_{|\bm{k}|}}}  \int \frac {\td^3 \bm{x}} {(2\pi)^{3/2}} e^{-\ti \bm{k}\cdot \bm{x}} u^{(s)\dagger}(\bm{k}) \psi(\bm{x}) \\
b(\bm{k},s)&= \frac 1 {\sqrt{2\omega_{|\bm{k}|}}}  \int \frac {\td^3 \bm{x}} {(2\pi)^{3/2}} e^{-\ti\bm{k}\cdot \bm{x}}\psi (\bm{x})^\dagger v^{(s)}(\bm{k})
\end{aligned}$$</div>

And their commutation relation:

<div>$$\begin{aligned}
\{a(\bm{k},s),b(\bm{k}',s')\}&=\{a(\bm{k},s)^\dagger,b(\bm{k}',s')^\dagger\}=0 \\
\{a(\bm{k},s),a(\bm{k}',s')\}&=\{b(\bm{k},s),b(\bm{k}',s')\}=0 \\
\{a(\bm{k},s),b(\bm{k}',s')^\dagger\}&=\{a(\bm{k},s)^\dagger,b(\bm{k}',s')\}=0 \\
\{a(\bm{k},s),a(\bm{k}',s')^\dagger\}&=\{b(\bm{k},s),b(\bm{k}',s')\}=\delta^{s,s'}\delta^3(\bm{k}-\bm{k}')
\end{aligned}$$</div>

{{%fold "Proof"%}}

Using the 3-d delta function: `$\delta^3(\bm{x}-\bm{y})=\int \frac {\td^3 \bm{k}} {(2\pi)^3} e^{\ti \bm{k}\cdot (\bm{x}-\bm{y})}$`, we have:

<div>$$\begin{aligned}
\frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \sum_{s=1,2} \Big(u^{(s)}(\bm{k})a(\bm{k},s)+v^{(s)}(-\bm{k})b(-\bm{k},s)^\dagger\Big)&= \int \frac {\td^3 \bm{x}} {(2\pi)^{3/2}} e^{-\ti \bm{k}\cdot \bm{x}} \psi(\bm{x}) \\
\frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \sum_{s=1,2} \Big(u^{(s)}(-\bm{k})^\dagger a(-\bm{k},s)^\dagger +v^{(s)}(\bm{k})^\dagger b(\bm{k},s)\Big)&= \int \frac {\td^3 \bm{x}} {(2\pi)^{3/2}} e^{-\ti \bm{k}\cdot \bm{x}} \psi(\bm{x})^\dagger
\end{aligned}$$</div>

With the orthogonal property of `$u,v$`:

<div>$$\begin{aligned}
u^{(s')\dagger}(\bm{k})u^{(s)}(\bm{k})&=\bar{u}^{(s')}(\bm{k})\gamma^0 u^{(s)}(\bm{k}) =2 k^0 \delta^{s,s'} \\
v^{(s')\dagger}(\bm{k})v^{(s)}(\bm{k})&=\bar{v}^{(s')}(\bm{k})\gamma^0 v^{(s)}(\bm{k}) =2 k^0 \delta^{s,s'}
\end{aligned}$$</div>

And using that `$(m+k_\mu \gamma^\mu)^{\dagger}=(m+(k^0,-\bm{k})\cdot \gamma)$` and `$(m+k_\mu \gamma^\mu)(m-k_\mu \gamma^\mu)=0$` , one can prove that:

<div>$$u^{(s')\dagger}(\bm{k})v^{(s)}(-\bm{k})=0$$</div>

Then noting that `$\gamma$` matrices and spinors  are commutable to operators `$a,b$`, we can write down:

<div>$$\begin{aligned}
a(\bm{k},s)&= \frac 1 {\sqrt{2\omega_{|\bm{k}|}}}  \int \frac {\td^3 \bm{x}} {(2\pi)^{3/2}} e^{-\ti \bm{k}\cdot \bm{x}} u^{(s)\dagger}(\bm{k}) \psi(\bm{x}) \\
b(\bm{k},s)&= \frac 1 {\sqrt{2\omega_{|\bm{k}|}}}  \int \frac {\td^3 \bm{x}} {(2\pi)^{3/2}} e^{-\ti\bm{k}\cdot \bm{x}}\psi (\bm{x})^\dagger v^{(s)}(\bm{k})
\end{aligned}$$</div>

Then we can check the commutation relationship. Obviously:

<div>$$\begin{aligned}[]
\{a(\bm{k},s),a(\bm{k}',s')\}&=\{b(\bm{k},s),b(\bm{k}',s')\}=0 \\
\{a(\bm{k},s),b(\bm{k}',s')^\dagger\}&=\{a(\bm{k},s)^\dagger,b(\bm{k}',s')\}=0 \\
\end{aligned}$$</div>

Then:

<div>$$\begin{aligned}[]
\{a(\bm{k},s),a(\bm{k}',s')^\dagger\}&= \frac 1 {\sqrt{4\omega \omega'}} \int \frac {\td^3 \bm{x}\td^3 \bm{x}'} {(2\pi)^3} e^{-\ti \bm{k}\cdot \bm{x}+\ti \bm{k}'\cdot \bm{x}'} \{u^{(s)\dagger}(\bm{k})\psi(\bm{x}),\psi(\bm{x}')^\dagger u^{(s')}(\bm{k}')\} \\
&= \frac 1 {\sqrt{4\omega \omega'}} \int \frac {\td^3 \bm{x}\td^3 \bm{x}'} {(2\pi)^3} e^{-\ti \bm{k}\cdot \bm{x}+\ti \bm{k}'\cdot \bm{x}'} \delta^3(\bm{x}-\bm{x}') u^{(s)\dagger}(\bm{k})u^{(s')}(\bm{k}') \\
&= \frac 1 {\sqrt{4\omega \omega'}}  u^{(s)\dagger}(\bm{k})u^{(s')}(\bm{k}') \delta^3(\bm{k}-\bm{k}') \\
&=\delta^{s,s'}\delta^3(\bm{k}-\bm{k}')
\end{aligned}$$</div>

Similarly, we can prove that: `$\{b(\bm{k},s),b(\bm{k}',s')\}=\delta^{s,s'}\delta^3(\bm{k}-\bm{k}')$` . And:

<div>$$\begin{aligned}[]
\{a(\bm{k},s),b(\bm{k}',s')\}&= \frac 1 {\sqrt{4\omega \omega'}} \int \frac {\td^3 \bm{x}\td^3 \bm{x}'} {(2\pi)^3} e^{-\ti \bm{k}\cdot \bm{x}-\ti \bm{k}'\cdot \bm{x}'} \{u^{(s)\dagger}(\bm{k})\psi(\bm{x}),\psi(\bm{x}')^\dagger v^{(s')}(\bm{k}')\} \\
&=\frac 1 {\sqrt{4\omega \omega'}} \int \frac {\td^3 \bm{x}\td^3 \bm{x}'} {(2\pi)^3} e^{-\ti \bm{k}\cdot \bm{x}-\ti \bm{k}'\cdot \bm{x}'} \delta^3(\bm{x}-\bm{x}') u^{(s)\dagger}(\bm{k})v^{(s')}(\bm{k}') \\
&=\frac 1 {\sqrt{4\omega \omega'}}u^{(s)\dagger}(\bm{k})v^{(s')}(\bm{k}') \delta^3(\bm{k}+\bm{k}') \\
&=0
\end{aligned}$$</div>

q.e.d.

{{%/fold%}}

With this result and the hold-order discussion in Classical theory, we can write the Hamiltonian as:

<div>$$\hat H = \sum_s \int \td^3 \bm{k} \ \omega_{|\bm{k}|} \Big[a(\bm{k},s)^\dagger a(\bm{k},s) + b(\bm{k},s)^\dagger b(\bm{k},s) \Big]$$</div>

There is also a `$\infty$` quantity at the right-hand-side. But like what in Klein-Gordon Field, we ignore it.

{{%fold "Result with usual commutation relationship"%}}

With usual commutation relationship, we have the Hamiltonian as:

<div>$$\begin{aligned}
\hat H &= \sum_s \int \td^3 \bm{k} \omega_{|\bm{k}|} \Big[a(\bm{k},s)^\dagger a(\bm{k},s) - b(\bm{k},s) b(\bm{k},s)^\dagger \Big] \\
& \sim \sum_s \int \td^3 \bm{k} \omega_{|\bm{k}|} \Big[a(\bm{k},s)^\dagger a(\bm{k},s) - b(\bm{k},s)^\dagger b(\bm{k},s) \Big]+ \int \td^3 \bm{k} \ \omega_{|\bm{k}|}\delta^3(\bm{0})
\end{aligned}$$</div>

Even we ignore the `$\infty$` quantity, the Hamiltonian still has no lower bound, which is caused by the `negative-energy` electrons.

The anti-commutation relationship will let Hamiltonian has a lower bound. In original Dirac theory, the vacuum is defined as the state of all negative energy levels are occupied by negative-energy electrons, the anti-particle is treated as the hole in negative-energy electrons sea. Here `$b^\dagger$` will generate an anti-electron automatically.

{{%/fold%}}

And one can also write the `conserved charge` of Dirac Field:

<div>$$\hat Q =\sum_{s=1,2}\int \td^3 \bm{k} \Big(a(\bm{k},s)^\dagger a(\bm{k},s)-b(\bm{k},s)^\dagger b(\bm{k},s)\Big) $$</div>

Which shows that the particles created by `$a,b$` have `different charge`.

One can also write these operators in `Heisenberg Picture` :

<div>$$\begin{aligned}
\psi(x)&=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2}\Big(e^{-\ti k\cdot x} u^{(s)}(\bm{k}) a(\bm{k},s)+e^{\ti k\cdot x} v^{(s)}(\bm{k}) b(\bm{k},s)^\dagger \Big)\\
\bar \psi(x)&=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2}\Big(e^{\ti k\cdot x} \bar u^{(s)}(\bm{k}) a(\bm{k},s)^\dagger+e^{-\ti k\cdot x} \bar v^{(s)}(\bm{k}) b(\bm{k},s) \Big)
\end{aligned}$$</div>

{{%fold "Proof"%}}

We can also check that:

<div>$$[a(\bm{k},s),\hat H]=\omega_{|\bm{k}|}a(\bm{k}) \ ; \ [b(\bm{k},s),\hat H]=\omega_{|\bm{k}|}b(\bm{k})$$</div>

And:

<div>$$a_H(\bm{k})=e^{\ti t \hat H} a(\bm{k})e^{-\ti t \hat H} = e^{-\ti \omega_{|\bm{k}|}t} a(\bm{k})$$</div>

same for `$b$` . Then:

<div>$$\psi(x)=e^{\ti t \hat H} \psi(\bm{x})e^{-\ti t \hat H}=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2}\Big(e^{-\ti k\cdot x} u^{(s)}(\bm{k}) a(\bm{k},s)+e^{\ti k\cdot x} v^{(s)}(\bm{k}) b(\bm{k},s)^\dagger \Big)$$</div>

{{%/fold%}}

## Hilbert Space of Dirac Spinor Field

_[Definition]_ : `vacuum of the Dirac Field` is the ground state of it. Denoting it as `$\ket{0}$` , we will find:

<div>$$a(\bm{k},s)\ket{0}=b(\bm{k},s)\ket{0}=0 \ ; \ \forall \bm{k},s$$</div>

_[Definition]_ : `1-particle` state is defined as:

<div>$$\ket{\bm{k},s,\text{Fermion}} = \sqrt{2\omega_{|\bm{k}|}} a(\bm{k},s)^\dagger \ket{0}$$</div>

And `1-anti-particle` state is defined as:

<div>$$\ket{\bm{k},s,\text{anti-Fermion}} = \sqrt{2\omega_{|\bm{k}|}} b(\bm{k},s)^\dagger \ket{0}$$</div>

With this definition, we can prove(like what we did for Scalar field):

<div>$$\bra{\Lambda_{\bm{k}\rightarrow \bm{0}}\bm{k},s}\Lambda_{\bm{k}\rightarrow \bm{0}} \bm{k}',s'\rangle = \bra{\bm{k},s}\bm{k}',s'\rangle=2\omega_{|\bm{k}|}\delta^{s,s'}\delta^3(\bm{k}-\bm{k}')$$</div>

Where `$\Lambda_{\bm{k}\rightarrow 0}k=(m,0,0,0)$` only contains the boost. The behavior of spin under spatial-rotation will be discussed in following.

And the `complete relation` in `1-(anti-)particle` subspace is also:

<div>$$1_{\text{one-(anti-)particle}} = \sum_{s=1,2} \int \frac {\td^3 \bm{k}} {2\omega_{|\bm{k}|}} \ket{\bm{k},s,(\text{anti})}\bra{\bm{k},s,(\text{anti})}$$</div>

Also has the covariant integral measure:

<div>$$\int \frac {\td^3 \bm{p}} {2\omega_{|\bm{p}|}} = \int \td^4 p \delta(p_\mu p^\mu -m^2) \Theta(p^0)$$</div>

_[Definition]_ : Consider the coordinate transformation(`special Lorentz Transformation`) `$x\rightarrow x'=\Lambda(\omega) x$` , the corresponding operator on Hilbert space is `$U(\Lambda(\omega))$` , then we have:

<div>$$U(\Lambda(\omega))\ket{\bm{k},s}=\ket{\Lambda(\omega) \bm{k},s}$$</div>

The vacuum is unique `$U(\Lambda)\ket{0}=\ket{0}$` . Then:

<div>$$U(\Lambda(\omega)) a(\bm{k},s)^\dagger U(\Lambda(\omega))^{-1} = \sqrt {\frac {\omega_{|\bm{\Lambda(\omega)\bm{k}}|}} {\omega_{|\bm{k}|}} } a(\Lambda(\omega)\bm{k},s)^\dagger$$</div>

same for anti-Fermion operator `$b$`. Then one can check that the field operator will be:

<div>$$\psi'(x'=\Lambda(\omega)x) \equiv U(\Lambda(\omega))\psi(x)U(\Lambda(\omega))^{-1}=\Lambda_{1/2}(\omega)^{-1} \psi(x'=\Lambda(\omega)x)$$</div>

Where `$\Lambda_{1/2}(\omega)=\exp(-\frac \ti 4 \sum_{\mu\nu}\sigma_{\mu\nu}\omega_{\mu\nu})=\exp(-\ti\omega_{\mu\nu}S^{\mu\nu}/2)$` .

{{%fold "Proof"%}}

The proof is similar to what we did for Klein-Gordon Field. Just noting that the property of `$u,v$` :

<div>$$u^{(s)}(\bm{k})=\Lambda_{\bm{0}\rightarrow \bm{k}}\Lambda_{\bm{k}'\rightarrow \bm{0}} u^{(s)}(\bm{k}')=\Lambda_{\bm{k}'\rightarrow \bm{k}}u^{(s)}(\bm{k}')$$</div>

Same for `$v$` . Where `$\Lambda_{\bm{k}'\rightarrow \bm{k}}=\Lambda_{1/2}(\omega)$` with the `$\omega$` that satisfies `$\Lambda(\omega)\bm{k}'=\bm{k}$` .

Then:

<div>$$\begin{aligned}
U(\Lambda)\psi(x)U(\Lambda)^{-1} &= \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac {\sqrt{2\omega_{|\Lambda \bm{k}|}}} {2\omega_{|\bm{k}|}} \sum_{s=1,2}\Big(e^{-\ti k\cdot x} u^{(s)}(\bm{k}) a(\Lambda\bm{k},s)+e^{\ti k\cdot x} v^{(s)}(\bm{k}) b(\Lambda\bm{k},s)^\dagger \Big) \\
&=\Lambda_{1/2}(\omega)^{-1} \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac {\sqrt{2\omega_{|\Lambda \bm{k}|}}} {2\omega_{|\bm{k}|}} \sum_{s=1,2}\Big(e^{-\ti k\cdot x} u^{(s)}(\Lambda\bm{k}) a(\Lambda\bm{k},s)+e^{\ti k\cdot x} v^{(s)}(\Lambda\bm{k}) b(\Lambda\bm{k},s)^\dagger \Big)
\end{aligned}$$</div>

Then similarly using that `$k_\mu x^\mu=(\Lambda k)_\mu (\Lambda x)^\mu$` and the covariant integral measure, we have:

<div>$$U(\Lambda)\psi(x)U(\Lambda)^{-1}=\Lambda_{1/2}(\omega)^{-1}\psi(\Lambda x)$$</div>

{{%/fold%}}

## Causality of Dirac Field

Our quantization will not violent to the causality demanded by special Relativistic Theory. That is to say:

_[Theorem]_ : In Heisenberg Picture, for any two points `$x,y$` with spacelike interval: `$\|x-y\|^2\lt 0$`. Then the field operators are commutable:

<div>$$\{\psi_\alpha(x),\psi_\beta(y)^\dagger\}=0 \ ; \ \|x-y\|^2\lt 0$$</div>

{{%fold "Proof"%}}

With the plane wave expansion:

<div>$$\psi(x)=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}}\sqrt {\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2}\Big(e^{-\ti k\cdot x} u^{(s)}(\bm{k}) a(\bm{k},s) + e^{\ti k\cdot x} v^{(s)}(\bm{k}) b(\bm{k},s)^\dagger \Big)$$</div>

And the anti-commutation relation:

<div>$$\{a(\bm{k},s),a(\bm{k}',s')^\dagger\}=\delta^{s,s'}\delta^3 (\bm{k}-\bm{k}')$$</div>

Same for `$b$` , and vanish for all of other types. Then we have:

<div>$$\{\psi_\alpha(x),\psi_\beta(y)^\dagger\} = \int \frac {\td^3 \bm{k}} {(2\pi)^3} \frac 1 {2\omega_{|\bm{k}|}} \sum_{s=1,2} \Big(e^{-\ti k\cdot (x-y)} u^{(s)}_\alpha(\bm{k})u^{(s)}_\beta(\bm{k})^* + e^{\ti k\cdot (x-y)} v^{(s)}_\alpha(\bm{k})v^{(s)}_\beta(\bm{k})^* \Big)$$</div>

With

<div>$$\begin{aligned}
\sum_{s=1,2} u^{(s)}_\alpha(\bm{k})\bar u^{(s)}_\beta(\bm{k})&= \sum_{s=1,2} (u^{(s)}(\bm{k})\bar u^{(s)}(\bm{k}))_{\alpha\beta}=(m+k_\mu\gamma^\mu)_{\alpha\beta} \\
\sum_{s=1,2} v^{(s)}_\alpha(\bm{k})\bar v^{(s)}_\beta(\bm{k})&= \sum_{s=1,2} (v^{(s)}(\bm{k})\bar v^{(s)}(\bm{k}))_{\alpha\beta}=-(m-k_\mu\gamma^\mu)_{\alpha\beta} \\
\end{aligned}$$</div>

Then with that `$\bar x = x^\dagger \gamma^0$` , we have:

<div>$$\begin{aligned}
\sum_{s=1,2} u^{(s)}_\alpha(\bm{k}) u^{(s)}_\beta(\bm{k})^*&= \sum_{s=1,2} (u^{(s)}(\bm{k})\bar u^{(s)}(\bm{k})\gamma^0)_{\alpha\beta}=(m\gamma^0+k_\mu\gamma^\mu\gamma^0)_{\alpha\beta} \\
\sum_{s=1,2} v^{(s)}_\alpha(\bm{k}) v^{(s)}_\beta(\bm{k})^*&= \sum_{s=1,2} (v^{(s)}(\bm{k})\bar v^{(s)}(\bm{k})\gamma^0)_{\alpha\beta}=(-m\gamma^0+k_\mu\gamma^\mu\gamma^0)_{\alpha\beta} \\
\end{aligned}$$</div>

Then we have:

<div>$$\begin{aligned}
\{\psi_\alpha(x),\psi_\beta(y)^\dagger\} &= \int \frac {\td^3 \bm{k}} {(2\pi)^3} \frac 1 {2\omega_{|\bm{k}|}} \Big(e^{-\ti k\cdot (x-y)} (m\gamma^0+k_\mu\gamma^\mu \gamma^0) - e^{\ti k\cdot (x-y)} (m\gamma^0-k_\mu\gamma^\mu \gamma^0) \Big)_{\alpha\beta} \\
&=(m\gamma^0+\ti\gamma^\mu\gamma^0 \partial_{x,\mu})\int \td^4 k \ \delta(k_\mu k^\mu-m^2)\Theta(k^0)\Big(e^{-\ti k\cdot(x-y)}-e^{\ti k\cdot (x-y)}\Big)\\
&=(m\gamma^0+\ti\gamma^\mu\gamma^0 \partial_{x,\mu}) (D(x-y)-D(y-x))
\end{aligned}$$</div>

Where `$\partial_{x,\mu}=\frac {\partial} {\partial x^\mu}$` , and

<div>$$D(x)=\int \td^4 k \ \delta(k_\mu k^\mu-m^2)\Theta(k^0) e^{-\ti k_\mu x^\mu}$$</div>

Is invariant under Lorentz transform. And we have proved that when `$\|x-y\|^2\lt 0$` , we have `$D(x-y)=D(y-x)$` in the discussion of causality of Scalar field. Then we proved when `$\|x-y\|^2\lt 0$`, `$\{\psi_\alpha(x),\psi_\beta(y)^\dagger\}=0$`

q.e.d.

{{%/fold%}}

We need explain why this equality means the causality of Dirac Field. The core reason is that <mark>local measurable operators are products of even numbers of fermionic fields and their derivatives</mark> . Then the commutator of them can be written as a summation of some anti-commutator of fermionic fields' operator, like:

<div>$$[\hat A \hat B,\hat C\hat D]=\hat A\{\hat B,\hat C\}\hat D-\hat A\hat C\{\hat B,\hat D\}-\{\hat A,\hat C\}\hat D\hat B+\hat C\{\hat A,\hat D\}\hat B$$</div>

which will be zero for spacelike interval. That is to say the two local observables with spacelike interval can be measured exactly on the same system(Heisenberg's inequality) . And this is what the `causality` means.

# Propagator of Dirac Field

For `fermionic operators`, we need adjust the definition of `time-ordered product`:

<div>$$\mathcal{T}\{A(x)B(y)\}=\Theta(x^0-y^0)A(x)B(y)-\Theta(y^0-x^0)B(y)A(x)$$</div>

_[Theorem]_ the `Feynman propagator` of Dirac Field is:

<div>$$\ti \Delta_{F}(x-y)_{\alpha\beta}:=\bra{0}\mathcal{T}\{\psi_\alpha(x)\bar{\psi}_\beta(y)\}\ket{0}$$</div>

One can also write it as the matrix form:

<div>$$\ti \Delta_F(x-y)= \int \frac{\td^4 p} {(2\pi)^4} \frac {\ti (\gamma^\mu p_\mu +m)} {p_\mu p^\mu -m^2 +\ti \epsilon} e^{-\ti p\cdot (x-y)}$$</div>

{{%fold "Proof"%}}

We compute these two terms in time-ordered product:

<div>$$\begin{aligned}
\bra{0}\psi_\alpha (x)\bar{\psi}_\beta(y)\ket{0} &= \int \frac {\td^3 \bm{k}_1\td^3 \bm{k}_2} {(2\pi)^3 \sqrt{4\omega_1\omega_2}} \sum_{s_1,s_2} e^{-\ti (k_1\cdot x-k_2\cdot y)} u^{(s_1)}_\alpha(\bm{k}_1) \bar {u}^{(s_2)}_\beta(\bm{k}_2) \bra{0} a(\bm{k}_1,s_1) a(\bm{k}_2,s_2)^\dagger\ket{0} \\
&= \int \frac {\td^3 \bm{k}} {(2\pi)^3 2\omega_{|\bm{k}|}} \sum_{s=1,2} e^{-\ti k\cdot (x-y)} u_\alpha^{(s)}(\bm{k}) \bar u_\beta^{(s)}(\bm{k}) \\
&=\int \frac {\td^3 \bm{k}} {(2\pi)^3 2\omega_{|\bm{k}|}} e^{-\ti k\cdot (x-y)} (m+k_\mu \gamma^\mu)_{\alpha\beta} \\
\bra{0}\bar{\psi}_\beta(y)\psi_\alpha (x)\ket{0} &= \int \frac {\td^3 \bm{k}_1\td^3 \bm{k}_2} {(2\pi)^3 \sqrt{4\omega_1\omega_2}} \sum_{s_1,s_2} e^{-\ti (k_1\cdot y-k_2\cdot x)} \bar v^{(s_1)}_\beta(\bm{k}_1) v^{(s_2)}_\alpha(\bm{k}_2) \bra{0} b(\bm{k}_1,s_1) b(\bm{k}_2,s_2)^\dagger\ket{0} \\
&= \int \frac {\td^3 \bm{k}} {(2\pi)^3 2\omega_{|\bm{k}|}} \sum_{s=1,2} e^{\ti k\cdot (x-y)} v_\alpha^{(s)}(\bm{k}) \bar v_\beta^{(s)}(\bm{k}) \\
&=-\int \frac {\td^3 \bm{k}} {(2\pi)^3 2\omega_{|\bm{k}|}} e^{\ti k\cdot (x-y)} (m-k_\mu \gamma^\mu)_{\alpha\beta} \\
\end{aligned}$$</div>

Then we have:

<div>$$\ti \Delta_F(x-y) = \int \frac {\td^3 \bm{k}} {(2\pi)^3 2\omega_{|\bm{k}|}}\Big(e^{-\ti k\cdot (x-y)} \Theta(x^0-y^0) (m+k_\mu \gamma^\mu)  +e^{\ti k\cdot (x-y)}\Theta(y^0-x^0)(m-k_\mu\gamma^\mu)\Big)$$</div>

For the integral:

<div>$$\int \frac {\td^4 p} {(2\pi)^4} e^{-\ti p\cdot x} \frac {\ti f(p)} {p_\mu p^\mu-m^2+\ti \epsilon}=\int_{p^0=\omega_{|\bm{p}|}} \frac {\td^3 \bm{p}} {(2\pi)^3 2\omega_{|\bm{p}|}} \Big(\Theta(x^0)e^{-\ti p\cdot x}f(p^0=\omega_{|\bm{p}|},\bm{p})+\Theta(-x^0)e^{\ti p\cdot x} f(p^0=-\omega_{|\bm{p}|},-\bm{p}) \Big)$$</div>

We can write that:

<div>$$\ti \Delta_F(x-y) = \int \frac {\td^4 p} {(2\pi)^4} \frac {\ti (m+p_\mu \gamma^\mu)} {p_\mu p^\mu -m^2 +\ti \epsilon} e^{-\ti p\cdot (x-y)} $$</div>

Some times we also write it as :

<div>$$\ti \Delta_F(x-y) = \int \frac {\td^4 p} {(2\pi)^4} \frac {\ti} {\gamma^\mu p_\mu -m +\ti \epsilon} e^{-\ti p\cdot (x-y)} $$</div>

{{%/fold%}}

# Discrete Symmetry of Dirac Field

## Spatial Inversion

We hope the `spatial inversion` induces a unitary operator so as to:

<div>$$U_P \psi(x^0,\bm{x}) U_P^{-1} = A_P \psi(x^0,\bm{x})$$</div>

Where `$A_P$` is a unitary matrix in Dirac-Spinor space. This is a little different to what for Scalar field. And `$U_P\ket{0}=\ket{0}$` .

For creation operators, we demand the unitary operator of spatial inversion will cause the direction-inverse of momentum:

<div>$$U_P a(\bm{k},s) U_P^{-1} = \eta_a a(-\bm{k},s)\ ; \ U_P b(\bm{k},s) U_P^{-1} = \eta_b b(-\bm{k},s)$$</div>

Where `$\eta_a,\eta_b$` are c-numbers. If we demand all observables(even number of fermionic operators' product) invariant under two spatial inversion:

<div>$$\eta_a^2=\pm 1\ ; \ \eta_b^2 =\pm1$$</div>

In early discussion, we know that under parity-transformation, Weyl spinor will change the chirality. That means `$A_P\propto \gamma^0$` . That means we should let `$\eta_b^*=-\eta_a$` . And:

<div>$$\begin{aligned}
U_P \psi(x^0,\bm{x}) U_P^{-1} &= \eta_a \gamma^0 \psi(x^0,-\bm{x})\\
U_P \bar \psi(x^0,\bm{x}) U_P^{-1} &= \eta_a^* \psi(x^0,-\bm{x})\gamma^0
\end{aligned}$$</div>

## Charge Conjugation

We hope the `charge conjugation` induces a unitary operator which can exchange the fermion and anti-fermion:

<div>$$U_C a(\bm{k},s)U_C^{-1} = b(\bm{k},s) \ ; \ U_C b(\bm{k},s)U_C^{-1} = a(\bm{k},s)$$</div>

With the convention of `$\chi,\xi$` : `$\xi^{(s)}=(-\ti\sigma^2) (\chi^{(s)})^*$` , we can prove that:

<div>$$\begin{aligned}
U_C \psi U_C^{-1} &= -\ti (\bar{\psi}\gamma^0\gamma^2)^T \\
U_C \bar{\psi} U_C^{-1} &= (-\ti \gamma^0 \gamma^2 \psi)^T
\end{aligned}$$</div>

{{%fold "Proof"%}}

With the property of `$u,v$` :

<div>$$u^{(s)}(\bm{k})=-\ti \gamma^2\Big(v^{(s)}(\bm{k}) \Big)^* \ ; \ v^{(s)}(\bm{k})=-\ti \gamma^2 \Big(u^{(s)}(\bm{k}) \Big)^*$$</div>

we have:

<div>$$\begin{aligned}
U_C \psi U_C^{-1} &=\sum_s \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \Big(e^{-\ti k\cdot x} u^{(s)}(\bm{k}) U_C a(\bm{k},s)U_C^{-1}+e^{\ti k\cdot x} v^{(s)}(\bm{k}) U_C b(\bm{k},s)^\dagger U_C^{-1} \Big) \\
&= \sum_s\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \Big(e^{-\ti k\cdot x} u^{(s)}(\bm{k}) b(\bm{k},s)+e^{\ti k\cdot x} v^{(s)}(\bm{k}) a(\bm{k},s)^\dagger \Big) \\
&=-\ti \gamma^2\sum_s \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \Big(e^{-\ti k\cdot x} (v^{(s)})^* (\bm{k}) b(\bm{k},s)+e^{\ti k\cdot x} (u^{(s)}(\bm{k}))^* a(\bm{k},s)^\dagger \Big) \\
&=-\ti \gamma^2 \gamma^0 \bar {\psi}^T \\
&= -\ti (\bar{\psi}\gamma^0\gamma^2)^T
\end{aligned}$$</div>

Another equality's proof is similar.

{{%/fold%}}

## Time Reversal

ime reversal will induce an anti-unitary operator. With conjugation operator `$K$` we can write it as `$U_T K$` , where `$U_T$` is a unitary operator. We hope the `time reversal` will inverse the spin and momentum. Where the spin-inversion should be `$x^{(\bar s)}=-\ti \sigma^2 (x^{(s)})^*$` . Then we demand:

<div>$$U_T K a(\bm{k},s) (U_T K)^{-1} = a(-\bm{k},\bar{s}) \ ; \ U_T K b(\bm{k},s) (U_T K)^{-1} = b(-\bm{k},\bar{s})$$</div>

Where `$a(\bm{k},\bar 1)=a(\bm{k},2)\ ; \ a(\bm{k},\bar 2)=-a(\bm{k},1)$` , same for `$b$` .

Then we can prove that:

<div>$$\begin{aligned}
U_T K \psi(x^0,\bm{x}) (U_T K)^{-1} &= \gamma^1\gamma^3 \psi(-x^0,\bm{x}) \\
U_T K \bar \psi(x^0,\bm{x}) (U_T K)^{-1} &=  \bar \psi(-x^0,\bm{x}) \gamma^1\gamma^3 \\
\end{aligned}$$</div>

{{%fold "Proof"%}}

With the property of `$u,v$` :

<div>$$u^{(\bar s)}(-\bm{k})=-\gamma^1\gamma^3 \Big(u^{(s)}(\bm{k}) \Big)^* \ ; \ v^{(\bar s)}(-\bm{k})=-\gamma^1\gamma^3 \Big(v^{(s)}(\bm{k}) \Big)^*$$</div>

we have:

<div>$$\begin{aligned}
U_T K \psi(x^0,\bm{x}) (U_T K)^{-1} &=\sum_s\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}}\frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \Big((U_T K) e^{-\ti k\cdot x} u^{(s)}(\bm{k}) a(\bm{k},s)(U_T K)^{-1}\\
&\indent  + (U_T K) e^{\ti k\cdot x} v^{(s)}(\bm{k}) b(\bm{k},s)^\dagger (U_T K)^{-1} \Big) \\
&=\sum_s\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}}\frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \Big( e^{+\ti k\cdot x} u^{(s)}(\bm{k})^* a(-\bm{k},\bar{s}) +  e^{-\ti k\cdot x} v^{(s)}(\bm{k})^* b(-\bm{k},\bar{s})^\dagger \Big) \\
&=\gamma^1\gamma^3 \sum_{\bar s}\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}}\frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \Big( e^{+\ti k\cdot x} u^{(\bar s)}(-\bm{k}) a(-\bm{k},\bar{s}) +  e^{-\ti k\cdot x} v^{(\bar s)}(-\bm{k}) b(-\bm{k},\bar{s})^\dagger \Big) \\
&=\gamma^1 \gamma^3 \psi(-x^0,\bm{x})
\end{aligned}$$</div>

Noting that conjugation operator `$K$` is not commutative with complex number:

<div>$$K c = c^* K$$</div>

The proof for `$\bar \psi$` is similar.

{{%/fold%}}
