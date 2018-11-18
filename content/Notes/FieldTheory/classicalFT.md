---
title: "Classical Field Theory"
date: 2018-11-14T15:20:07+08:00
draft: false
tags: ["Physics"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
---

# Introduction

Now we will study `Fields` . Each point of a (finite or infinite) region in space will be associated with some continuous field variable which will be denoted by \(\phi(\bm{x},t)\). \
<mark>Then the field is a system with an infinite number(uncountable) of degrees of freedom. </mark> \
The dynamical variables of the theory are now the values of the field \(\phi(\bm{x})\) `at each point of space` . In general, the field can contain some internal degrees of freedom.

The `Lagrange function` now is a `functional` of the field and its differential respects to time:

$$L(t) = L[\phi(\bm{x},t),\partial_t\phi(\bm{x},t)]$$

In general, it depends on the value of \(\phi,\partial_t \phi\) at all points in space. Note that the functional does not depend on the coordinate \(\bm{x}\) itself.

## The Lagrangian Formalism

In this series, we will only study a class of fields, which is called as the `local field theories` without high order of time-derivative. Namely:

$$L(t) = \int \td^3 \bm{x} \mathcal{L}(\phi(\bm{x},t),\nabla \phi(\bm{x},t),\partial_{t}\phi(\bm{x},t))$$

There should be no high order time-derivative in right-hand-side. Function \(\mathcal{L}\) is called `Lagrange density` or `Lagrangian` in this series. The gradient describes the `local interaction` of field.

One can write a covariant `Action` abstractly :

$$S=\int \td^4 x \mathcal{L}(\phi(x),\partial_\mu \phi(x))$$

where \(x\) denotes the 4-vector \((\bm{x},t)\) and \(\td^4x\) is the `invariant-volume of cell`. The invariance of action under Lorentz Transformation requires that <mark>Lagrangian should be a Lorentz-scalar</mark>

One can obtain the equation of motion (`Euler-Lagrange equation`) by variation method:

$$\frac {\partial \mathcal{L}} {\partial \phi} - \partial_{\mu} \frac {\partial \mathcal{L}} {\partial(\partial_{\mu}\phi)}=0$$

{{%fold "Proof"%}}

Because the variation of action is zero:

$$\begin{aligned}
\delta S &= \int \td^4 x \Big\{\frac {\partial \mathcal{L}} {\partial \phi} \delta \phi +\sum_{\mu=0}^3 \frac {\partial \mathcal{L}} {\partial(\partial_{\mu}\phi)} \delta(\partial_{\mu}\phi)  \Big\} \\
&=\int \td^4 x \Big\{\frac {\partial \mathcal{L}} {\partial \phi} \delta \phi + \frac {\partial \mathcal{L}} {\partial(\partial_{0}\phi)} \partial_{0}\delta\phi + \sum_{i=1}^3 \frac {\partial \mathcal{L}} {\partial(\partial_i\phi)} \partial_i\delta\phi  \Big\} \\
&=\int \td^4 x\frac {\partial \mathcal{L}} {\partial \phi} \delta \phi + \int \gamma\td^3\bm{x} \frac {\partial \mathcal{L}} {\partial(\partial_{0}\phi)} \delta\phi \Big|_{t_i}^{t_f} - \int \td^4 x\partial_{0} \frac {\partial \mathcal{L}} {\partial(\partial_{0}\phi)} \delta\phi \\
&\ \ \ \ + \int_{\partial \Omega} \{\cdots\} -\int \td^4x \sum_{i=1}^3\partial_i \frac {\partial \mathcal{L}} {\partial(\partial_i\phi)} \delta\phi \\
&=\int \td^4 x \Big\{\frac {\partial \mathcal{L}} {\partial \phi} - \partial_{\mu} \frac {\partial \mathcal{L}} {\partial(\partial_{\mu}\phi)}\Big\}\delta \phi\\
&=0
\end{aligned}$$

Where the variation of field \(\delta\phi\) at initial(final) time \(t_i(t_f)\) shall be zero, and the integral on surface of whole space shall vanish too.


{{%/fold%}}

It is easy to generalize this equation to the field with multi independent internal degrees of freedom: \(\phi\sim \phi^r \ r=1,\cdots,N\) :

$$\frac {\partial \mathcal{L}} {\partial \phi^r} - \partial_{\mu} \frac {\partial \mathcal{L}} {\partial(\partial_{\mu}\phi^r)}=0$$



## The Hamilton Formalism

To apply Hamilton's formalism to a field theory, we need first define the `canonically conjugate momentum` :

$$\pi(x)\equiv\pi(\bm{x},t)=\frac {\delta L(t)} {\delta\flo{\phi}(\bm{x},t)} = \frac {\partial\mathcal{L}} {\partial (\partial_0 \phi)} $$

And the `Hamiltonian` of a field system is:

$$H(t) = \int \td^3 \bm{x} \mathcal{H} =\int \td^3 \bm{x} \Big(\pi(x)\flo{\phi}(x)-\mathcal{L} \Big)$$

And one can define the `Poisson Bracket` of two functionals \(F[\phi,\pi],G[\phi,\pi]\) of field and its canonically conjugate field(momentum field):

$$\{F,G\}_{PB}=\int \td^3 \bm{x} \Big\{\frac {\delta F} {\delta \phi(x)}\frac {\delta G} {\delta \pi(x)} - \frac {\delta F} {\delta \pi(x)} \frac {\delta G} {\delta \phi(x)} \Big\} $$

If \(F,G\) are all locally depend on field, that means they can expressed as the spatial integral of density functions \(\mathcal{F}(\phi(x),\pi(x)),\mathcal{G}(\phi(x),\pi(x))\) , the Poisson bracket will be:

$$\{F,G\}_{PB}=\int \td^3 \bm{x} \Big\{\frac {\partial\mathcal{F}} {\partial \phi(x)}\frac {\partial\mathcal{G}} {\partial \pi(x)} - \frac {\partial\mathcal{F}} {\partial \pi(x)} \frac {\partial\mathcal{G}} {\partial \phi(x)} \Big\} $$

By Poisson bracket, one can write down the equation of motion of the time-dependent function: \(F(t)=F[\phi,\pi]\) in Hamilton Formalism:

$$\frac {\td F(t)} {\td t} = \{F,H\}_{PB}$$

{{%fold "Proof"%}}

For any functional of \(\phi,\pi\) : \(F(t)=F[\phi,\pi]\) , we have its derivative respects of time is:

$$\frac {\td F(t)} {\td t} = \int \td^3 \bm{x} \Big\{\frac {\delta F} {\delta \phi(x)} \flo{\phi}+\frac {\delta F} {\delta \pi(x)} \flo{\pi} \Big\}$$

As for Hamiltonian, for we have:

$$H(t) = \int \td^3 \bm{x} \ \pi(x)\flo{\phi}(x)-L$$

or its variation:

$$\delta H = \int \td^3 \bm{x} \ \pi \delta\flo{\phi} + \delta\pi \flo{\phi} -\delta L $$

For \(\delta L = \int \td^3 \bm{x} \pi \delta \flo{\phi} + \frac {\delta L} {\delta \phi(x)}\delta \phi (x)=\int \td^3 \bm{x} \pi\delta\flo{\phi}+\flo{\pi}\delta \phi\)

Which is yielded by the mechanics of point system.

Then these equations directly yield:

$$\flo{\phi} = \frac {\delta H} {\delta \pi} \ ; \ \flo{\pi}=-\frac {\delta H} {\delta \phi} $$

And :

$$\frac {\td F(t)} {\td t} = \{F,H\}_{PB}$$

{{%/fold%}}

Explicitly, when Hamilton density is only depend on the field, momentum and their gradient:

$$\begin{aligned}
\frac {\partial \phi(\bm{x},t)} {\partial t} &= \frac {\delta H} {\delta \pi(\bm{x},t)} = \frac {\partial \mathcal{H}} {\partial \pi} - \nabla \cdot \frac {\partial \mathcal{H}} {\partial(\nabla \phi)} \\
\frac {\partial \pi(\bm{x},t)} {\partial t} &= -\frac {\delta H} {\delta \phi(\bm{x},t)} =- \frac {\partial \mathcal{H}} {\partial \phi} + \nabla \cdot \frac {\partial \mathcal{H}} {\partial(\nabla \pi)}
\end{aligned}$$

{{%fold "Proof"%}}

First we compute the variation's of Hamiltonian in terms of Hamilton density:

$$\begin{aligned}
\delta H &=\delta \int \td^3\bm{x} \mathcal{H}(\phi,\pi,\nabla \phi, \nabla\pi)\\
&= \int \td^3 \bm{x} \Big\{\frac {\partial \mathcal{H}} {\partial \phi} \delta \phi+\frac {\partial \mathcal{H}} {\partial \pi}\delta \pi + \frac {\partial \mathcal{H}} {\partial (\nabla \phi)} \cdot \nabla \phi+\frac {\partial \mathcal{H}} {\partial (\nabla \pi) } \cdot \nabla \pi \Big\} \\
&=\int \td^3 \bm{x}\Big\{\big(\frac {\partial \mathcal{H}} {\partial \phi} - \nabla \cdot \frac {\partial \mathcal{H}} {\partial(\nabla\phi)} \big)\delta \phi+(\phi\leftrightarrow \pi) \Big\} + \int_{\partial \Omega}\{\cdots\}
\end{aligned}$$

With the integral on area vanishing, we have:

$$\begin{aligned}
\frac {\delta H} {\delta \pi(\bm{x},t)} &= \frac {\partial \mathcal{H}} {\partial \pi} - \nabla \cdot \frac {\partial \mathcal{H}} {\partial(\nabla \phi)} \\
\frac {\delta H} {\delta \phi(\bm{x},t)} &= \frac {\partial \mathcal{H}} {\partial \phi} - \nabla \cdot \frac {\partial \mathcal{H}} {\partial(\nabla \pi)}
\end{aligned}$$

{{%/fold%}}

We can also compute the Poisson bracket between fields and momentum. Only noting \(f(\bm{x},t)=\int \td^3 \bm{x}' \delta^3(\bm{x}-\bm{x}')f(\bm{x}',t)\) :

$$\begin{aligned}
\{\phi(\bm{x},t),\phi(\bm{x}',t)\}_{PB} &= 0 \\
\{\pi(\bm{x},t),\pi(\bm{x}',t)\}_{PB} &= 0 \\
\{\phi(\bm{x},t),\pi(\bm{x}',t)\}_{PB} &= \delta^3(\bm{x}-\bm{x}')
\end{aligned}$$

Where one can treat the coordinate at left-hand-side as the parameter of the functional: \(f(\bm{x},t)\equiv f_{\bm{x}}(t)=f_{\bm{x}}[\phi,\pi]\) .

# Symmetry of Fields

## Fields under Lorentz Transformation 
