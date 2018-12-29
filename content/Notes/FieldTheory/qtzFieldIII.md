---
title: "Quantization of Free Field: Maxwell Field"
date: 2018-12-26T20:11:35+08:00
draft: false
tags: ["classical-theory"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
summary: "The canonical quantization of vector Field(Maxwell Field). One can find that the usual quantization procedure(directly using of commutation relationship) does not work for it, because of the Gauge Symmetry. We will introduce the Gupta-Bleuler quantization procedure. It clearly keeps the Lorentz covariance but leads to a Hilbert space with negative matric. For free Maxwell field we can separate them totally, so the probability interpretation will not destroyed. Then we will computation of propagator and do some discussion. At last we will discuss the discrete symmetry of Maxwell Field in Quantum Theory"
---

# Quantization of Maxwell Field

## Canonical Quantization of Maxwell Field

The Hamiltonian of Maxwell Field is(in `Feynman Gauge`):

<div>$$H=\frac 1 2\int \td^3 \bm{x} \ \Big\{\sum_{i=1}^3 \Big((\partial_0 A_i)^2+(\nabla A_i)^2\Big)-(\partial_0 A_0)^2 - (\nabla A_0)^2 \Big\}$$</div>

Where `$A^\mu$` are vector field. We will use the canonical commutation relationship. For `$A_i$` they can be written equivalently as:

<div>$$[A^\mu(\bm{x}),(\partial_0 A^\nu)(\bm{x}')]=-\ti \eta^{\mu\nu}\delta^3 (\bm{x}-\bm{x}')$$</div>

{{%fold "Proof"%}}

With Feynman Gauge, we have the canonical momentum as:

<div>$$\pi^\mu = F^{\mu 0}-\eta^{\mu 0} \partial_\nu A^\nu$$</div>

If we use the canonical commutation relationship as :

<div>$$[A^\mu(\bm{x}),\pi_\nu (\bm{x}')]=\ti\delta^\mu_\nu \delta^3(\bm{x}-\bm{x}')$$</div>

Because the canonical momentum of `$A^\mu$` is `$\pi_\mu=\frac {\delta L} {\delta \partial_0 A^\mu}$` which should be a covariance vector.

And any other commutator vanish, it is equivalent to:

<div>$$[A^\mu(\bm{x}),\partial^\nu A^0(\bm{x})-(\partial^0 A^\nu)(\bm{x})-\eta^{\nu 0}\Big((\partial_0 A^0)(\bm{x})+\sum_i \partial_i A^i(\bm{x})\Big)]=\ti\delta^{\mu\nu}\delta^3(\bm{x}-\bm{x}')$$</div>

For that `$[A^\mu(\bm{x}),A^\nu(\bm{x}')]=0$` , we will have that

<div>$$\partial_{\bm{x}'}[A^\mu(\bm{x}),A^\nu(\bm{x}')]=0$$</div>

That is `$[A^\mu(\bm{x}),\partial_i A^\nu(\bm{x}')]=0$` . Then the canonical commutation relationship should be:

<div>$$\begin{aligned}[]
[A^0(\bm{x}),-(\partial_0 A_0)(\bm{x})] &= \ti \delta^3(\bm{x}-\bm{x}') \\
[A^i(\bm{x}),-(\partial^0 A_i)(\bm{x})] &= \ti \delta^3(\bm{x}-\bm{x}')
\end{aligned}$$</div>

That is

<div>$$[A^\mu(\bm{x}),(\partial_0 A^\nu)(\bm{x}')]=-\ti \eta^{\mu\nu}\delta^3 (\bm{x}-\bm{x}')$$</div>

q.e.d.

{{%/fold%}}

One can rewrite them into the plane-wave expansion. In Schrodinger Picture:

<div>$$A^\mu(\bm{x})=\int \frac {\td^3\bm{k}} {(2\pi)^{3/2}}\frac 1 {\sqrt{2\omega_{|\bm{k}|}}}\sum_{\lambda=0}^3 \Big(\epsilon^\mu(\bm{k},\lambda)e^{-\ti \bm{k}\cdot \bm{x}} a(\bm{k},\lambda) + \epsilon^{\mu*}(\bm{k},\lambda) e^{\ti \bm{k} \cdot \bm{x}} a(\bm{k},\lambda)^\dagger \Big) $$</div>

Where `$a$` is operators and `$\omega_{|\bm{k}|}=|\bm{k}|$` . Polarization vectors have the property:

<div>$$\epsilon(\bm{k},\lambda)\cdot \epsilon(\bm{k},\lambda')^*=\eta^{\lambda\lambda'} \ ; \ \sum_\lambda \eta^{\lambda\lambda} \epsilon^\mu(\bm{k},\lambda)\epsilon^{\nu*}(\bm{k},\lambda)=\eta^{\mu\nu}$$</div>

We can write the inverse transformation, which will represent `$a, a^\dagger$` by `$A^\mu$` and `$\partial_0 A^\mu$` :

<div>$$\begin{aligned}
a(\bm{k},\lambda) &= \sum_{\lambda'} \eta^{\lambda,\lambda'} \int \frac{\td^3 \bm{x}} {(2\pi)^{3/2}} \ e^{\ti \bm{k}\cdot \bm{x}} \epsilon_\mu(\bm{k},\lambda')^* \Big(\sqrt{\frac {\omega_{|\bm{k}|}} 2} A^\mu(\bm{x})+\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \partial_0 A^\mu(\bm{x}) \Big) \\
a(\bm{k},\lambda)^\dagger &= \sum_{\lambda'} \eta^{\lambda,\lambda'} \int \frac{\td^3 \bm{x}} {(2\pi)^{3/2}} \ e^{-\ti \bm{k}\cdot \bm{x}} \epsilon_\mu(\bm{k},\lambda') \Big(\sqrt{\frac {\omega_{|\bm{k}|}} 2} A^\mu(\bm{x})-\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \partial_0 A^\mu(\bm{x}) \Big) \\
\end{aligned}$$</div>

And their commutation relationship:

<div>$$[a(\bm{k},\lambda),a(\bm{k}',\lambda')]=[a(\bm{k},\lambda)^\dagger,a(\bm{k}',\lambda')^\dagger]=0 \ ; \ [a(\bm{k},\lambda),a(\bm{k}',\lambda')^\dagger]=-\eta^{\lambda\lambda'}\delta^3(\bm{k}-\bm{k}')$$</div>

{{%fold "Proof"%}}

With that:

<div>$$\begin{aligned}
A^\mu(\bm{x})&=\int \frac {\td^3\bm{k}} {(2\pi)^{3/2}}\frac 1 {\sqrt{2\omega_{|\bm{k}|}}}\sum_{\lambda=0}^3 \Big(\epsilon^\mu(\bm{k},\lambda)e^{-\ti \bm{k}\cdot \bm{x}} a(\bm{k},\lambda) + \epsilon^{\mu*}(\bm{k},\lambda) e^{\ti \bm{k} \cdot \bm{x}} a(\bm{k},\lambda)^\dagger \Big) \\
\partial_0A^\mu(\bm{x}) &= \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac {-\ti \omega_{|\bm{k}|}} {\sqrt{2\omega_{|\bm{k}|}}}\Big(\epsilon^\mu(\bm{k},\lambda)e^{-\ti \bm{k}\cdot \bm{x}} a(\bm{k},\lambda) - \epsilon^{\mu*}(\bm{k},\lambda) e^{\ti \bm{k} \cdot \bm{x}} a(\bm{k},\lambda)^\dagger \Big)
\end{aligned}$$</div>

The inverse of Fourier transformation is:

<div>$$\begin{aligned}
\frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \sum_{\lambda=0}^3 \Big(\epsilon^\mu(\bm{k},\lambda) a(\bm{k},\lambda)+\epsilon^{\mu*}(-\bm{k},\lambda)a(-\bm{k},\lambda)^\dagger\Big )&= \int \frac{\td^3 \bm{x}} {(2\pi)^{3/2}} \ e^{\ti \bm{k}\cdot \bm{x}} A^\mu(\bm{x}) \\
\frac {-\ti \omega_{|\bm{k}|}} {\sqrt{2\omega_{|\bm{k}|}}} \sum_{\lambda=0}^3 \Big(\epsilon^\mu(\bm{k},\lambda) a(\bm{k},\lambda)-\epsilon^{\mu*}(-\bm{k},\lambda)a(-\bm{k},\lambda)^\dagger\Big )&= \int \frac{\td^3 \bm{x}} {(2\pi)^{3/2}} \ e^{\ti \bm{k}\cdot \bm{x}} \partial_0 A^\mu(\bm{x}) \\
\end{aligned}$$</div>

That is:

<div>$$\sum_\lambda \epsilon^\mu(\bm{k},\lambda)a(\bm{k},\lambda)=\int \frac{\td^3 \bm{x}} {(2\pi)^{3/2}} \ e^{\ti\bm{k}\cdot \bm{x}}\Big(\sqrt{\frac {\omega_{|\bm{k}|}} 2} A^\mu(\bm{x})+\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \partial_0 A^\mu(\bm{x}) \Big)$$</div>

With `$\epsilon_\mu(\bm{k},\lambda) \epsilon^\mu(\bm{k},\lambda')^*=\eta^{\lambda\lambda'}$` , we have:

<div>$$\begin{aligned}
a(\bm{k},0)&= \int \frac{\td^3 \bm{x}} {(2\pi)^{3/2}} \ e^{\ti \bm{k}\cdot \bm{x}} \epsilon_\mu(\bm{k},0)^* \Big(\sqrt{\frac {\omega_{|\bm{k}|}} 2} A^\mu(\bm{x})+\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \partial_0 A^\mu(\bm{x}) \Big) \\
a(\bm{k},i)&= -\int \frac{\td^3 \bm{x}} {(2\pi)^{3/2}} \ e^{\ti \bm{k}\cdot \bm{x}} \epsilon_\mu(\bm{k},i)^* \Big(\sqrt{\frac {\omega_{|\bm{k}|}} 2} A^\mu(\bm{x})+\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \partial_0 A^\mu(\bm{x}) \Big) \\
\end{aligned}$$</div>

Where `$i=1,2,3$` . And similarly:

<div>$$\begin{aligned}
a(\bm{k},0)^\dagger &= \int \frac{\td^3 \bm{x}} {(2\pi)^{3/2}} \ e^{-\ti \bm{k}\cdot \bm{x}} \epsilon_\mu(\bm{k},0) \Big(\sqrt{\frac {\omega_{|\bm{k}|}} 2} A^\mu(\bm{x})-\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \partial_0 A^\mu(\bm{x}) \Big) \\
a(\bm{k},i)^\dagger &= -\int \frac{\td^3 \bm{x}} {(2\pi)^{3/2}} \ e^{-\ti \bm{k}\cdot \bm{x}} \epsilon_\mu(\bm{k},i) \Big(\sqrt{\frac {\omega_{|\bm{k}|}} 2} A^\mu(\bm{x})-\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \partial_0 A^\mu(\bm{x}) \Big) \\
\end{aligned}$$</div>

One can also write it as:

<div>$$\begin{aligned}
a(\bm{k},\lambda) &= \sum_{\lambda'} \eta^{\lambda,\lambda'} \int \frac{\td^3 \bm{x}} {(2\pi)^{3/2}} \ e^{\ti \bm{k}\cdot \bm{x}} \epsilon_\mu(\bm{k},\lambda')^* \Big(\sqrt{\frac {\omega_{|\bm{k}|}} 2} A^\mu(\bm{x})+\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \partial_0 A^\mu(\bm{x}) \Big) \\
a(\bm{k},\lambda)^\dagger &= \sum_{\lambda'} \eta^{\lambda,\lambda'} \int \frac{\td^3 \bm{x}} {(2\pi)^{3/2}} \ e^{-\ti \bm{k}\cdot \bm{x}} \epsilon_\mu(\bm{k},\lambda') \Big(\sqrt{\frac {\omega_{|\bm{k}|}} 2} A^\mu(\bm{x})-\ti \sqrt{\frac 1 {2\omega_{|\bm{k}|}}} \partial_0 A^\mu(\bm{x}) \Big) \\
\end{aligned}$$</div>

Then we need to compute their commutator:

<div>$$\begin{aligned}[]
[a(\bm{k},\lambda),a(\bm{k}',\lambda')]&= \sum_{\lambda_1,\lambda_2}\int \frac{\td^3 \bm{x}_1\td^3 \bm{x}_2} {(2\pi)^{3}}  \ e^{\ti \bm{k}\cdot \bm{x}_1+\ti \bm{k}'\cdot \bm{x}_2}\epsilon_{\mu_1}(\bm{k},\lambda_1)^* \epsilon_{\mu_2}(\bm{k}',\lambda_2)^* \\
&\indent \cdot \Big(\ti \sqrt{\frac {\omega_{|\bm{k}|}} {4\omega_{|\bm{k}'|}}} [A^{\mu_1}(\bm{x}_1),\partial_0 A^{\mu_2}(\bm{x}_2)]+\ti \sqrt{\frac {\omega_{|\bm{k}'|}} {4\omega_{|\bm{k}|}}} [\partial_0 A^{\mu_1}(\bm{x}_1),A^{\mu_2}(\bm{x}_2)]\Big) \\
&= \sum_{\lambda_1,\lambda_2}\int \frac{\td^3 \bm{x}_1\td^3 \bm{x}_2} {(2\pi)^{3}} \ e^{\ti \bm{k}\cdot \bm{x}_1+\ti \bm{k}'\cdot \bm{x}_2}\epsilon_{\mu_1}(\bm{k},\lambda_1)^* \epsilon_{\mu_2}(\bm{k}',\lambda_2)^* \\
&\indent \cdot \Big( \sqrt{\frac {\omega_{|\bm{k}|}} {4\omega_{|\bm{k}'|}}} - \sqrt{\frac {\omega_{|\bm{k}'|}} {4\omega_{|\bm{k}|}}}\Big)\eta^{\mu_1\mu_2}\delta^3(\bm{x}_1-\bm{x_2}) \\
&=0
\end{aligned}$$</div>

And for the same reason `$[a(\bm{k},\lambda)^\dagger,a(\bm{k}',\lambda')^\dagger]=0$` . Then:

<div>$$\begin{aligned}[]
[a(\bm{k},\lambda),a(\bm{k}',\lambda')^\dagger] &= \sum_{\lambda_1,\lambda_2} \int \frac{\td^3 \bm{x}_1\td^3 \bm{x}_2} {(2\pi)^{3}} \ e^{\ti \bm{k}\cdot \bm{x}_1-\ti \bm{k}'\cdot \bm{x}_2}\epsilon_{\mu_1}(\bm{k},\lambda_1)^* \epsilon_{\mu_2}(\bm{k}',\lambda_2) \\
&\indent \cdot \Big(-\ti \sqrt{\frac {\omega_{|\bm{k}|}} {4\omega_{|\bm{k}'|}}} [A^{\mu_1}(\bm{x}_1),\partial_0 A^{\mu_2}(\bm{x}_2)]+\ti \sqrt{\frac {\omega_{|\bm{k}'|}} {4\omega_{|\bm{k}|}}} [\partial_0 A^{\mu_1}(\bm{x}_1),A^{\mu_2}(\bm{x}_2)]\Big) \\
&= \sum_{\lambda_1,\lambda_2}\int \frac{\td^3 \bm{x}_1\td^3 \bm{x}_2} {(2\pi)^{3}} \ e^{\ti \bm{k}\cdot \bm{x}_1-\ti \bm{k}'\cdot \bm{x}_2}\epsilon_{\mu_1}(\bm{k},\lambda_1)^* \epsilon_{\mu_2}(\bm{k}',\lambda_2) \\
&\indent \cdot \Big(- \sqrt{\frac {\omega_{|\bm{k}|}} {4\omega_{|\bm{k}'|}}}- \sqrt{\frac {\omega_{|\bm{k}'|}} {4\omega_{|\bm{k}|}}}\Big)\eta^{\mu_1\mu_2}\delta^3(\bm{x}_1-\bm{x}_2) \\
&=\sum_{\lambda_1,\lambda_2} \epsilon_\mu(\bm{k},\lambda_1)^* \epsilon^\mu(\bm{k}',\lambda_2) (-1) \delta^3(\bm{k}-\bm{k}') \\
&=-\eta^{\lambda_1\lambda_2}\delta^3(\bm{k}-\bm{k}')
\end{aligned}$$</div>

q.e.d.

{{%/fold%}}

With this result and the hold-order discussion in Classical theory, we can write the Hamiltonian as:

<div>$$\hat H=\int \td^3 \bm{k} \ \Big(\sum_{\lambda=1}^3 a(\bm{k},\lambda)^\dagger a(\bm{k},\lambda) - a(\bm{k},0)^\dagger a(\bm{k},0) \Big) $$</div>

There is also a `$\infty$` quantity at the right-hand-side. But like usual, we ignore it.

One can also write these operators in Heisenberg Picture :

<div>$$A^\mu(x)=\int \frac {\td^3\bm{k}} {(2\pi)^{3/2}}\frac 1 {\sqrt{2\omega_{|\bm{k}|}}}\sum_{\lambda=0}^3 \Big(\epsilon^\mu(\bm{k},\lambda)e^{-\ti k\cdot x} a(\bm{k},\lambda) + \epsilon^{\mu*}(\bm{k},\lambda) e^{\ti k\cdot x} a(\bm{k},\lambda)^\dagger \Big) $$</div>

{{%fold "Proof"%}}

We can also check that:

<div>$$[a(\bm{k},\lambda),\hat H]=\omega_{|\bm{k}|}a(\bm{k},\lambda) \ ; \ [a(\bm{k},\lambda)^\dagger , \hat H]=-\omega_{|\bm{k}|}a(\bm{k},\lambda)^\dagger$$</div>

It hold for `$\lambda=0$` component cause the `$\eta^{00}=-\eta^{ii}$` .

Then:

<div>$$a_H(\bm{k},\lambda)=e^{-\ti \omega_{|\bm{k}|}t} a(\bm{k},\lambda)$$</div>

And:

<div>$$A^\mu(x)=\int \frac {\td^3\bm{k}} {(2\pi)^{3/2}}\frac 1 {\sqrt{2\omega_{|\bm{k}|}}}\sum_{\lambda=0}^3 \Big(\epsilon^\mu(\bm{k},\lambda)e^{-\ti k\cdot x} a(\bm{k},\lambda) + \epsilon^{\mu*}(\bm{k},\lambda) e^{\ti k\cdot x} a(\bm{k},\lambda)^\dagger \Big) $$</div>

q.e.d.

{{%/fold%}}

## Extended Hilbert Space and Physical States

{{%fold "Why the extended Hilbert is needed"%}}

One can find that this quantization procedure leads to a Hamiltonian `without` lower bound. Different from the Dirac Field, using anti-commutation relationship has no help, because the negative sign of `scalar polarization` come from the classical theory.

Moreover, in classical electromagnetic field theory, we know that `dof`of  electromagnetic wave is 2. But here we have four. In classical we use gauge condition to eliminate them, but in quantum theory, for example, Lorentz gauge `$\partial_\mu A^\mu=0$` cannot be a equality for operator. Because we have `$\pi^0\propto \partial_\mu A^\mu$` , let it hold will conflict to commutator relationship.

At last, we find that commutator for `$\lambda=0$` component is irregular: `$[a(\bm{k},0),a(\bm{k}',0)]=-\delta^3 (\bm{k}-\bm{k}')$` . That is to say if we normalize the vacuum `$\bra{0}0\rangle=1$` , then `$\bra{0} a(\bm{k},0) a(\bm{k}',0)^\dagger\ket{0}=-\delta^3 (\bm{k}-\bm{k}')\lt 0$` . Shows that our Hilbert space should cover some state with negative modulus. This is dangerous to Quantum theory especially for possibility interpretation.

In general, we have to accept that there are some non-physical states in Hilbert space. And on those physical states the theory is legal.

{{%/fold%}}

_[Definition]_ : The Hilbert generated from the quantization procedure above are larger than what we need. And it is not positive definite. `Physical subspace` is a subset of the Hilbert space, it is positive definite and describe the physical process can happen in the real world. States in `Physical subspace` are `physical states`, and the physical subspace is determined by the condition:

<div>$$\bra{\psi_{\text{phys.}}} \partial_\mu A^\mu \ket{\psi_{\text{phys.}}} =0$$</div>

Which is the quantum version of `Lorentz gauge`.

A stronger constraint(much more convenient for it is an eigen-equation) is

<div>$$\big(a(\bm{k},3)-a(\bm{k},0) \big)\ket{\psi_{\text{phys.}}} = 0 \ ; \ \bra{\psi_{\text{phys.}}} \big(a(\bm{k},3)^\dagger-a(\bm{k},0)^\dagger \big)=0$$</div>

{{%fold "Proof"%}}

If `$\ket{\Psi}$` satisfy `$\big(a(\bm{k},3)-a(\bm{k},0) \big)\ket{\Psi} = 0$` , then we have:

<div>$$\begin{aligned}
\bra{\Psi'}\partial_\mu A^\mu \ket{\Psi}&=\int \frac {\td^3\bm{k}} {(2\pi)^{3/2}} \frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \sum_\lambda \Big(-\ti k_\mu \epsilon^\mu(\bm{k},\lambda) e^{-\ti k\cdot x} \bra{\Psi} a(\bm{k},\lambda)\ket{\Psi}+\ti k_\mu \epsilon^{\mu*}(\bm{k},\lambda)e^{\ti k\cdot x}\bra{\Psi} a(\bm{k},\lambda)^\dagger \ket{\Psi} \Big) \\
&=\int \frac {\td^3\bm{k}} {(2\pi)^{3/2}} \frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \sum_\lambda \Big(-\ti (\delta_\lambda^0-\delta_\lambda^3) e^{-\ti k\cdot x} \bra{\Psi} a(\bm{k},\lambda)\ket{\Psi}+\ti (\delta_\lambda^0-\delta_\lambda^3)e^{\ti k\cdot x}\bra{\Psi} a(\bm{k},\lambda)^\dagger \ket{\Psi} \Big) \\
&=\int \frac {\td^3\bm{k}} {(2\pi)^{3/2}} \frac 1 {\sqrt{2\omega_{|\bm{k}|}}} \Big(\ti e^{-\ti k\cdot x} \bra{\Psi} a(\bm{k},3)-a(\bm{k},0)\ket{\Psi}-\ti e^{\ti k\cdot x}\bra{\Psi} a(\bm{k},3)^\dagger-a(\bm{k},0)^\dagger \ket{\Psi} \Big) \\
&=0
\end{aligned}$$</div>

q.e.d.

{{%/fold%}}

And this stronger condition leads to

<div>$$\bra{\psi_{\text{phys.}}}a(\bm{k},0)^\dagger a(\bm{k},0)\ket{\psi_{\text{phys.}}}=\bra{\psi_{\text{phys.}}}a(\bm{k},3)^\dagger a(\bm{k},3)\ket{\psi_{\text{phys.}}}$$</div>

This shows that in `physical subspace` , the expectation of Hamiltonian is:

<div>$$\bra{\psi_{\text{phys.}}}\hat H\ket{\psi_{\text{phys.}}} = \int \td^3 \bm{k} \ \omega_{|\bm{k}|} \sum_{\lambda=1,2} \bra{\psi_{\text{phys.}}} a(\bm{k},\lambda)^\dagger a(\bm{k},\lambda) \ket{\psi_{\text{phys.}}}$$</div>

The right-hand-side is positive definite.

And we have the structure of physical subspace:

_[Definition]_ : `vacuum of the Maxwell Field` is the ground state of it. Denoting it as `$\ket{0}$` , it satisfies:

<div>$$a(\bm{k},\lambda)\ket{0}=0 \ ; \ \forall \bm{k},\lambda=0,1,2,3$$</div>

Obviously, `$\ket{0}$` is a physical state.

_[Theorem]_ : Any physical states can be expressed as:

<div>$$\ket{\Phi_c} = \hat R_c \ket{\Phi_T}$$</div>

Where `$\ket{\Phi_T}$` is the state which contains `only` transverse photons(polarizations) , and operator `$\hat R_c$` creates the admixture of longitudinal and scalar photons:

<div>$$\hat R_c = 1+\int \td^3 \ c(\bm{k})\hat L^\dagger(\bm{k}) + \int \td^3 \bm{k}\td^3 \bm{k}' \ c(\bm{k},\bm{k}') \hat L^\dagger(\bm{k})\hat L^\dagger(\bm{k}')+\cdots$$</div>

Where `$c$` are arbitrary functions and `$\hat L^\dagger(\bm{k})=a(\bm{k},3)^\dagger - a(\bm{k},0)^\dagger$` . And:

<div>$$\bra{\Phi_c}\Phi_c\rangle = \bra{\Phi_T}\Phi_T\rangle$$</div>

That's why they(added states) are also called as `states-with-zero-norm` .

{{%fold "Proof"%}}

To prove that we should check:

<div>$$[\hat L(\bm{k}),\hat L^\dagger(\bm{k}')]=-\delta^3(\bm{k}-\bm{k}')+\delta^3(\bm{k}-\bm{k}')=0$$</div>

Then we have:

<div>$$\hat L(\bm{k})\hat R_c=\hat R_c\hat L(\bm{k})$$</div>

For `$\hat L(\bm{k})\ket{\Phi_T}=0$` by the definition, we have:

<div>$$\hat L(\bm{k}) \hat R_c \ket{\Phi_T}=0\Rightarrow \hat R_c \ket{\Phi_T} \in \text{physical subspace}$$</div>

Any other states are this state with different number of scalar photons and longitudinal photons, obviously they are not physical state.

This property also leads to:

<div>$$[\hat R_c,\hat R_c^\dagger]=0$$</div>

Then:

<div>$$\bra{\Phi_c}\Phi_c\rangle =\bra{\Phi_T}\hat R_c \hat R_c^\dagger \ket{\Phi_T}=\bra{\Phi_T}(1+a \hat L)\ket{\Phi_T}=\bra{\Phi_T}\Phi_T\rangle $$</div>

q.e.d.

{{%/fold%}}

_[Theorem]_ : The states `$\ket{\Phi_c}$` for a given `$\ket{\Phi_T}$` form an `equivalence class` . The member of this equivalence class are related by gauge transformations. Explicitly speaking, one has:

<div>$$\bra{\Phi_c}A_\mu \ket{\Phi_c} = \bra{\Phi_T}A_\mu \ket{\Phi_T} + \partial_\mu \Lambda$$</div>

Where `$\Lambda$` is a function satisfies `$\partial_\mu \partial^\mu \Lambda=0$` , it will come from gauge transformation.

{{%fold "Proof"%}}

One has:

<div>$$\bra{\Phi_c}A_\mu\ket{\Phi_c}=\bra{\Phi_T}\hat R_c^\dagger [A_\mu, \hat R_c]\ket{\Phi_T}+\bra{\Phi_T}[\hat R_c^\dagger , A_\mu]\ket{\Phi_T}+\bra{\Phi_T} A_\mu \ket{\Phi_T}$$</div>

Where we used `$\hat R_c^\dagger \ket{\Phi_T}=\ket{\Phi_T}$` . By using the fact that the commutators of `$A_\mu$` with `$\hat L(\bm{k}),\hat L^\dagger (\bm{k})$` are c-numbers:

<div>$$[A_\mu,\hat L^\dagger (\bm{k})]=\frac 1 {\sqrt{2\omega_{|\bm{k}|}}}e^{-\ti k\cdot x}(\epsilon_\mu(\bm{k},3)+\epsilon_\mu(\bm{k},0))$$</div>

We obtain:

<div>$$\bra{\Phi_c}A_\mu\ket{\Phi_c}=\int \td^3 \bm{k} \ c(\bm{k})[A_\mu,\hat L^\dagger(\bm{k})]+\int \td^3 \bm{k} \ c(\bm{k})^* [\hat L(\bm{k}),A_\mu]+\bra{\Phi_T} A_\mu \ket{\Phi_T}$$</div>

And with `$\epsilon_\mu(\bm{k},3)+\epsilon_\mu(\bm{k},0)\propto k_\mu$` , which can be easily checked by the Lorentz-covariance. We have:

<div>$$\begin{aligned}
\bra{\Phi_c}A_\mu\ket{\Phi_c}&=\int \td^3 \bm{k} \ c(\bm{k})[A_\mu,\hat L^\dagger(\bm{k})]+\int \td^3 \bm{k} \ c(\bm{k})^* [\hat L(\bm{k}),A_\mu]+\bra{\Phi_T} A_\mu \ket{\Phi_T} \\
&=\int \frac {\td^3\bm{k}} {\sqrt{2\omega_{|\bm{k}|}}} k_\mu (e^{-\ti k\cdot x} A c(\bm{k})+e^{\ti k\cdot x}A^* c(\bm{k})^* ) +\bra{\Phi_T} A_\mu \ket{\Phi_T} \\
&=\partial_\mu\Lambda +\bra{\Phi_T} A_\mu \ket{\Phi_T}
\end{aligned}$$</div>

Where:

<div>$$\Lambda=\ti \int \frac {\td^3 \bm{k}} {\sqrt{2\omega_{|\bm{k}|}}} (e^{-\ti k\cdot x} A c(\bm{k})-e^{\ti k\cdot x} A^* c(\bm{k})^*)$$</div>

Since `$k^0=|\bm{k}|$` , we have `$\square \Lambda=0$` . The gauge function `$\Lambda$` is consistent with the Lorentz gauge condition.

q.e.d.

{{%/fold%}}

<mark>With these theorems, we can use `$\ket{\Phi_T}$` as the representation of each equivalence class. And in this meaning the Maxwell Field is totally quantized.</mark>

_[Definition]_ : `1-particle` state is defined as:

<div>$$\ket{\bm{k},\lambda=1,2} = \sqrt{2\omega_{|\bm{k}|}} a(\bm{k},\lambda=1,2)^\dagger \ket{0}$$</div>

And the Lorentz covariance:

<div>$$\bra{\Lambda_{\bm{k}\rightarrow \bm{k}_{\text{special}}}\bm{k},\lambda }\Lambda_{\bm{k}\rightarrow \bm{k}_{\text{special}}} \bm{k}',\lambda'\rangle = \bra{\bm{k},\lambda}\bm{k}',\lambda'\rangle = 2\omega_{|\bm{k}|}\delta_{\lambda\lambda'}\delta^3(\bm{k}-\bm{k}')$$</div>

And the Lorentz covariant integral:

<div>$$\int \frac {\td^3 \bm{k}} {2\omega_{|\bm{k}|}} = \int \td^4 k \ \delta(k_\mu k^\mu)\Theta(k^0) $$</div>

_[Definition]_ : Consider the coordinate transformation(`special Lorentz Transformation`) `$x\rightarrow x'=\Lambda(\omega)x$` , the corresponding operator on Hilbert space is `$U(\Lambda(\omega))$` , then we have:

<div>$$U(\Lambda(\omega))\ket{\bm{k},\lambda}=\ket{\Lambda(\omega),\lambda}$$</div>

The vacuum is unique, then:

<div>$$U(\Lambda(\omega))a(\bm{k},s)^\dagger U(\Lambda(\omega))^{-1} = \sqrt{\frac {\omega_{|\Lambda(\omega)\bm{k}|}} {\omega_{|\bm{k}|}} } a(\Lambda(\omega)\bm{k},\lambda)^\dagger$$</div>

Then one can check that the field operator will be:

<div>$$A'^\mu(x'=\Lambda(\omega)x)\equiv U(\Lambda(\omega))A^\mu(x)U(\Lambda(\omega))^{-1} = \big(\Lambda(\omega)^{-1}\big)^\mu_{\indent \nu} A^\nu(x'=\Lambda(\omega) x)$$</div>

{{%fold "Proof"%}}

The proof is similar to what we did before, just noting `$\Lambda_{\bm{k}\rightarrow \bm{k}_{\text{special}}}\epsilon^\mu(\bm{k},\lambda)$` will be independent of `$\bm{k}$`, which means:

<div>$$\epsilon^\mu (\Lambda \bm{k},\lambda)=\Lambda^\mu_{\indent \nu}\epsilon^\nu(\bm{k},\lambda)$$</div>

Then:

<div>$$\begin{aligned}
U(\Lambda(\omega))A^\mu(x)U(\Lambda(\omega))^{-1} &= \int \frac {\td^3 \bm{k}} {(2\pi)^{3/2}} \frac {\sqrt{2\omega_{|\Lambda\bm{k}|}}} {2\omega_{|\bm{k}|}} \sum_{\lambda} \Big(e^{-\ti k\cdot x} \epsilon^\mu(\bm{k},\lambda) a(\Lambda \bm{k},\lambda)+e^{\ti k\cdot x} \epsilon^{\mu*}(\bm{k},\lambda)a(\Lambda \bm{k},\lambda)^\dagger \Big)\\
&=(\Lambda^{-1})^\mu_{\indent \nu} A^\nu(\Lambda x)
\end{aligned}$$</div>

q.e.d.

{{%/fold%}}

## Causality of Maxwell Field

Our quantization will not violent to the causality demanded by special Relativistic Theory. That is to say:

_[Theorem]_ : In Heisenberg Picture, for any two points `$x,y$` with spacelike interval: `$\|x-y\|^2\lt 0$` , the field operators are commutable:

<div>$$[A_\mu(x),A_\nu(y)]=0 \ ; \ \|x-y\|^2\lt 0$$</div>

{{%fold "Proof"%}}

With the quantization that `$[a(\bm{k},\lambda),a(\bm{k}',\lambda')^\dagger]=-\eta^{\lambda\lambda'}\delta^3(\bm{k}-\bm{k}')$` . One has:

<div>$$\begin{aligned}[]
[A_\mu(x),A_\nu(y)]&= \int \frac {\td^3 \bm{k}_1\td^3 \bm{k}_2 \ \delta^3(\bm{k}_1-\bm{k}_2)} {(2\pi)^3 \sqrt{4\omega_1\omega_2}} \sum_{\lambda_1,\lambda_2} \Big\{-\eta^{\lambda_1\lambda_2}e^{-\ti k_1\cdot x+\ti k_2\cdot y} \epsilon_\mu(\bm{k}_1,\lambda_1)\epsilon_\nu^*(\bm{k}_2,\lambda_2) +\eta^{\lambda_1\lambda_2}e^{\ti k_1\cdot x-\ti k_2\cdot y}\epsilon_\mu^*(\bm{k}_1,\lambda_1)\epsilon_\nu(\bm{k}_2,\lambda_2) \Big\}\\
&=-\int \frac {\td^3 \bm{k}} {(2\pi)^3 2\omega_{|\bm{k}|}} \eta_{\mu\nu} \Big(e^{-\ti k\cdot (x-y)}-e^{\ti k\cdot(x-y)} \Big)
\end{aligned}$$</div>

With the similar argument, the causality is proved.

{{%/fold%}}

# Propagator of Maxwell Field

_[Definition]_ : `Feynman Propagator` of Maxwell Field is defined as:

<div>$$\ti \Delta_F(x-y):= \bra{0}\mathcal{T}(A_\mu(x)A_\nu(y))\ket{0}$$</div>

And Maxwell Field is bosonic. One can compute that:

<div>$$\ti\Delta_F(x-y)=\int \frac {\td^4 p} {(2\pi)^4} e^{-\ti p\cdot(x-y)} \Big(\frac {-\ti \eta_{\mu\nu}} {p_\mu p^\mu +\ti \epsilon} \Big)$$</div>

The calculation is similar to Scalar field, with `$m=0$` , and `$\bra{0}a(\bm{k},\lambda)a(\bm{k}',\lambda')^\dagger\ket{0}=-\eta^{\lambda\lambda'}\delta^3(\bm{k}-\bm{k}')$`. That is why there are a factor `$-\eta_{\mu\nu}$` here.

This form only work for `Feynman Gauge`: `$\xi=1$` . The generic form is:

<div>$$\ti \Delta_F(x-y) =\int \frac {\td^4 p} {(2\pi)^4} e^{-\ti p\cdot (x-y)}(-\ti) \Big\{\frac {\eta_{\mu\nu}} {p_\mu p^\mu +\ti \epsilon} + \frac {1-\xi} {\xi} \frac {p_\mu p_\nu} {(p_\mu p^\mu+\ti \epsilon)^2} \Big\}$$</div>

# Discrete Symmetry of Maxwell Field

## Spatial Inversion

We hope the `Spatial Inversion` induces a unitary operator so as to

<div>$$U_P A_\mu(x^0,\bm{x}) U_P^{-1} = \eta_\gamma A_\mu(x^0,-\bm{x})$$</div>

For Maxwell Field, `$\eta_\gamma=-1$` , which is different from the real-valued scalar field.

For creation/annihilation operators:

<div>$$U_P a(\bm{k},\lambda) U_P^{-1} = - a(-\bm{k},\lambda)$$</div>

## Charge Conjugation

`Charge conjugation` for photon is:

<div>$$U_C A_\mu (x) U_C^{-1}=-A_\mu(x)$$</div>

Same to creation/annihilation operators:

<div>$$U_C a(\bm{k},\lambda) U_C^{-1}=-a(\bm{k},\lambda)$$</div>

## Time Reversal

`Time reversal` induces an anti-unitary operator. With conjugation operator `$K$` we can write it as `$U_T K$` , where `$U_T$` is a unitary operator. For creation/annihilation operators:

<div>$$(U_T K) a(\bm{k},\lambda) (U_T K)^{-1}= a(-\bm{k},\lambda)$$</div>

For `$\lambda$` denotes the `helicity`, `time reversal` inverse momentum and spin, so `$\lambda$` should be leave invariant.

Then we can prove that:

<div>$$(U_T K) A_\mu(x^0,\bm{x})(U_T K)^{-1}= \eta_{\mu\mu} A_\mu(-x^0,\bm{x})$$</div>

Do not sum for `$\mu$` here.

{{%fold "Proof"%}}

For `$\epsilon^\mu(-\bm{k},\lambda) = P^\mu_{\indent \nu}\epsilon^\nu(\bm{k},\lambda)$` , and `$P^\mu_{\indent \nu}=\eta^{\mu\nu}$` , we have:

<div>$$\begin{aligned}
(U_T K) A^\mu(x^0,\bm{x})(U_T K)^{-1} &= \int \frac {\td^3\bm{k}} {(2\pi)^{3/2}}\frac 1 {\sqrt{2\omega_{|\bm{k}|}}}\sum_{\lambda=0}^3 \Big(\epsilon^{\mu* }(\bm{k},\lambda)e^{\ti k\cdot x} a(-\bm{k},\lambda) + \epsilon^{\mu}(\bm{k},\lambda) e^{-\ti k\cdot x} a(-\bm{k},\lambda)^\dagger \Big) \\
&=\eta^{\mu\mu} \int \frac {\td^3\bm{k}} {(2\pi)^{3/2}}\frac 1 {\sqrt{2\omega_{|\bm{k}|}}}\sum_{\lambda=0}^3 \Big(\epsilon^{\mu* }(-\bm{k},\lambda)e^{\ti k\cdot x} a(-\bm{k},\lambda) + \epsilon^{\mu}(-\bm{k},\lambda) e^{-\ti k\cdot x} a(-\bm{k},\lambda)^\dagger \Big) \\
&=\eta^{\mu\mu} A^\mu (-x^0,\bm{x})
\end{aligned}$$</div>

Do not sum for `$\mu$` here. q.e.d.

{{%/fold%}}
