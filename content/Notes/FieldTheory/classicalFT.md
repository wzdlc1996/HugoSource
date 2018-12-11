---
title: "Classical Field Theory"
date: 2018-11-14T15:20:07+08:00
draft: false
tags: ["Physics"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
summary: "The classical field theory. Lagrange & Hamilton Formalism and the Noether Theorem."
---

# Introduction

Now we will study `Fields` . Each point of a (finite or infinite) region in space will be associated with some continuous field variable which will be denoted by `$\phi(\bm{x},t)$`. \
<mark>Then the field is a system with an infinite number(uncountable) of degrees of freedom. </mark> \
The dynamical variables of the theory are now the values of the field `$\phi(\bm{x})$` `at each point of space` . In general, the field can contain some internal degrees of freedom.

The `Lagrange function` now is a `functional` of the field and its differential respects to time:

<div>$$L(t) = L[\phi(\bm{x},t),\partial_t\phi(\bm{x},t)]$$</div>

In general, it depends on the value of `$\phi,\partial_t \phi$` at all points in space. Note that the functional does not depend on the coordinate `$\bm{x}$` itself.

## The Lagrangian Formalism

In this series, we will only study a class of fields, which is called as the `local field theories` without high order of time-derivative. Namely:

<div>$$L(t) = \int \td^3 \bm{x} \mathcal{L}(\phi(\bm{x},t),\nabla \phi(\bm{x},t),\partial_{t}\phi(\bm{x},t))$$</div>

There should be no high order time-derivative in right-hand-side. Function `$\mathcal{L}$` is called `Lagrange density` or `Lagrangian` in this series. The gradient describes the `local interaction` of field.

One can write a covariant `Action` abstractly :

<div>$$S=\int \td^4 x \mathcal{L}(\phi(x),\partial_\mu \phi(x))$$</div>

where `$x$` denotes the 4-vector `$(\bm{x},t)$` and `$\td^4x$` is the `invariant-volume of cell`. The invariance of action under Lorentz Transformation requires that <mark>Lagrangian should be a Lorentz-scalar</mark>

One can obtain the equation of motion (`Euler-Lagrange equation`) by variation method:

<div>$$\frac {\partial \mathcal{L}} {\partial \phi} - \partial_{\mu} \frac {\partial \mathcal{L}} {\partial(\partial_{\mu}\phi)}=0$$</div>

{{%fold "Proof"%}}

Because the variation of action is zero:

<div>$$\begin{aligned}
\delta S &= \int \td^4 x \Big\{\frac {\partial \mathcal{L}} {\partial \phi} \delta \phi +\sum_{\mu=0}^3 \frac {\partial \mathcal{L}} {\partial(\partial_{\mu}\phi)} \delta(\partial_{\mu}\phi)  \Big\} \\
&=\int \td^4 x \Big\{\frac {\partial \mathcal{L}} {\partial \phi} \delta \phi + \frac {\partial \mathcal{L}} {\partial(\partial_{0}\phi)} \partial_{0}\delta\phi + \sum_{i=1}^3 \frac {\partial \mathcal{L}} {\partial(\partial_i\phi)} \partial_i\delta\phi  \Big\} \\
&=\int \td^4 x\frac {\partial \mathcal{L}} {\partial \phi} \delta \phi + \int \gamma\td^3\bm{x} \frac {\partial \mathcal{L}} {\partial(\partial_{0}\phi)} \delta\phi \Big|_{t_i}^{t_f} - \int \td^4 x\partial_{0} \frac {\partial \mathcal{L}} {\partial(\partial_{0}\phi)} \delta\phi \\
&\ \ \ \ + \int_{\partial \Omega} \{\cdots\} -\int \td^4x \sum_{i=1}^3\partial_i \frac {\partial \mathcal{L}} {\partial(\partial_i\phi)} \delta\phi \\
&=\int \td^4 x \Big\{\frac {\partial \mathcal{L}} {\partial \phi} - \partial_{\mu} \frac {\partial \mathcal{L}} {\partial(\partial_{\mu}\phi)}\Big\}\delta \phi\\
&=0
\end{aligned}$$</div>

Where the variation of field `$\delta\phi$` at initial(final) time `$t_i(t_f)$` shall be zero, and the integral on surface of whole space shall vanish too.


{{%/fold%}}

It is easy to generalize this equation to the field with multi independent internal degrees of freedom: `$\phi\sim \phi^r \ ; \ r=1,\cdots,N$` :

<div>$$\frac {\partial \mathcal{L}} {\partial \phi^r} - \partial_{\mu} \frac {\partial \mathcal{L}} {\partial(\partial_{\mu}\phi^r)}=0$$</div>



## The Hamilton Formalism

To apply Hamilton's formalism to a field theory, we need first define the `canonically conjugate momentum` :

<div>$$\pi(x)\equiv\pi(\bm{x},t)=\frac {\delta L(t)} {\delta\flo{\phi}(\bm{x},t)} = \frac {\partial\mathcal{L}} {\partial (\partial_0 \phi)} $$</div>

And the `Hamiltonian` of a field system is:

<div>$$H(t) = \int \td^3 \bm{x} \mathcal{H} =\int \td^3 \bm{x} \Big(\pi(x)\flo{\phi}(x)-\mathcal{L} \Big)$$</div>

And one can define the `Poisson Bracket` of two functionals `$F[\phi,\pi],G[\phi,\pi]$` of field and its canonically conjugate field(momentum field):

<div>$$\{F,G\}_{PB}=\int \td^3 \bm{x} \Big\{\frac {\delta F} {\delta \phi(x)}\frac {\delta G} {\delta \pi(x)} - \frac {\delta F} {\delta \pi(x)} \frac {\delta G} {\delta \phi(x)} \Big\} $$</div>

If `$F,G$` are all locally depend on field, that means they can expressed as the spatial integral of density functions `$\mathcal{F}(\phi(x),\pi(x)),\mathcal{G}(\phi(x),\pi(x))$` , the Poisson bracket will be:

<div>$$\{F,G\}_{PB}=\int \td^3 \bm{x} \Big\{\frac {\partial\mathcal{F}} {\partial \phi(x)}\frac {\partial\mathcal{G}} {\partial \pi(x)} - \frac {\partial\mathcal{F}} {\partial \pi(x)} \frac {\partial\mathcal{G}} {\partial \phi(x)} \Big\} $$</div>

By Poisson bracket, one can write down the equation of motion of the time-dependent function: `$F(t)=F[\phi,\pi]$` in Hamilton Formalism:

<div>$$\frac {\td F(t)} {\td t} = \{F,H\}_{PB}$$</div>

{{%fold "Proof"%}}

For any functional of `$\phi,\pi$` : `$F(t)=F[\phi,\pi]$` , we have its derivative respects of time is:

<div>$$\frac {\td F(t)} {\td t} = \int \td^3 \bm{x} \Big\{\frac {\delta F} {\delta \phi(x)} \flo{\phi}+\frac {\delta F} {\delta \pi(x)} \flo{\pi} \Big\}$$</div>

As for Hamiltonian, for we have:

<div>$$H(t) = \int \td^3 \bm{x} \ \pi(x)\flo{\phi}(x)-L$$</div>

or its variation:

<div>$$\delta H = \int \td^3 \bm{x} \ \pi \delta\flo{\phi} + \delta\pi \flo{\phi} -\delta L $$</div>

For `$\delta L = \int \td^3 \bm{x} \pi \delta \flo{\phi} + \frac {\delta L} {\delta \phi(x)}\delta \phi (x)=\int \td^3 \bm{x} \pi\delta\flo{\phi}+\flo{\pi}\delta \phi$`

Which is yielded by the mechanics of point system.

Then these equations directly yield:

<div>$$\flo{\phi} = \frac {\delta H} {\delta \pi} \ ; \ \flo{\pi}=-\frac {\delta H} {\delta \phi} $$</div>

And :

<div>$$\frac {\td F(t)} {\td t} = \{F,H\}_{PB}$$</div>

{{%/fold%}}

Explicitly, when Hamilton density is only depend on the field, momentum and their gradient:

<div>$$\begin{aligned}
\frac {\partial \phi(\bm{x},t)} {\partial t} &= \frac {\delta H} {\delta \pi(\bm{x},t)} = \frac {\partial \mathcal{H}} {\partial \pi} - \nabla \cdot \frac {\partial \mathcal{H}} {\partial(\nabla \phi)} \\
\frac {\partial \pi(\bm{x},t)} {\partial t} &= -\frac {\delta H} {\delta \phi(\bm{x},t)} =- \frac {\partial \mathcal{H}} {\partial \phi} + \nabla \cdot \frac {\partial \mathcal{H}} {\partial(\nabla \pi)}
\end{aligned}$$</div>

{{%fold "Proof"%}}

First we compute the variation's of Hamiltonian in terms of Hamilton density:

<div>$$\begin{aligned}
\delta H &=\delta \int \td^3\bm{x} \mathcal{H}(\phi,\pi,\nabla \phi, \nabla\pi)\\
&= \int \td^3 \bm{x} \Big\{\frac {\partial \mathcal{H}} {\partial \phi} \delta \phi+\frac {\partial \mathcal{H}} {\partial \pi}\delta \pi + \frac {\partial \mathcal{H}} {\partial (\nabla \phi)} \cdot \nabla \phi+\frac {\partial \mathcal{H}} {\partial (\nabla \pi) } \cdot \nabla \pi \Big\} \\
&=\int \td^3 \bm{x}\Big\{\big(\frac {\partial \mathcal{H}} {\partial \phi} - \nabla \cdot \frac {\partial \mathcal{H}} {\partial(\nabla\phi)} \big)\delta \phi+(\phi\leftrightarrow \pi) \Big\} + \int_{\partial \Omega}\{\cdots\}
\end{aligned}$$</div>

With the integral on area vanishing, we have:

<div>$$\begin{aligned}
\frac {\delta H} {\delta \pi(\bm{x},t)} &= \frac {\partial \mathcal{H}} {\partial \pi} - \nabla \cdot \frac {\partial \mathcal{H}} {\partial(\nabla \phi)} \\
\frac {\delta H} {\delta \phi(\bm{x},t)} &= \frac {\partial \mathcal{H}} {\partial \phi} - \nabla \cdot \frac {\partial \mathcal{H}} {\partial(\nabla \pi)}
\end{aligned}$$</div>

{{%/fold%}}

We can also compute the Poisson bracket between fields and momentum. Only noting `$f(\bm{x},t)=\int \td^3 \bm{x}' \delta^3(\bm{x}-\bm{x}')f(\bm{x}',t)$` :

<div>$$\begin{aligned}
\{\phi(\bm{x},t),\phi(\bm{x}',t)\}_{PB} &= 0 \\
\{\pi(\bm{x},t),\pi(\bm{x}',t)\}_{PB} &= 0 \\
\{\phi(\bm{x},t),\pi(\bm{x}',t)\}_{PB} &= \delta^3(\bm{x}-\bm{x}')
\end{aligned}$$</div>

Where one can treat the coordinate at left-hand-side as the parameter of the functional: `$f(\bm{x},t)\equiv f_{\bm{x}}(t)=f_{\bm{x}}[\phi,\pi]$` .

# Symmetry of Fields

## Noether's Theorem

_[Theorem(Noether)]_ : In classical field theory , a `continous symmetric transformation` which lets the `action invariant`, will lead to a `conservation of current` and `movement constant`

### Symmetry Induced by Coordinate Transformation

We will discuss a class of symmetry. It comes from the coordinate transformation, with the infinitesimal transform:

<div>$$x^\mu \rightarrow x'^\mu= x^{\mu}+\delta x^{\mu}$$</div>

And the field shall be changed too. There are two contribution to the field variation, one is the change of `$\phi$` , and another is the change of coordinate:

<div>$$\phi(x)\rightarrow \phi'(x'=x+\delta x) = (\phi+\bar{\delta}\phi)(x+\delta x) = \phi(x)+\bar \delta\phi(x)+\partial_\mu \phi (x)\delta x^\mu $$</div>

The `full variation` is: `$\delta \phi \equiv \phi'(x')-\phi(x) = \bar\delta\phi(x)+\partial_\mu \phi(x)\delta x^\mu$`

Then, with the definition of the Action, we can write down its variation:

<div>$$\begin{aligned}
\delta S &= \int \td^4 x \partial_\mu \Big(\mathcal{L}\delta x^\mu +\frac {\partial \mathcal{L}} {\partial(\partial_\mu\phi)}\delta \phi - \frac {\partial\mathcal{L}} {\partial(\partial_\mu\phi)}\partial_\nu\phi \delta x^\nu \Big)
\end{aligned}$$</div>

{{%fold "Proof"%}}

With the variation of field:

<div>$$\delta\phi = \bar\delta \phi +\partial_\mu \phi \delta x^\mu$$</div>

we can compute some quantities which we will use below:

<div>$$\partial_\mu \bar\delta \phi = \partial_\mu (\phi'(x)-\phi(x)) = \bar\delta \partial_\mu(x) $$</div>

And with that `$\delta(\partial_\mu\phi)=\partial'_\mu\phi'(x')-\partial_\mu\phi(x)$` and `$\partial'_\mu = \partial/\partial x'^\mu$` :

<div>$$\begin{aligned}
\partial_\mu(\delta \phi) &= \partial_{\mu}\phi'(x')-\partial_{\mu}\phi(x) \\
&=\partial'_{\nu}\phi'(x')\partial_{\mu}x'^{\nu} - \partial_{\mu}\phi(x) \\
&=\partial'_{\nu}\phi'(x')(\delta_\mu^\nu+\partial_\mu\delta x^\nu) - \partial_{\mu}\phi(x) \\
&= \delta(\partial_\mu\phi) + \partial'_{\nu}\phi'(x')\partial_\mu\delta x^\nu \\
&= \delta(\partial_\mu\phi) + \partial_{\lambda}\phi'(x')(\delta_\nu^\lambda + \delta(\cdots))\partial_\mu\delta x^\nu \\
&\approx \delta(\partial_\mu\phi) + \partial_{\nu}\phi'(x')\partial_\mu\delta x^\nu \\
&\approx \delta(\partial_\mu\phi) + \partial_{\nu}\phi(x)\partial_\mu\delta x^\nu \\
\end{aligned}$$</div>

Where the last two is valid only to `first order`.

Consider the variation of action:

<div>$$\delta S = \int \td^4 x' \mathcal{L}(\phi'(x'),\partial'_{\mu}\phi'(x'))-\int \td^4 x \mathcal{L}(\phi(x),\partial_\mu \phi(x))$$</div>

With the variation of 4-cell volume:

<div>$$\td^4 x \rightarrow \td^4 x' =\det \frac {\partial x'^\mu} {\partial x^\nu} \td^4 x=(1+\partial_{\mu}\delta x^{\mu})\td^4 x $$</div>

Where `$\partial_{\nu} x'^\mu = \delta_\nu^\mu + \partial_\nu \delta x^{\mu}$` , and the first order of determinate will be its trace.

we have:

<div>$$\delta S =\int \td^4 x (\partial_\mu\delta x^\mu \mathcal{L}+\delta \mathcal{L}) $$</div>

The variation of Lagrange density should be:

<div>$$\begin{aligned}
\delta \mathcal{L} & \equiv \mathcal{L}(\phi'(x'),\partial'_\mu\phi'(x'))-\mathcal{L}(\phi(x),\partial_\mu \phi(x)) \\
&=\frac {\partial \mathcal{L}} {\partial \phi} \delta\phi + \frac {\partial \mathcal{L}} {\partial (\partial_\mu\phi)} (\partial_{\mu}\delta \phi-\partial_\mu\delta x^\nu \partial_\nu\phi)
\end{aligned}$$</div>

Let us check the integral with deviation of variations:

<div>$$\begin{aligned}
\int \td^4 x \mathcal{L}\partial_\mu \delta x^\mu &= \int \td^4 x \partial_\mu( \mathcal{L} \delta x^\mu)-\Big(\frac {\partial \mathcal{L}} {\partial \phi}\partial_\mu\phi+\frac {\partial \mathcal{L}} {\partial (\partial_\nu\phi)}\partial_\mu\partial_\nu\phi\Big)\delta x^\mu \\
\\
\int \td^4 x \frac {\partial \mathcal{L}} {\partial(\partial_\mu\phi)}\partial_\mu(\delta\phi) &=\int \td^4 x\partial_\mu \Big(\frac {\partial \mathcal{L}} {\partial(\partial_\mu\phi)}\delta\phi \Big) -\int \td^4 x \Big(\partial_\mu\frac {\partial \mathcal{L}} {\partial(\partial_\mu\phi)}\Big)\delta\phi  \\
&=\int \td^4 x\partial_\mu \Big(\frac {\partial \mathcal{L}} {\partial(\partial_\mu\phi)}\delta\phi \Big)-\int \td^4 x \Big(\frac {\partial \mathcal{L}} {\partial\phi}\Big)\delta\phi \\
\\
\int \td^4 x \frac {\partial \mathcal{L}} {\partial(\partial_\mu\phi)}(\partial_\nu\phi \partial_\mu\delta x^\nu) &=\int\td^4 x\partial_\mu\Big(\frac {\partial\mathcal{L}} {\partial(\partial_\mu\phi)}\partial_\nu\phi\delta x^\nu \Big)- \int \td^4 x \partial_\mu \Big(\frac {\partial \mathcal{L}} {\partial(\partial_\mu\phi)}\partial_\nu\phi\Big)\delta x^\nu \\
&=\int\td^4 x\partial_\mu\Big(\frac {\partial\mathcal{L}} {\partial(\partial_\mu\phi)}\partial_\nu\phi\delta x^\nu \Big)- \int \td^4 x \Big(\frac {\partial \mathcal{L}} {\partial\phi}\partial_\nu\phi+\frac {\partial\mathcal{L}}{\partial(\partial_\mu\phi)}\partial_\mu\partial_\nu\phi\Big)\delta x^\nu
\end{aligned}$$</div>

Where the last equality comes from the Lagrange equation.

Then we have:

<div>$$\begin{aligned}
\delta S &= \int \td^4 x \partial_\mu \Big(\mathcal{L}\delta x^\mu +\frac {\partial \mathcal{L}} {\partial(\partial_\mu\phi)}\delta \phi - \frac {\partial\mathcal{L}} {\partial(\partial_\mu\phi)}\partial_\nu\phi \delta x^\nu \Big)
\end{aligned}$$</div>


{{%/fold%}}

If it is a symmetric transformation, we require that the integral vanish at arbitrary integral zone. Then the integrand should be zero.

Generalize it to the field with multiple degrees of freedom:

<div>$$f^\mu=\mathcal{L}\delta x^\mu +\frac {\partial \mathcal{L}} {\partial(\partial_\mu\phi^r)}\delta \phi^r - \frac {\partial\mathcal{L}} {\partial(\partial_\mu\phi^r)}\partial_\nu\phi^r \delta x^\nu$$</div>

we have the equation:

<div>$$\partial_\mu f^\mu=0$$</div>

It has the form of continuous equation.

With the Gauss Theorem we have the `conservation law`:

<div>$$\frac {\td} {\td x^0} \int_V f^0 \td^3 \bm{x}+\oint_{\partial V}\td \bm{S}\cdot \bm{f}=0$$</div>

{{%fold "Proof"%}}

<div>$$\begin{aligned}
0&= \int_V \td^3\bm{x} \partial_\mu f^\mu  \\
&=\int_V \td^3 \bm{x} \frac {\partial} {\partial x^0} f^0 +\int_V \td^3\bm{x} \nabla\cdot \bm{f} \\
&=\frac {\td} {\td x^0} \int_V f^0 \td^3 \bm{x}+\oint_{\partial V}\td \bm{S}\cdot \bm{f}
\end{aligned}$$</div>

Where `$\bm{f}=(f^1,f^2,f^3)$`

{{%/fold%}}

When the integral over `$\partial V$` vanishes when `$V\rightarrow \infty$` , we have the conserved quantities (also called `charge`) :

<div>$$G := \int f^0 \td^3 \bm{x} =\text{const}.$$</div>

### Example: Spatial-Time Homogeneous

As an example, let us consider the system with spatial-time homogeneous. The infinitesimal transformation is:

<div>$$\begin{aligned}
x^\mu\rightarrow x'^{\mu}=x^\mu-\epsilon^\mu
\end{aligned}$$</div>

The field shall be invariant, that is: `$\phi'(x')=\phi(x)$`, then we have: `$\delta \phi=0, \delta x^\mu=-\epsilon^\mu$` . Then the Noether current:

<div>$$f^\mu=-\mathcal{L} \epsilon^\mu + \frac {\partial \mathcal{L}} {\partial(\partial_\mu \phi)} \partial_\nu \phi \epsilon^\nu=\Big(-\mathcal{L} \delta_\nu^\mu + \frac {\partial \mathcal{L}} {\partial(\partial_\mu \phi)} \partial_\nu\phi \Big)\epsilon^\nu\equiv T^\mu_{\indent \nu}\epsilon^\nu$$</div>

Where `$T^\mu_{\indent \nu}$` usually is called `Energy-Momentum Tensor`

Spatial-time homogeneous requires that `$\epsilon^\nu$` can be arbitrary, that is we have the conservation law:

<div>$$\partial_\mu T^\mu_{\indent \nu}=0$$</div>

For `$\nu=0,1,2,3$` , there are four conserved charge:

<div>$$\begin{aligned}
E&=\int \td^3 \bm{x} T^{00} = \int \td^3 \bm{x} \ (\pi \partial_0\phi - \mathcal{L}) = H \\
P^i &= \int \td^3 \bm{x} T^{0i} = \int \td^3 \bm{x} \ \pi \partial^i \phi \sim -\int \td^3 \bm{x} \pi \nabla \phi
\end{aligned}$$</div>

Namely, energy-momentum conserved.

## Fields under Lorentz Transformation

In relativity Field theory, we will only study those fields:

1.  Fields obey some rules when the spacetime transformed by Lorentz transformation.
2.  The `action` , as the integral of Lagrangian density over spacetime, should be invariant with the spacetimes transformation(Lorentz transformation). That is, <mark>The action of Field system should be a `scalar`</mark>

These two requirements come from `Relativity principle` , which claims that the mechanics in different frame should be the same.

With this requirements, the field should be the basis of one representation of Lorentz Group. And obey the transformation rule:

<div>$$\psi(x)\rightarrow \psi'(x'=\Lambda_{\text{spacetime}}(\omega)x) = \big(\Lambda_{\text{Field}}(\omega)\psi\big)(x'=\Lambda_{\text{spacetime}}(\omega)x) $$</div>

Where `$\omega$` is the parameter of Lorentz transformation.

In fact, this principle can also be generalized to `Poincare Group` , if the spatial is `homogeneous`.
