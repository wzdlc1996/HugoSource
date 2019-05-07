---
title: "Theory of Superconductivity"
date: 2019-03-28T10:20:31+08:00
draft: true
tags: ["statistical-phys"]
series: ["Condensed-Matter"]
categories: ["Physics"]
toc: true
summary: "Phase transition is an important part of the theory for solid state. Usually, phase transition is corresponding to some symmetry breaking, which yields the singularity of partition functions at the thermodynamics limit. We will use the language of quantum field theory to show the basic theory of the phase transition. What we are interested in is the phase transition about the normal conductor and super conductor."
---

# Dilute Bose Gas

## Path Integral Approach

Consider the Hamiltonian for the \(d\)-dimensional `dilute Bose gas` , with \(\hbar=1\) here:

$$\hat H=\int \td^d \bm{r} \Big\{ -\hat \psi^\dagger(\bm{r},t)\frac {\nabla^2} {2m}\hat \psi(\bm{r},t)+\frac 1 2 g \hat \psi^\dagger(\bm{r},t)\hat \psi^\dagger(\bm{r},t)\hat \psi(\bm{r},t)\hat \psi(\bm{r},t)\Big\}$$

With the coherent state set \(\ket{\phi(\bm{r},t)}\) , we have the thermal `action` in path integral. For detail see [Path-Integral-for-Many-body-System]({{< ref "Notes/qm/manybody3.md" >}}) :

$$S=\int_0^{\beta} \td \tau \int \td^d \bm{r} \ \phi^*(\bm{r},\tau) \Big\{\frac {\partial} {\partial \tau} - \frac {\nabla^2} {2m} -\mu\Big\}\phi(\bm{r},\tau)+\frac 1 2 g \big(\phi^*(\bm{r},\tau)\phi(\bm{r},\tau)\big)^2$$

In which \(\mu\) is the `chemical potential`. And \(g\) is the parameter of the interaction intensity.

And with such action, we have the partition function as:

$$\mathcal{Z}=\text{Tr} \ e^{-\beta(\hat H-\mu\hat N)} = \int_{\phi(\beta)=\phi(0)} \mathcal{D}[\phi^*]\mathcal{D}[\phi] \ e^{-S[\phi^*,\phi]}$$

## Ideal Bose Gas

First of all, we let \(g=0\) which is the case of non-interaction Bose gas or `ideal Bose gas`. To hold the boundary condition of \(\phi(\tau=\beta)=\phi(\tau=0)\) one can write down such Fourier series for \(\phi(\bm{r},\tau)\):

$$\phi(\bm{r},\tau)=\sum_n \int \frac {\td^d \bm{k}} {(2\pi)^{d/2}} \phi_{\bm{k},n} e^{\ti(\bm{k}\cdot \bm{r}-\omega_n\tau)}$$

Where \(\omega_n=\frac {2\pi n} {\beta}\) . And then the action should be:

$$S=\beta \sum_n \int \td^d \bm{k} \  \Big(-\ti \omega_n -\mu +\frac {\bm{k}^2} {2m}\Big)\phi_{\bm{k},n}^*\phi_{\bm{k},n}$$

In order that the integral is convergent, one need that \(\mu\leq 0\) . So the exponent has a positive real part. <mark>If \(\mu\gt 0\) , the system should not be stable</mark> With such strategy, one can compute the partition function as:

$$\mathcal{Z}=\prod_{n,\bm{k}}\frac 1 {-\ti\omega_n-\mu+\bm{k}^2/2m}$$

{{%fold "Proof"%}}

Firstly, we check the integral measure. In path integral, we have:

$$\mathcal{D}[\phi^*(\tau)]\mathcal{D}[\phi(\tau)]= \lim_{M\rightarrow \infty} \prod_{k=1}^M \prod_{\bm{r}} \frac {\td \phi^*(\bm{r},\tau_k)\td \phi(\bm{r},\tau_k)} {2\pi \ti}\equiv\lim_{M\rightarrow\infty} \prod_{k=1}^M \prod_{\bm{r}}\frac {\td \text{Re} \phi(\bm{r},\tau_k) \td \text{Im}\phi(\bm{r},\tau_k)} {\pi}$$

In which \(\tau_k = k \beta/M\) . Then with the Fourier transformation, we have:

$$\phi(\bm{r},\tau) =\frac 1 {\sqrt{\beta}} \sum_n \int \frac {\td^d \bm{k}} {(2\pi)^{d/2}} \phi_{\bm{k},n} e^{\ti(\bm{k}\cdot \bm{r}-\omega_n \tau)} \leftrightarrow \phi_{\bm{k},n}=\int_{0}^{\beta\hbar}\frac {\td\tau} {\sqrt{\beta}}\int\frac {\td^3 \bm{x}} {(2\pi)^{d/2}} \phi(\bm{r},\tau)e^{-\ti(\bm{k}\cdot \bm{r}-\omega_n\tau)}$$

This transform is linear and unitary(up to a scaling factor), because for the continuous version of complex-norm:

$$\sum_{\bm{r},\tau}\phi_1^*(\bm{r},\tau)\phi_2(\bm{r},\tau)\sim \int_0^{\beta}\td \tau \int \td^3 \bm{r} \ \phi_1^*(\bm{r},\tau)\phi_2(\bm{r},\tau) = \sum_n \int \td^d \bm{k} \ \phi_{1;\bm{k},n}^*\phi_{2;\bm{k},n}$$

So the variable substitution should be:

$$\lim_{M\rightarrow \infty}\prod_{k=1}^{M} \td \phi^*(\tau_k) \td \phi(\tau_k) = \prod_{n} \td \phi_{n}^* \td \phi_n$$

Then:

$$\mathcal{D}[\phi^*(\tau)]\mathcal{D}[\phi(\tau)]=\prod_{n,\bm{k}} \frac {1} {2\pi\ti} \td \phi_{\bm{k},n}^* \td \phi_{\bm{k},n}=\mathcal{D}[\phi_{\bm{k},n}^*]\mathcal{D}[\phi_{\bm{k},n}]$$

Where one may be confused by the number of factor \(2\pi\ti\). It can be treated as the same scaling factor in both sides of the equality above. And with the transform should hold the dimension invariant in discrete view, we can see that such scaling factor should be the same in the both sides of the equality of variable substitution.

In the other word, the Jacobian of such Fourier transform is:

$$J\equiv \frac {\partial(\phi^*(\tau),\phi(\tau))} {\partial(\phi^*_{\bm{k},n},\phi_{\bm{k},n})}=1$$

Such variable substitution will be widely used in the functional integral. And it also works for Grassmann number though we need to note the scaling factor there is \(1/J=1\).

So we can compute the partition function:


$$\begin{aligned}
\mathcal{Z}&=\int \prod_{n,\bm{k}} \frac {1} {2\pi \ti} \td \phi_{\bm{k},n}^*\td \phi_{\bm{k},n} \ \exp\Big(-\sum_n \int \td^d \bm{k} \big(-\ti\omega_n-\mu+\bm{k}^2/2m\big) \phi_{\bm{k},n}^*\phi_{\bm{k},n}\Big) \\
&=\prod_{n,\bm{k}} \frac {1} {\pi} \frac {\pi} {-\ti\omega_n-\mu+\bm{k}^2/2m} \\
&=\prod_{n,\bm{k}} \frac 1 {-\ti\omega_n-\mu+\bm{k}^2/2m}
\end{aligned}$$

{{%/fold%}}

Or the Grand potential:

$$\Omega = -\frac 1 \beta \log \mathcal{Z}=\frac 1 \beta \sum_{n,\bm{k}} \ \log\Big( \ti\omega_n-(\epsilon_{\bm{k}}-\mu)\Big)$$

In which \(\epsilon_{\bm{k}}=\bm{k}^2/2m\) is the dispersion relation of free particles. And the chemical potential \(\mu\) should be determined by the equation \(N=-\partial_{\mu}\Omega\)

## Interacting Case at Low Temperature

As \(g\gt 0\) , that is, there is a repelling interaction between each two Bosons. And it is the point interaction, with \(v(\bm{r}-\bm{r'})=g\delta(\bm{r}-\bm{r'})\) . With this positive-determinant term, the integral can always be convergent as \(\phi\) goes large. <mark>So the chemical potential \(\mu\) here can be positive number.</mark>

### Saddle-node approach

Like we did in the non-interaction Bose gas, there should be a constant term of \(\phi(\bm{r},\tau)\) for the `Bose-Einstein condensation` term: \(\phi_0\) . It contributes to the action with the constant term:

$$S_0=\beta V \Big(-\mu|\phi_0|^2 +\frac 1 2 g|\phi_0|^4\Big)$$

Where \(V=\int \td^d \bm{r}\) . It has a degenerate minimum point at the finite value: \(|\phi_0|^2=\mu/g\) . <mark>When the temperature is sufficient low</mark>, i.e. \(\beta\) is sufficient large, the leading term of path integral should be at the neighborhood of its minimum point, or \(\phi_0\). Such strategy is called `Saddle-node approach` in Mathematics or `Mean-field + RPA` in Physics. It works when the system performs a saddle-node bifurcation. i.e. when \(g\) increases from zero, the iso-\(S\) surface's minimum point moves from \(\phi_0=0\) to some finite value.

So we expand the field \(\phi(\bm{r},\tau)\) into two terms, constant \(\phi_0\) (without loss of generality we assume it is a real number here) and a little fluctuation term \(\phi_1(\bm{r},\tau)\) . We do the approximation that action \(S\) is still has quadratic form near \(\phi_0\) , its minimum point. So we have the action, up to the second order of \(\phi_1\). There should be three terms:

$$\begin{aligned}
S&\approx S_0 + \int_0^{\beta}\td \tau\int \td^d \bm{r} \ \Big\{\phi_0 \Big(\frac {\partial} {\partial \tau} - \frac {\nabla^2} {2m}-\mu\Big)\phi_1 +\phi_1^*(-\mu \phi_0)+g \phi_0^3 (\phi_1^*+\phi_1)\Big\} \\
&\indent +\int_0^{\beta}\td\tau \int \td^d \bm{r} \ \Big\{\phi_1^*(\bm{r},\tau)\Big(\frac {\partial} {\partial \tau}-\frac {\nabla^2} {2m} - \mu\Big)\phi_1(\bm{r},\tau)+\frac 1 2 g\phi_0^2\big((\phi_1^*+\phi_1)^2+2\phi_1^*\phi_1\big)\Big\}
\end{aligned}$$

Introducing the real fields \(A, P\) for \(\phi_1\) by writing \(\phi_1=A+\ti P\). Then we have a simpler form of the action:

$$S=S_0+\int_0^\beta \td \tau \int\td^d \bm{r} \ \Big\{A\Big(-\frac {\nabla^2} {2m}+2g\phi_0^2\Big)A+ P\Big(-\frac {\nabla^2} {2m}\Big)P +2\ti A\partial_\tau P\Big\}$$

{{%fold "Proof"%}}

Firstly, use the fact \(\phi_0\) is the minimum point so \(\phi_0^2=\mu/g\) , or \(\mu=g \phi_0^2\) , it can make some simplification.

Let us begin with the first order:

$$\begin{aligned}
S_1 &= \int_0^{\beta}\td \tau\int \td^d \bm{r} \ \Big\{\phi_0 \Big(\frac {\partial} {\partial \tau} - \frac {\nabla^2} {2m}-\mu\Big)\phi_1 +\phi_1^*(-\mu \phi_0)+g \phi_0^3 (\phi_1^*+\phi_1)\Big\}\\
&=\int_0^\beta \td \tau \int \td^d \bm{r} \ \Big\{\phi_0\Big(\frac {\partial} {\partial \tau}-\frac {\nabla^2} {2m}\Big)\phi_1\Big\}

\end{aligned}$$

There are two terms, the first is time-integral of a time-differential. With the boundary condition \(\phi_1(\beta)=\phi(0)\) , it vanishes automatically. The second term is a spatial integral for an Laplacian of a field, or \(\nabla\cdot(\nabla \phi_1)\) , a divergence term. Its integral over the whole space should be zero. So \(S_1=0\) .

Then let us deal with the second order:

$$\begin{aligned}
S_2&=\int_0^{\beta}\td\tau \int \td^d \bm{r} \ \Big\{\phi_1^*(\bm{r},\tau)\Big(\frac {\partial} {\partial \tau}-\frac {\nabla^2} {2m} - \mu\Big)\phi_1(\bm{r},\tau)+\frac 1 2 g\phi_0^2\big((\phi_1^*+\phi_1)^2+2\phi_1^*\phi_1\big)\Big\} \\
&=\int_0^{\beta}\td\tau \int \td^d \bm{r} \ \Big\{\phi_1^*(\bm{r},\tau)\Big(\frac {\partial} {\partial \tau}-\frac {\nabla^2} {2m} \Big)\phi_1(\bm{r},\tau)+\frac 1 2 g\phi_0^2(\phi_1^*+\phi_1)^2\Big\} \\
&=\int_0^{\beta}\td\tau \int \td^d \bm{r} \ \Big\{A(\partial_\tau-\nabla^2/2m+2g\phi_0^2)A+P(\partial_\tau-\nabla^2/2m)P+\ti\Big(A\partial_\tau P-P\partial_\tau A+ \frac {A\nabla^2 P-P\nabla^2 A} {2m}\Big)\Big\}
\end{aligned}$$

With the fact that:

$$\int_0^\beta \td \tau X \partial_\tau X=\frac 1 2 X^2\Big|_{0}^\beta=0 \ ; \ \int_0^{\beta} \td \tau X\partial_\tau Y=XY\Big|_0^\beta-\int_0^\beta \td\tau Y\partial_\tau X=-\int_0^\beta \td\tau Y\partial_\tau X$$

If \(X(\beta)=X(0)\) , and the identity \(A\nabla^2 P-P\nabla^2 A=\nabla\cdot(A\nabla P-P-\nabla A)\) . So some terms should be zero. And finally, we have:

$$S_2=\int_0^\beta \td \tau \int\td^d \bm{r} \ \Big\{A\Big(-\frac {\nabla^2} {2m}+2g\phi_0^2\Big)A+ P\Big(-\frac {\nabla^2} {2m}\Big)P +2\ti A\partial_\tau P\Big\}$$
{{%/fold%}}

Such introduced fields \(A,P\) has different influence on \(\phi_0\) . For the generic case of \(\phi_0\in \mathbb{C}\) , \(A\) is the term which variates \(\text{Re}\phi_0\) , and \(P\) is the term which variates \(\text{Im}\phi_0\) . So our discussion can be also applied to such generic case, if only reinterpret the definition of \(A\) and \(P\).

As the \(S_2\) is a quadratic form of the field \(A,P\) , we can rewrite it in the Fourier transform:

$$S=S_0 + \sum_{\omega_n}\int \td^d \bm{k} \ \begin{bmatrix}A(-\bm{k},-\ti \omega_n) \\ P(-\bm{k},-\ti\omega_n)\end{bmatrix}^{T}\begin{bmatrix}\frac {\bm{k}^2} {2m} +2g\psi_0^2 & \omega_n \\ -\omega_n & \frac {\bm{k}^2} {2m} \end{bmatrix} \begin{bmatrix}A(-\bm{k},-\ti \omega_n) \\ P(-\bm{k},-\ti\omega_n)\end{bmatrix}$$



# Dilute Bose Gas

\(\psi\) are coherent state!.convergent

Our thermal action functional(with wick rotation) is, with \(\hbar=1\) here:

$$S=\int_0^{\beta} \td \tau \int \td^d \bm{r} \ \psi^*(\bm{r},\tau)\Big\{\frac {\partial} {\partial \tau} -\frac {\nabla^2} {2m} -\mu\Big\}\psi(\bm{r},\tau) +\frac 1 2 g \psi^*(\bm{r},\tau)\psi(\bm{r},\tau)$$

And with the path integral formalism, we have the partition function:

$$\mathcal{Z}=\text{Tr} \ e^{-\beta(\hat H-\mu\hat N)}=\int_{\psi(\beta)=\psi(0)} \mathcal{D}[\psi^*]\mathcal{D}[\psi] e^{-S[\psi^*,\psi]}$$

## Ideal Bose Gas

First of all, we let \(g=0\) , which means that we are handling the `ideal Bose gas`. To hold the boundary condition \(\psi(\tau=\beta)=\psi(\tau=0)\) , we can expand it with discrete Fourier series, just like the way we deal with the thermal function:

$$\psi(\bm{r},\tau)=\sum_n \int \frac {\td^d \bm{k}} {(2\pi)^d} \psi_{\bm{k},n} e^{\ti (\bm{k}\cdot \bm{r}-\omega_n \tau)}$$

Where \(\omega_n=\frac {2\pi} {\beta} n\). And:

$$\psi_{n,\bm{k}}=\frac 1 \beta \int_0^\beta \td \tau \int \td^d \bm{r} \ \psi(\bm{r},\tau) e^{-\ti(\bm{k}\cdot \bm{r}-\omega_n\tau)}$$

Then we have the action:

$$S=\beta \sum_n \int \frac {\td^d \bm{k}} {(2\pi)^d} \psi_{n,\bm{k}}^* (-\ti \omega_n+\frac {\bm{k}^2} {2m}-\mu)\psi_{n,\bm{k}}$$

Here we can see that \(\mu\) should not be a positive number. Cause the integral of \(e^{-S}\) should be not divergent. And so a theory of \(\mu\gt 0\) must not be stable.

\(\psi(\bm{r},t)=\psi_0+\psi_1(\bm{r},t)\) . Then \(\psi_1=A+\ti P\). compute the action with Fourier transformation as:

$$S=\begin{bmatrix} A(\bm{k},\ti \omega_n) &  P \end{bmatrix} \begin{bmatrix} \frac {k^2} {2m}+2g \psi_0^2 & \omega_n \\ -\omega_n & \frac {k^2} {2m} \end{bmatrix}\begin{bmatrix} A(\bm{k},\ti \omega_n) \\  P \end{bmatrix}$$

Green's function:

$$G=\langle \mathcal{T}\{\psi\psi^\dagger\}\rangle=\frac {\int \mathcal{D}[\phi]\mathcal{D}[\psi^*] \psi \psi^\dagger e^{-S}} {\int \mathcal{D}[\phi]\mathcal{D}[\psi^*]  e^{-S}}$$

time-ordered vanishes.


XYmodel Nagosa 3.1-3.3

Mermon-Wigner-Huherberg theorem

KT transition : Kolsterlitz-Thouless-Berznis transition

# KT transition

the hamiltonian is

$$H=\frac J 2 \int \td x\td y \ (\nabla \theta)^2$$

The "equation of motion" is Laplacian equation: \(\nabla^2 \theta=0\).

For the complex valued field: \(\psi=\psi_1+\ti \psi_2\),  and \(\ti \partial_x \psi_1=\partial_y \psi_2\) , Then \(\psi\) is the solution of Laplacian equation.

So any analytical complex argument function can satisfy the equation. Like \(\log (x+\ti y)\). For the field \(\theta\) should be real, we usually choose the imaginary/real part of the analytical functions.

If we choose \(\theta = \pm\text{Im} \log (z-z_0)\) where \(z=x+\ti y\) . Then:

$$\oint_\gamma \td \theta = \oint_{\gamma}\frac {\td z} {z-z_0} = \begin{cases}\pm \ti 2\pi & z_0\text{ in }\gamma \\ 0 & \text{oterwise}\end{cases}$$

So the x-y model supports excitations with non-zero winding number.

## A bit of algebra

winding number as integers, the set is isomiphis to the group \(\pi_1(S^1)\) , where \(S^1\) is the 2-D sphere. And \(\pi_1(S^1)\) 's elements are equivalence class of curves. (homotopy class)

For paths on a space \(X\),: \(f:I\rightarrow X\) , where \(I=[0,1]\) .

A homotopy of curves: a family of maps \(f_t:I\rightarrow X\) :

1.  \(t\in I\) : \(f_t(0)=x_0, f_t(1)=x_1\)
2.  associated map \(F: I\times I\rightarrow X\) is continuous.

2 meas these two curves \(f_0,f_1\) can be connected by some homotopy. Usually we denote it as \([f]\). As the set of all curves homotopy to \(f\).

**Multiplication** : \([f][g]=[f\cdot g]\) . Where \(f\cdot g\) means two curves' composition: \(f,g: I\rightarrow X\) , such that \(f(1)=g(0)\) . Or \(f\)'s end is \(g\)'s start. So the composition curve is defined as:

$$f\cdot g : I\rightarrow X: f\cdot g(x)=\begin{cases}f(2s) & 0\leq s\leq 1/2 \\ g(2s-1) & 1/2\leq s\leq 1\end{cases}$$

So we can make a summary:

1.  Reflexity \(f\sim f\) , according to the definition of homotopy of curves
2.  symmetry \(f\sim g \Rightarrow g\sim f\) .
3.  trasitivity \(f_0\sim f_1\) via \(f_t\) , and \(g_0\sim g_1\) via \(g_t\). Where \(g_1=f_1\) . So \(f_0\sim g_0\). via \(f_\cdot \cdot g_\cdot (t)\) , the composition between path: \(f_\cdot\), or the continuous deformation

**loop** is such curves \(f\) : \(f(0)=f(1)=x_0\in X\) .

So let us explain what is \(\pi_1(S^1)\):

It is the group write to the product of multiplication of loops \(f: I\rightarrow S^1\): \([f][g]=[f\cdot g]\) (\(\pi_n\) is the "surface" of \(I_n\rightarrow S^1\))

**trivial element** : \(f(s)=x\) , or the "point"

**inverse element** : \([f]^{-1}=[f(1-s)]\)

_[Theorem]_ : \(\pi_1(S^n) =0\) for all \(n\gt 1\).

_[Theorem]_ : \(\pi_1(X\times Y)\sim \pi_1(X)\times \pi_2(Y)\) . Where \(\sim\) means isomotopy.

## XY model

### n=1 vortex

$$E_{vortex}=\frac J 2\int \td x \td y \nabla \theta \cdot \nabla \theta = \pi J \log \frac {r_c} a$$

Where for \(n=1\) we have \(\theta =\text{Im}\log (x+\ti y)\)

Then the configuration entropy:

$$S_{vortex}=\log \frac {r_c^2} {a^2}$$

is the logarithm of the probability .

$$\mathcal{Z}=\int \td \theta_1\cdots \int \td \theta_N \ e^{\beta J\sum_{<ij>}\cos(\theta_i-\theta_j)}$$

### Villiam model

$$V(\theta-\theta')=-K(1-\cos(\theta-\theta'))$$

And \(e^{V(\theta-\theta')}\) is a periodic function : \(e^{V(\theta)}=e^{V(\theta+2\pi n)}\).

For small \(\theta\) one has \(V(\theta) = -\frac K 2 \theta^2\).

Fourier transform of \(e^{V(\theta)}\) as \(K\) is large is Gaussian function:

$$\mathcal{F}\{e^{V(\theta)}\} \sim \frac 1 {\sqrt{2\pi K}}e^{-\phi^2/2K}$$

Exact solution is imaginary argement Bessel function.

We will use villain model even if \(K\) may not be large:

$$e^{K\cos(\Delta_\mu \theta)} = \sum_{m\in \mathbb{Z}}e^K e^{-\frac K 2 (\Delta_\mu \theta-m2\pi)^2}$$

Where \(\Delta_\mu \theta=\theta(x+\mu)-\theta(x)\).

Poisson summation formula:

$$\sum_{m=-\infty}^{\infty} h(m) = \sum_{l=-\infty}^{\infty} \int_{-\infty}^{\infty} \td \phi \ h(\phi) e^{\ti l 2\pi \phi}$$

So:

$$\sum_{m\in \mathbb{Z}} e^K e^{-\frac K 2 (\Delta_\mu \theta-m 2\pi)^2}=\sum_{l=-\infty}^{\infty}\int_{-\infty}^{\infty} \td \phi \ e^K e^{-\frac K 2 (\Delta_\mu \theta- \ti l 2\pi \phi)^2}=\frac {e^K} {\sqrt{2\pi K}} \sum_l e^{-\ti l \Delta_\mu \theta} e^{-l^2 /2K}$$

So the partition function:

$$\mathcal{Z}=\int \td \theta_1\cdots \int\td \theta_N \ \sum_{\{l_\mu\}} \exp\Big(-\sum_{\mu} \frac {l_\mu^2} {2K}-\ti l_\mu \Delta_\mu\theta\Big)$$

For integral of \(\theta_i\) , it is: \(l_\mu\Delta_\mu\theta = l_\mu \theta_{i+\mu}-l_\mu \theta_{i}\) . Then that is:

$$\int \td \theta_i \ e^{-\ti(l_{i-\mu,\mu}-l_{i,\mu})\theta_i}$$

It vanishes unless \(l_{i-\mu,\mu}-l_{i,\mu}=0\) . Or we have: \(\Delta_\mu l_{i,\mu}=0\) . So:

$$\mathcal{Z}=\sum_{\{l_{i,\mu}\}}^{\Delta_\mu l_{i,\mu}=0} \exp\Big(-\sum_{i,\mu}\frac {l_{i,\mu}^2} {2K}\Big)$$

Continuous \(l_{i,\mu}\rightarrow \bm{l}(x)=(l_{i,1},l_{i,2})\), where \(x\sim i\)

So constraint is \(\nabla\cdot \bm{l}=0\) . That is \(\bm{l}=\nabla\times \bm{n}\) . For 2-d case: \(\bm{l}=(\partial_y n, -\partial_x n)\)/ So \(l_{i,\mu}=\epsilon_{\mu\nu} \Delta_\nu n\) . Sum for \(\nu\) . Then we have a new integer field \(n_i\).

$$\mathcal{Z}=\sum_{n_i} \exp\Big(-\frac 1 {2K} \sum_{\ti,\nu}(\Delta_\nu n_i)^2\Big)$$

Use poisson summation formula we get continuous field \(\phi\) back, Then make Fourier transform for \(\phi\) .

some discussion on Nagosa's book

Jose PRB 1977

## Now let us take a step back

For poisson summation formula:

$$\begin{aligned}
\sum_{n\in \mathbb{Z}} h(n)&=\sum_{l\in \mathbb{Z}}\int_{-\infty}^{\infty}\td \phi \ h(\phi)e^{\ti l2\pi\phi+l^2\log y} \\
&= \int\td \phi \ h(\phi)\Big(1+2 \sum_{l=1}^{\infty} y^{l^2}\cos(l 2\pi\phi)\Big) \\
&\approx \int\td \phi \ h(\phi) e^{2y\cos(2\pi \phi)}
\end{aligned}$$

Where we always let \(y=1\) so that the added term makes no difference.

This will help us to deal with the `sine-model`:

$$\begin{aligned}
\mathcal{Z}&=\int \prod \td \phi_i \ \exp\Big(-\frac 1 {2K} \sum_{i,\mu}(\Delta_\mu \phi_i)^2+2y \sum_i \cos 2\pi\phi_i\Big) \\
&=\int \prod \td (\sqrt{K}u_i) \ \exp\Big(-\frac 1 {2} \sum_{i,\mu}(\Delta_\mu u_i)^2+2y \sum_i \cos 2\pi\sqrt{K}u_i\Big)
\end{aligned}$$

Let us show the classical trajectory . So we should write it into a continuous version. Field and configuration space:

$$\mathcal{Z}=\int \prod\td u_i \ \exp\Big(\int \td r \ -\frac 1 2 (\nabla u)^2+2y \cos 2\pi \sqrt{K} u \Big)$$

So the Euler-Lagrange equation:

$$2y (2\pi \sqrt{K}) \sin(2\pi\sqrt{K}u)-\nabla^2 u=0$$

A constant solution can show us how to maximize the action.

For any system, one can write:

$$\mathcal{Z}=\int \mathcal{D}[\phi] \ e^{-S(\phi)} = \int\mathcal{D}\phi \ e^{-S_0} \frac {\int\mathcal{D}\phi \ e^{-S_0}e^{-(S-S_0)}} {\int\mathcal{D}\phi \ e^{-S_0}} = \mathcal{Z}_0 \langle e^{-(S-S_0)}\rangle_0$$

Where \(\langle \cdots \rangle_0\) means the average on the probability distribution of \(S_0\)

Then the free energy:

$$F=-\frac 1 \beta \log \mathcal{Z}=F_0-\frac 1 \beta \log \langle e^{-(S-S_0)}\rangle_0 \leq F_0 -\frac 1 \beta \log e^{-\langle S-S_0\rangle_0}$$

Then one can choose

$$S_0=\int \td r \Big(-\frac 1 2 (\nabla\phi)^2+\frac {m^2} 2 (\phi-\phi_0)^2\Big)$$

And get some properties. For example, when we expand \(\cos \cdots\) up to second order, we have:

$$F(m)=T \Big(m^2-2y\big(\frac {m^2} {k_c^2}\big)^{3K/2}\Big)$$

is the minimum of the super bound. One can see how K-T transition happen on the exponent of \(K\).


# Superconductivity

## Pair operator:

$$\hat \Phi_{\sigma_1,\sigma_2}(r_1,r_2):=\hat \psi_{\sigma_1}^\dagger(r_1)\hat\psi_{\sigma_2}^\dagger(r_2)$$

Its Fourier transform, with coordinate transform \(r_1+r_2=2R, r_1-r_2=r\) , one has:

$$\hat \Psi_{\sigma_1,\sigma_2}(r,R)=\frac 1 {\sqrt{V}}\sum_{k_1}\hat \psi_{\sigma_1,k_1} e^{-\ti k_1\cdot(R+r/2)} \frac 1 {\sqrt{V}} \sum_{k_2}\hat \psi_{\sigma_2,k_2}e^{-\ti k_2\cdot (R-r/2)}=\frac 1 {\sqrt{V}} \sum_Q e^{-\ti Q\cdot R} \frac 1 {\sqrt{V}}\sum_{k} e^{-\ti (k-Q/2)\cdot r} \hat \psi_{\sigma_1,k}^\dagger\hat \psi_{\sigma_2,Q-k}^\dagger$$

Let the last term is \(\hat \Psi_{\sigma_1,\sigma_2}(r,Q)\) , That is \(\hat \Psi_{\cdots}(r,R)=\frac 1 {\sqrt{V}}\sum_Q e^{-\ti Q\cdot R} \hat \Psi_{\cdots}(r,Q)\).

Then, one can write the interaction term:

$$\hat H_{int}=\frac 1 2 \int \td^3 r \int \td^3 R \ \hat \Phi_{\sigma_1,\sigma_2}^\dagger(r,R) v(r)\hat \Psi_{\sigma_1,\sigma_2}(r,R)$$

With the sort of mean-field approximation, we let the Coulomb interaction has a effective range. Then the interaction can be write as the form of \(v(r)=u\delta(r)\) . where \(u\) is a control parameter. So with the Fourier transformation:

$$\hat H_{int}=u \sum_Q \hat \Psi_{u,d}^\dagger (0,Q)\hat \Psi_{u,d}(0,Q)$$

Now let the energy cut off: \(\Gamma_0\) . It renormalizes the interaction down to \(\omega_D\). With Gaussian integral one has:

$$e^{-u\int_0^\beta \td\tau\int \td^3 R \ \Phi_{u,d}(0,R,\tau)^* \Phi_{u,d}(0,R,\tau)} = \int \mathcal{D} \Delta^*\mathcal{D}\Delta \ \exp\Big(-\int_0^\beta \td\tau \int \td^3 R \ \frac 1 u \Delta^*\Delta +\ti \Delta^*\Phi_{u,d}+\ti \Delta \Phi_{u,d}^* \Big)$$

Where \(\Phi_{u,d}\) as a pair of Grassmann field, is bosonic. The cut off is introduced here:

$$\Phi_{u,d}(0,R,\tau)=\psi_d (R,\tau)\psi_u(R,\tau)$$

And Grassmann field:

$$\psi_\sigma(R,\tau)=\frac 1 {\sqrt{V}} \sum_n \sum_{k}^{<\Gamma_0} e^{\ti (k\cdot R-\omega_n \tau)}\psi_\sigma(k,\ti\omega_n)$$

Partition function:

$$Z=\int \mathcal{D}\psi^*\mathcal{D}\psi \mathcal{D}\Delta^*\mathcal{D}\Delta \ e^{-S[\psi^*,\psi,\Delta^*,\Delta]}$$

Where action:

$$S=\sum_{l,Q} \frac 1 u \Delta^*(Q,\ti\omega_l)\Delta(Q,\ti\omega_l) + \sum_{l,\sigma} \sum_k^{<\Gamma_0} (-\ti\omega_l+\eta_k) \psi_\sigma^*(k,\ti\omega_l)\psi_\sigma(k,\ti\omega_l)+ \text{Coupling between }\Delta \& \psi_u,\psi_d$$

Where \(u\) should be also the function of cut off \(\Gamma_0\) .

Now with a new cut off \(\Gamma\) , take \(Q,\omega_l\rightarrow 0\)  (\(\omega\) of \(\Delta\)) , cuz it is bosonic, so it can be at zero.

$$S_0(\Gamma)=\frac 1 {u(\Gamma)} \Delta(0)^*\Delta(0)+\sum_{\sigma,n}\sum_k^{<\Gamma} (-\ti\omega_n+\eta_k)\psi_\sigma(k,\ti\omega_n)^*\psi(k,\ti\omega_n)\\+\frac {\ti \Delta^*(0)} {\sqrt{\beta V}} \sum_n\sum_{k}^{<\Gamma} \psi_d(-k,-\ti\omega_n)\psi_u(k,\ti\omega_n)+\frac {\ti \Delta(0)} {\sqrt{\beta V}} \sum_n\sum_{k}^{<\Gamma} \psi_u(k,\ti\omega_n)^*\psi_d(-k,-\ti\omega_n)^*$$

Let us integral out all Grassmann field in the energy scale \([\Gamma+\td \Gamma,\Gamma]\) :

To do so, we need to write the quadratic form of Grassmann variables to the Matrix form:

$$\sum_n\sum_k^{<\Gamma} \Psi(k,\ti\omega_n)^\dagger G(k,\ti\omega_n)^{-1}\Psi(k,\ti\omega_n)$$

Where we introduce the `Nambu spinor` :

$$\Psi(k,\ti\omega_n) = \begin{bmatrix} \psi_u (k,\ti\omega_n) \\ \psi_d(-k,-\ti\omega_n)^*\end{bmatrix}$$

Then:

$$G^{-1}=\begin{bmatrix} -\ti\omega_n +\eta_k & \frac {\Delta} {\sqrt{\beta V}} \\ \frac {\Delta^*} {\sqrt{\beta V}} & -\ti\omega_n-\eta_k \end{bmatrix}$$

Then let us integral out the grassmann field in the element \(\td \Gamma\):

$$e^{-S_0(\Gamma-\td\Gamma)}=\int_{\td\Gamma} \mathcal{D}\psi^*\mathcal{D}\psi \ e^{-S_0(\Gamma)}=e^{-\Delta^*\Delta/u(\Gamma)} \prod_{n,k}^{\td\Gamma}\det G(k,\ti\omega_n)^{-1} \ e^{-\sum_n\sum_k^{<\Gamma-\td\Gamma}\Psi^\dagger G^{-1}\Psi}$$

Then one has:

$$\frac {\Delta^*\Delta} {u(\Gamma-\td \Gamma)}=\frac {\Delta^*\Delta} {u(\Gamma)}-\sum_n \sum_k^{\td \Gamma} \log \det G(k,\ti\omega_n)^{-1}$$

Take match coefficient \(\Delta(0)^*\Delta(0)\) , we have the equation:

$$\frac 1 {u(\Gamma-\td\Gamma)} - \frac 1 {u(\Gamma)}=\frac 1 {\beta V} \sum_n \sum_k^{\td\Gamma} \frac 1 {\omega_n^2+\eta_k^2}=\frac 1 {2V}\sum_k^{\td \Gamma} \frac 1 {|\eta_k|} = g(0) \frac {\td \Gamma} {\Gamma}$$

Where the summation \(\sum_k^{\td \Gamma}\) means to sum over all \(k\) of \(\Gamma-\td\Gamma < \eta_k <\Gamma\) . And \(g(0)\) is the density of state at fermi surface.

Then the equation can be solved. The solution is:

$$u(\omega_D)= \frac u {1+g(0) u \log \frac {\Gamma} {\omega_D}}$$

With the initial condition \(u(\Gamma) = u\) .

## BCS Hamiltonian

$$\hat H=\int\td r \sum_\sigma \psi_\sigma(r)^\dagger \Big(\frac {(-\ti\nabla+e A)^2} {2m} -e \phi+g(0)u\Big)\psi_\sigma(r)- V\int \td r \psi_u^\dagger \psi_d^\dagger \psi_d\psi_u$$

With \(V\gt 0\) is the attractive interaction.

Hubbard-Strantenouch:

$$e^{V\int \td\tau\int \td r \psi_u^*\psi_d^*\psi_d\psi_u}= \int \mathcal{D}\Delta^*\mathcal{D}\Delta \ \exp\Big(-\frac {\Delta^*\Delta} V+\Delta^* \psi_d\psi_u+\Delta \psi_u^*\psi_d^*\Big)$$

Then action:

$$S=\int \td\tau \int \td r \ \frac {\Delta^*\Delta} V+\psi_\sigma^*\Big(\partial_\tau+\frac {(-\ti\nabla+e A)^2} {2m}-\ti e \phi-\mu\Big)\psi_\sigma - \Delta^*\psi_d \psi_u - \Delta \psi_u^*\psi_d^*$$

WHere \(\ti\) of the term \(\phi\) come from the equation \(\phi=\partial A/\partial t\) . With nambu spinor:

$$S=\int \td \tau \int \td r \frac {\Delta^*\Delta} {V} + \Psi^\dagger G^{-1}\Psi$$

Where:

$$G^{-1}=\begin{bmatrix}a & \Delta \\ \Delta^* & b \end{bmatrix}$$

WHere \(a=-\partial_\tau -h \ , \ b=-\partial_\tau +h\) ,  \(h=p^2/2m +e\phi-\mu\) .

And let \(V\) follow the same renormalization procedure. We have:

$$V(\Gamma) = \frac {V} {1+g(0) V \log \frac {\Gamma} {\omega_D}}$$

### Mean field

Using the mean-field theory:

$$S=a(T) \Delta(0)^*\Delta(0)$$

THe critical temperature is the zero point of \(a(T)\) .

### Spatial dependence

Now let us add spatial dependence to \(\Delta\)s.:

$$\Delta \rightarrow \Delta(r) \ ; \ \Delta^*\rightarrow \Delta^*(r)$$

The the action:

$$S_0=\sum_Q\frac 1 V \Delta^*(Q)\Delta(Q) + \sum_n \sum_k^{<\omega_D} (-\ti\omega_n+\eta_k)\psi_\sigma^*(k,\ti\omega_n)\psi_\sigma(k,\ti\omega_n) \\
+\frac 1 {\sqrt{\beta\Omega}}\sum_{n,k}^{<\omega_D}\sum_Q^{|\eta_{Q-k}|<\omega_D} \Delta^*(Q)\psi_\sigma(Q-k,-\ti\omega_n)\psi_\sigma(k,\ti\omega_n)+\frac 1 {\sqrt{\beta\Omega}}\sum_{n,k}^{<\omega_D}\sum_Q^{|\eta_{Q-k}|<\omega_D} \Delta(Q)\psi_\sigma^*(k,\ti\omega_n)\psi_\sigma^*(Q-k,-\ti\omega_n)$$

ref. Nagosa

With the variable substitution: \(\frac Q 2 -k\rightarrow k,Q\rightarrow q\) , we have:

$$S_0=\sum_q \frac 1 V \Delta^*(q)\Delta(q) + \sum_{n,k,q}\Psi^\dagger G^{-1}\Psi$$

WHere:

$$\Psi=\begin{bmatrix} \psi_u(\frac 1 2 q-k,\ti\omega_n) \\ \psi_d(\frac 1 2 q+k,-\ti\omega_n)\end{bmatrix} \   ; \ G^{-1}=\begin{bmatrix}-\ti\omega_n +\eta_{\frac q 2 -k} & \frac 1 {\sqrt{\beta\Omega}} \Delta(q) \\ \frac 1 {\sqrt{\beta\Omega}}\Delta^*(q) & -\ti\omega_n-\eta_{\frac q 2 +k}\end{bmatrix}$$

THen integrate out all Grassmann field. But use the approximation that \(\Delta(q)\) is sufficient small, we can have a form of:

$$S=\sum_q [a(q)-a(0)] \Delta^*(q)\Delta(q) + S'(\Delta^*(0),\Delta(0))$$

The second term is the action of mean-field theory. One may need to use the expansion: \(\log(1-x)\approx x\)
