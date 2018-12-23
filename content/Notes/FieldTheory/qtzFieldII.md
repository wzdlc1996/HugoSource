---
title: "QtzFieldII"
date: 2018-12-23T16:27:27+08:00
draft: true
tags: ["classical-theory"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
summary: "The canonical quantization of Spinor Field(Dirac Field). One can find that the usual quantization procedure(canonical commutation relationship) does not work for it, because it leads to the Hamiltonian with no lower bound. To quantize it correctly, we need modify it as the anti-commutation relationship, which means that Dirac particles are Fermions. Then we will computation of propagator and do some discussion. At last we will discuss the discrete symmetry of Dirac Field in Quantum Theory"
---

# Quantization of Dirac Field

## Canonical Quantization of Dirac Spinor Field

The Hamiltonian of Dirac Spinor Field is:

$$H = \int \td^3 \bm{x} \Big\{-\sum_{i=1}^3 \ti \bar{\psi}\gamma^i \partial_i \psi + m \bar{\psi}\psi \Big\}$$

Where the \(\psi\) should be a 4-component-Dirac-spinor. And the `canonical momentum` is \(\pi=\ti \bar{\psi}\gamma^0=\ti\psi^\dagger\) . Then with the `anti-commutation relationship` we need:

$$\{\pi_\alpha (\bm{x}),\pi_\beta(\bm{x}')\}=\{\psi_\alpha(\bm{x}),\psi_\beta(\bm{x}')\}=0 \ ; \ \{\psi_\alpha(\bm{x}),\pi_\beta(\bm{x}')\}=\ti \delta_{\alpha\beta}\delta^3(\bm{x}-\bm{x}')$$

Which means that:

$$\begin{aligned}[]
\{\psi_\alpha(\bm{x}),\psi_\beta(\bm{x}')\}&=0 \\
\{\psi_\alpha(\bm{x}),\psi_\beta(\bm{x}')^\dagger\}&=\delta_{\alpha\beta}\delta^3(\bm{x}-\bm{x}')
\end{aligned}$$

One can rewrite them into the plane wave expansion. In Schrodinger Picture:

$$\psi(\bm{x})=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2}\Big(e^{\ti \bm{k}\cdot \bm{x}} u^{(s)}(\bm{k}) a(\bm{k},s)+e^{-\ti \bm{k}\cdot \bm{x}} v^{(s)}(\bm{k}) b(\bm{k},s)^\dagger \Big)$$

Where \(a,b\) are operators, and \(\omega_{|\bm{k}|}=\sqrt{m^2+|\bm{k}|^2}\) . Spinors:

$$u^{(s)}(\bm{k})=\frac {m+k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} \chi^{(s)} \\ \chi^{(s)}\end{bmatrix} \ ; \ v^{(s)}(\bm{k})=\frac {m-k_{\mu}\gamma^\mu} {\sqrt{2m(m+\omega_{|\bm{k}|})}} \begin{bmatrix} \xi^{(s)} \\ -\xi^{(s)}\end{bmatrix}$$

With the 2-component quantities \(\chi,\xi\) satisfy \(\chi^{(r)\dagger}\chi^{(s)}=\xi^{(r)\dagger}\xi^{(s)}=\delta_r^s m\) .

We can write the inverse transform, which will represent \(a,b\) by \(\psi,\psi^\dagger\) :

$$\begin{aligned}
a(\bm{k},s)&= \frac 1 {\sqrt{2\omega_{|\bm{k}|}}}  \int \frac {\td^3 \bm{x}} {(2\pi)^{3/2}} e^{-\ti \bm{k}\cdot \bm{x}} u^{(s)\dagger}(\bm{k}) \psi(\bm{x}) \\
b(\bm{k},s)&= \frac 1 {\sqrt{2\omega_{|\bm{k}|}}}  \int \frac {\td^3 \bm{x}} {(2\pi)^{3/2}} e^{-\ti\bm{k}\cdot \bm{x}}\psi (\bm{x})^\dagger v^{(s)}(\bm{k})
\end{aligned}$$

And their commutation relation:

$$\begin{aligned}
\{a(\bm{k},s),b(\bm{k}',s')\}&=\{a(\bm{k},s)^\dagger,b(\bm{k}',s')^\dagger\}=0 \\
\{a(\bm{k},s),a(\bm{k}',s')\}&=\{b(\bm{k},s),b(\bm{k}',s')\}=0 \\
\{a(\bm{k},s),b(\bm{k}',s')^\dagger\}&=\{a(\bm{k},s)^\dagger,b(\bm{k}',s')\}=0 \\
\{a(\bm{k},s),a(\bm{k}',s')^\dagger\}&=\{b(\bm{k},s),b(\bm{k}',s')\}=\delta^{s,s'}\delta^3(\bm{k}-\bm{k}')
\end{aligned}$$

{{%fold "Proof"%}}

Using the 3-d delta function: \(\delta^3(\bm{x}-\bm{y})=\int \frac {\td^3 \bm{k}} {(2\pi)^3} e^{\ti \bm{k}\cdot (\bm{x}-\bm{y})}\), we have:

$$\begin{aligned}
\frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \sum_{s=1,2} \Big(u^{(s)}(\bm{k})a(\bm{k},s)+v^{(s)}(-\bm{k})b(-\bm{k},s)^\dagger\Big)&= \int \frac {\td^3 \bm{x}} {(2\pi)^{3/2}} e^{-\ti \bm{k}\cdot \bm{x}} \psi(\bm{x}) \\
\frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \sum_{s=1,2} \Big(u^{(s)}(-\bm{k})^\dagger a(-\bm{k},s)^\dagger +v^{(s)}(\bm{k})^\dagger b(\bm{k},s)\Big)&= \int \frac {\td^3 \bm{x}} {(2\pi)^{3/2}} e^{-\ti \bm{k}\cdot \bm{x}} \psi(\bm{x})^\dagger
\end{aligned}$$

With the orthogonal property of \(u,v\):

$$\begin{aligned}
u^{(s')\dagger}(\bm{k})u^{(s)}(\bm{k})&=\bar{u}^{(s')}(\bm{k})\gamma^0 u^{(s)}(\bm{k}) =2 k^0 \delta^{s,s'} \\
v^{(s')\dagger}(\bm{k})v^{(s)}(\bm{k})&=\bar{v}^{(s')}(\bm{k})\gamma^0 v^{(s)}(\bm{k}) =2 k^0 \delta^{s,s'}
\end{aligned}$$

And using that \((m+k_\mu \gamma^\mu)^{\dagger}=(m+(k^0,-\bm{k})\cdot \gamma)\) and \((m+k_\mu \gamma^\mu)(m-k_\mu \gamma^\mu)=0\) , one can prove that:

$$u^{(s')\dagger}(\bm{k})v^{(s)}(\bm{k})=0$$

Then noting that \(\gamma\) matrices and spinors  are commutable to operators \(a,b\), we can write down:

$$\begin{aligned}
a(\bm{k},s)&= \frac 1 {\sqrt{2\omega_{|\bm{k}|}}}  \int \frac {\td^3 \bm{x}} {(2\pi)^{3/2}} e^{-\ti \bm{k}\cdot \bm{x}} u^{(s)\dagger}(\bm{k}) \psi(\bm{x}) \\
b(\bm{k},s)&= \frac 1 {\sqrt{2\omega_{|\bm{k}|}}}  \int \frac {\td^3 \bm{x}} {(2\pi)^{3/2}} e^{-\ti\bm{k}\cdot \bm{x}}\psi (\bm{x})^\dagger v^{(s)}(\bm{k})
\end{aligned}$$

Then we can check the commutation relationship. Obviously:

$$\begin{aligned}[]
\{a(\bm{k},s),a(\bm{k}',s')\}&=\{b(\bm{k},s),b(\bm{k}',s')\}=0 \\
\{a(\bm{k},s),b(\bm{k}',s')^\dagger\}&=\{a(\bm{k},s)^\dagger,b(\bm{k}',s')\}=0 \\
\end{aligned}$$

Then:

$$\begin{aligned}[]
\{a(\bm{k},s),a(\bm{k}',s')^\dagger\}&= \frac 1 {\sqrt{4\omega \omega'}} \int \frac {\td^3 \bm{x}\td^3 \bm{x}'} {(2\pi)^3} e^{-\ti \bm{k}\cdot \bm{x}+\ti \bm{k}'\cdot \bm{x}'} \{u^{(s)\dagger}(\bm{k})\psi(\bm{x}),\psi(\bm{x}')^\dagger u^{(s')}(\bm{k}')\} \\
&= \frac 1 {\sqrt{4\omega \omega'}} \int \frac {\td^3 \bm{x}\td^3 \bm{x}'} {(2\pi)^3} e^{-\ti \bm{k}\cdot \bm{x}+\ti \bm{k}'\cdot \bm{x}'} \delta^3(\bm{x}-\bm{x}') u^{(s)\dagger}(\bm{k})u^{(s')}(\bm{k}') \\
&= \frac 1 {\sqrt{4\omega \omega'}}  u^{(s)\dagger}(\bm{k})u^{(s')}(\bm{k}') \delta^3(\bm{k}-\bm{k}') \\
&=\delta^{s,s'}\delta^3(\bm{k}-\bm{k}')
\end{aligned}$$

Similarly, we can prove that: \(\{b(\bm{k},s),b(\bm{k}',s')\}=\delta^{s,s'}\delta^3(\bm{k}-\bm{k}')\) . And:

$$\begin{aligned}[]
\{a(\bm{k},s),b(\bm{k}',s')\}&= \frac 1 {\sqrt{4\omega \omega'}} \int \frac {\td^3 \bm{x}\td^3 \bm{x}'} {(2\pi)^3} e^{-\ti \bm{k}\cdot \bm{x}-\ti \bm{k}'\cdot \bm{x}'} \{u^{(s)\dagger}(\bm{k})\psi(\bm{x}),\psi(\bm{x}')^\dagger v^{(s')}(\bm{k}')\} \\
&=\frac 1 {\sqrt{4\omega \omega'}} \int \frac {\td^3 \bm{x}\td^3 \bm{x}'} {(2\pi)^3} e^{-\ti \bm{k}\cdot \bm{x}-\ti \bm{k}'\cdot \bm{x}'} \delta^3(\bm{x}-\bm{x}') u^{(s)\dagger}(\bm{k})v^{(s')}(\bm{k}') \\
&=\frac 1 {\sqrt{4\omega \omega'}}u^{(s)\dagger}(\bm{k})v^{(s')}(\bm{k}') \delta^3(\bm{k}+\bm{k}') \\
&=0
\end{aligned}$$

q.e.d.

{{%/fold%}}

With this result and the hold-order discussion in Classical theory, we can write the Hamiltonian as:

$$\hat H = \sum_s \int \td^3 \bm{k} \ \omega_{|\bm{k}|} \Big[a(\bm{k},s)^\dagger a(\bm{k},s) + b(\bm{k},s)^\dagger b(\bm{k},s) \Big]$$

There is also a \(\infty\) quantity at the right-hand-side. But like what in Klein-Gordon Field, we ignore it.

{{%fold "Result with usual commutation relationship"%}}

With usual commutation relationship, we have the Hamiltonian as:

$$\begin{aligned}
\hat H &= \sum_s \int \td^3 \bm{k} \omega_{|\bm{k}|} \Big[a(\bm{k},s)^\dagger a(\bm{k},s) - b(\bm{k},s) b(\bm{k},s)^\dagger \Big] \\
& \sim \sum_s \int \td^3 \bm{k} \omega_{|\bm{k}|} \Big[a(\bm{k},s)^\dagger a(\bm{k},s) - b(\bm{k},s)^\dagger b(\bm{k},s) \Big]+ \int \td^3 \bm{k} \ \omega_{|\bm{k}|}\delta^3(\bm{0})
\end{aligned}$$

Even we ignore the \(\infty\) quantity, the Hamiltonian still has no lower bound, which is caused by the `negative-energy` electrons.

The anti-commutation relationship will let Hamiltonian has a lower bound. In original Dirac theory, the vacuum is defined as the state of all negative energy levels are occupied by negative-energy electrons, the anti-particle is treated as the hole in negative-energy electrons sea. Here \(b^\dagger\) will generate an anti-electron automatically.

{{%/fold%}}

One can also write these operators in `Heisenberg Picture` :

$$\begin{aligned}
\psi(x)&=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2}\Big(e^{-\ti k\cdot x} u^{(s)}(\bm{k}) a(\bm{k},s)+e^{\ti k\cdot x} v^{(s)}(\bm{k}) b(\bm{k},s)^\dagger \Big)\\
\bar \psi(x)&=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2}\Big(e^{\ti k\cdot x} \bar u^{(s)}(\bm{k}) a(\bm{k},s)^\dagger+e^{-\ti k\cdot x} \bar v^{(s)}(\bm{k}) b(\bm{k},s) \Big)
\end{aligned}$$

{{%fold "Proof"%}}

We can also check that:

$$[a(\bm{k},s),\hat H]=\omega_{|\bm{k}|}a(\bm{k}) \ ; \ [b(\bm{k},s),\hat H]=\omega_{|\bm{k}|}b(\bm{k})$$

And:

$$a_H(\bm{k})=e^{\ti t \hat H} a(\bm{k})e^{-\ti t \hat H} = e^{-\ti \omega_{|\bm{k}|}t} a(\bm{k})$$

same for \(b\) . Then:

$$\psi(x)=e^{\ti t \hat H} \psi(\bm{x})e^{-\ti t \hat H}=\int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \sum_{s=1,2}\Big(e^{-\ti k\cdot x} u^{(s)}(\bm{k}) a(\bm{k},s)+e^{\ti k\cdot x} v^{(s)}(\bm{k}) b(\bm{k},s)^\dagger \Big)$$

{{%/fold%}}

## Hilbert Space of Dirac Spinor Field

_[Definition]_ : `vacuum of the Dirac Field` is the ground state of it. Denoting it as \(\ket{0}\) , we will find:

$$a(\bm{k},s)\ket{0}=b(\bm{k},s)\ket{0}=0 \ ; \ \forall \bm{k},s$$

_[Definition]_ : `1-particle` state is defined as:

$$\ket{\bm{k},s,\text{Fermion}} = \sqrt{2\omega_{|\bm{k}|}} a(\bm{k},s)^\dagger \ket{0}$$

And `1-anti-particle` state is defined as:

$$\ket{\bm{k},s,\text{anti-Fermion}} = \sqrt{2\omega_{|\bm{k}|}} b(\bm{k},s)^\dagger \ket{0}$$

With this definition, we can prove(like what we did for Scalar field):

$$\bra{\Lambda_{\bm{k}\rightarrow \bm{0}}\bm{k},s}\Lambda_{\bm{k}\rightarrow \bm{0}} \bm{k}',s'\rangle = \bra{\bm{k},s}\bm{k}',s'\rangle=2\omega_{|\bm{k}|}\delta^{s,s'}\delta^3(\bm{k}-\bm{k}')$$

Where \(\Lambda_{\bm{k}\rightarrow 0}k=(m,0,0,0)\) only contains the boost. The behavior of spin under spatial-rotation will be discussed in following.

And the `complete relation` in `1-(anti-)particle` subspace is also:

$$1_{\text{one-(anti-)particle}} = \sum_{s=1,2} \int \frac {\td^3 \bm{k}} {2\omega_{|\bm{k}|}} \ket{\bm{k},s,(\text{anti})}\bra{\bm{k},s,(\text{anti})}$$

Also has the covariant integral measure:

$$\int \frac {\td^3 \bm{p}} {2\omega_{|\bm{p}|}} = \int \td^4 p \delta(p_\mu p^\mu -m^2) \Theta(p^0)$$

_[Definition]_ : Consider the coordinate transformation(`special Lorentz Transformation`) \(x\rightarrow x'=\Lambda(\omega) x\) , the corresponding operator on Hilbert space is \(U(\Lambda(\omega))\) , then we have:

$$U(\Lambda(\omega))\ket{\bm{k},s}=\ket{\Lambda(\omega) \bm{k},s}$$

The vacuum is unique \(U(\Lambda)\ket{0}=\ket{0}\) . Then:

$$U(\Lambda(\omega)) a(\bm{k},s)^\dagger U(\Lambda(\omega))^{-1} = \sqrt {\frac {\omega_{|\bm{\Lambda(\omega)\bm{k}}|}} {\omega_{|\bm{k}|}} } a(\Lambda(\omega)\bm{k},s)^\dagger$$

same for anti-Fermion operator \(b\). Then one can check that the field operator will be:

$$\psi'(x'=\Lambda(\omega)x) \equiv U(\Lambda(\omega))\psi(x)U(\Lambda(\omega))^{-1}=\Lambda_{1/2}(\omega)^{-1} \psi(x'=\Lambda(\omega)x)$$

Where \(\Lambda_{1/2}(\omega)=\exp(-\frac \ti 4 \sum_{\mu\nu}\sigma_{\mu\nu}\omega_{\mu\nu})=\exp(-\ti\omega_{\mu\nu}S^{\mu\nu}/2)\) .

{{%fold "Proof"%}}

The proof is similar to what we did for Klein-Gordon Field. Just noting that the property of \(u,v\) :

$$u^{(s)}(\bm{k})=\Lambda_{\bm{0}\rightarrow \bm{k}}\Lambda_{\bm{k}'\rightarrow \bm{0}} u^{(s)}(\bm{k}')=\Lambda_{\bm{k}'\rightarrow \bm{k}}u^{(s)}(\bm{k}')$$

Same for \(v\) . Where \(\Lambda_{\bm{k}'\rightarrow \bm{k}}=\Lambda_{1/2}(\omega)\) with the \(\omega\) that satisfies \(\Lambda(\omega)\bm{k}'=\bm{k}\) .

Then:

$$\begin{aligned}
U(\Lambda)\psi(x)U(\Lambda)^{-1} &= \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac {\sqrt{2\omega_{|\Lambda \bm{k}|}}} {2\omega_{|\bm{k}|}} \sum_{s=1,2}\Big(e^{-\ti k\cdot x} u^{(s)}(\bm{k}) a(\Lambda\bm{k},s)+e^{\ti k\cdot x} v^{(s)}(\bm{k}) b(\Lambda\bm{k},s)^\dagger \Big) \\
&=\Lambda_{1/2}(\omega)^{-1} \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac {\sqrt{2\omega_{|\Lambda \bm{k}|}}} {2\omega_{|\bm{k}|}} \sum_{s=1,2}\Big(e^{-\ti k\cdot x} u^{(s)}(\Lambda\bm{k}) a(\Lambda\bm{k},s)+e^{\ti k\cdot x} v^{(s)}(\Lambda\bm{k}) b(\Lambda\bm{k},s)^\dagger \Big)
\end{aligned}$$

Then similarly using that \(k_\mu x^\mu=(\Lambda k)_\mu (\Lambda x)^\mu\) and the covariant integral measure, we have:

$$U(\Lambda)\psi(x)U(\Lambda)^{-1}=\Lambda_{1/2}(\omega)^{-1}\psi(\Lambda x)$$

{{%/fold%}}
