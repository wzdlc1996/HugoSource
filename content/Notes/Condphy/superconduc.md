---
title: "Theory of Superconductivity"
date: 2019-04-22T16:08:36+08:00
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

{{<fold "Proof">}}

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

{{</fold>}}

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

{{<fold "Proof">}}

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
{{</fold>}}

Such introduced fields \(A,P\) has different influence on \(\phi_0\) . For the generic case of \(\phi_0\in \mathbb{C}\) , \(A\) is the term which variates \(\text{Re}\phi_0\) , and \(P\) is the term which variates \(\text{Im}\phi_0\) . So our discussion can be also applied to such generic case with the reinterpretation of the definition of \(A\) and \(P\).

As the \(S_2\) is a quadratic form of the field \(A,P\) , we can rewrite it in the Fourier transform:

$$S=S_0 + \sum_{\omega_n}\int \td^d \bm{k} \ \begin{bmatrix}A(-\bm{k},-\ti \omega_n) \\ P(-\bm{k},-\ti\omega_n)\end{bmatrix}^{T}\begin{bmatrix}\frac {\bm{k}^2} {2m} +2g\phi_0^2 & \omega_n \\ -\omega_n & \frac {\bm{k}^2} {2m} \end{bmatrix} \begin{bmatrix}A(\bm{k},\ti \omega_n) \\ P(\bm{k},\ti\omega_n)\end{bmatrix}$$

{{< fold "Proof">}}

With the Fourier transformation:

$$X(\bm{r},\tau)=\frac 1 {\sqrt{\beta}} \sum_n \int \frac {\td^d \bm{k}} {(2\pi)^{d/2}} e^{\ti(\bm{k}\cdot \bm{r}-\omega_n\tau)} X(\bm{k},\ti\omega_n)  \ ; \ \text{symbol } X \in \{A,P\}$$

Then let us see the quadratic form. Noting that \(A,P\) are real valued so \(X(\bm{k},\ti\omega_n)^*=X(-\bm{k},-\ti\omega_n)\) :

$$\begin{aligned}
\int_0^\beta \td\tau \int \td^d \bm{r} \ X \nabla^2 X&=\sum_{m,n} \int \td^d \bm{k}\td^d\bm{k'} \ \delta_{m,-n}\delta(\bm{k}+\bm{k'}) X(\bm{k'},\ti\omega_m) (-\bm{k}^2)X(\bm{k},\ti\omega_n)\\
&=-\sum_{\omega_n}\int\td^d \bm{k} \ X(-\bm{k},-\ti\omega_n) \bm{k}^2 X(\bm{k},\ti\omega_n) \\
\int_0^\beta \td\tau \int \td^d \bm{r} \ X\partial_{\tau} Y&= -\ti\sum_{\omega_n}\int\td^d \bm{k} \ X(-\bm{k},-\ti\omega_n) (\omega_n) Y(\bm{k},\ti\omega_n) \\
&=-\ti \sum_{\omega_n} \int \td^d\bm{k} \ Y(-\bm{k},-\ti\omega_n) (-\omega_n) X(\bm{k},\ti\omega_n)
\end{aligned}$$

With these equalities in mind, one can simply prove the Fourier transform of action.

{{< /fold >}}

Then one can evaluate the thermal Green's function with the momentum-frequency argument:

$$-\Big\langle \begin{bmatrix} A(\bm{k},\ti\omega_n) \\ P(\bm{k},\ti\omega_n)\end{bmatrix} \begin{bmatrix}A(-\bm{k},-\ti\omega_n) & P(-\bm{k},-\ti\omega_n) \end{bmatrix} \Big\rangle =-\frac 1 2 \frac 1 {\frac {\bm{k}^2} {2m}\big(\frac {\bm{k}^2} {2m}+2g\phi_0^2\big)+\omega_n^2}\begin{bmatrix} \bm{k}^2/2m & -\omega_n \\ \omega_n & \bm{k}^2/2m+2g\phi_0^2 \end{bmatrix}$$

{{< fold "Proof">}}

We have known that the Green's function of system with spatial translation symmetry in frequency-momentum representation should be:

$$\mathcal{G}(\bm{k},\ti\omega_n)= - \langle \mathcal{T}\{\hat \phi(\bm{k},\ti\omega_n)\hat \phi^\dagger(-\bm{k},-\ti\omega_n)\}$$

For detial see [The proof for real time Green's function]({{< ref "/Notes/qm/manybody2.md#frequency-momentum-representation" >}}). It should be easy to be generalized to the thermal Green's function.

With this in mind together with the relation between time-ordered expectation value and the path integral, we can write down the "Green's function"-like matrix:

$$\begin{aligned}
\langle \phi_1 \phi_1^*\rangle &= \langle (A+\ti P)(A'-\ti P')\rangle \\
&= \langle A A'\rangle +\ti \langle P A'\rangle -\ti \langle A P'\rangle -\ti\ti \langle P P'\rangle \\
&\sim \Big \langle \begin{bmatrix} A A' & A P' \\ P A' & P P'\end{bmatrix}\Big\rangle =-\bm{G}
\end{aligned}$$

For the total field should be \(\phi=\phi_0+\phi_1\), then the Green's function is (Note that \(\phi_0\) is a real number):

$$\mathcal{G}=\langle(\phi_0+\phi_1)(\phi_0+\phi_1^*)\rangle = \phi_0^2 + \langle \phi_1\phi_1^*\rangle$$

Where we used the fact that expectation value of odd number of field should vanish. Then the connection between Green's function and the matrix is:

$$\mathcal{G}-\phi_0^2=\bm{G}_{11}+\bm{G}_{22} +\ti (-\bm{G}_{12}+\bm{G}_{21})$$

Then let us evaluate the matrix:

$$\begin{aligned}
\bm{G}(\bm{k},\ti\omega_n)&=-\Big\langle \begin{bmatrix} A(\bm{k},\ti\omega_n) \\ P(\bm{k},\ti\omega_n)\end{bmatrix}\begin{bmatrix}A(-\bm{k},-\ti\omega_n) & P(-\bm{k},-\ti\omega_n) \end{bmatrix}\Big\rangle \\
&= -\frac {\int \mathcal{D}\phi_1^* \mathcal{D}\phi_1 e^{-S} \begin{bmatrix} A(\bm{k},\ti\omega_n) \\ P(\bm{k},\ti\omega_n)\end{bmatrix}\begin{bmatrix}A(-\bm{k},-\ti\omega_n) & P(-\bm{k},-\ti\omega_n) \end{bmatrix} \ } {\int \mathcal{D}\phi_1^* \mathcal{D}\phi_1 \ e^{-S}} \\
&=-\frac {\partial^2} {\partial \bm{J} \partial {\bm{J^*}}} \frac 1 {\mathcal{Z}} \int \mathcal{D}A\mathcal{D}P  \ \exp\Big\{-S +\bm{J}^\dagger \begin{bmatrix} A(\bm{k},\ti\omega_n) \\ P(\bm{k},\ti\omega_n)\end{bmatrix}+\begin{bmatrix}A(-\bm{k},-\ti\omega_n) & P(-\bm{k},-\ti\omega_n) \end{bmatrix}\bm{J}\Big\}\Bigg|_{\bm{J}=\bm{J}^\dagger=0}
\end{aligned}$$

This equality should be interpreted as:

$$\bm{G}_{ij}=-\frac {\partial^2} {\partial J_j\partial J^*_i}\cdots\Bigg|_{\bm{J}=\bm{J}^\dagger=0}$$

We need to check the variable substitution for the functional integral:

$$\begin{aligned}
\mathcal{D}\phi_1^*\mathcal{D}\phi_1 &=\prod_{\tau,\bm{r}}\frac {\td \phi_1^*(\bm{r},\tau)\td \phi_1(\bm{r},\tau)} {2\pi\ti} \\
&=\prod_{\tau,\bm{r}}\frac {\td A(\bm{r},\tau)\td P(\bm{r},\tau)} {\pi}
\end{aligned}$$

Let us consider the discrete version of Fourier transformation, i.e. Fourier series. For a simpler case we consider the 1-d situation:

$$x_m = \frac 1 {\sqrt{N}} \sum_{k=-k_L=-\pi/\epsilon}^{k_L} e^{\ti k m \epsilon} y_k = \frac 1 {\sqrt{N}}\sum_{k>0} \cos km\epsilon \ \text{Re}y_k +\sin km\epsilon \ \text{Im} y_k$$

Where \(\epsilon\) is the infinitesimal quantity introduced by the slicing for functional integral. So we have:

$$\prod_m \td x_m = \Big|\frac {\partial (x_1,\cdots)} {\partial (y_1, \cdots)}\Big|\prod_k \td \text{Re}y_k\td \text{Im}y_k $$

Using the fact that such Fourier transformation is an isometric transform we can prove that the absolute value of the Jacobian of such linear transformation is \(1\).

So, we have the final equality:

$$\begin{aligned}
\mathcal{D}\phi_1^*\mathcal{D}\phi_1 &= \prod_{(\omega_n,\bm{k})\in \text{half-hypersphere}}\frac {\td \text{Re}A(\bm{k},\ti\omega_n)\td\text{Im}A(\bm{k},\ti\omega_n)\td \text{Re}P(\bm{k},\ti\omega_n)\td\text{Im}P(\bm{k},\ti\omega_n)} {\pi} \\
&=\pi \prod_{(\omega_n,\bm{k}\in \text{half-hypersphere})} \frac {\td A(\bm{k},\ti\omega_n)\td A(\bm{k},\ti\omega_n)^*} {2\pi \ti} \prod_{(\omega_n,\bm{k}\in \text{half-hypersphere})} \frac {\td P(\bm{k},\ti\omega_n)\td P(\bm{k},\ti\omega_n)^*} {2\pi \ti} \\
&\equiv \mathcal{D} A\mathcal{D}P
\end{aligned}$$

And there is a constraint for complex variable: \(A(-k)=A^*(k)\) , so the integral is totally a Gaussian integral. So it should be:

$$\begin{aligned}
\bm{G}(\bm{k},\ti\omega_n)&=-\frac {\partial^2} {\partial \bm{J}\partial \bm{J}^*} \exp\Big(\frac 1 2\bm{J}^\dagger \begin{bmatrix}\frac {\bm{k}^2} {2m} +2g\phi_0^2 & \omega_n \\ -\omega_n & \frac {\bm{k}^2} {2m}\end{bmatrix}^{-1}\bm{J}\Big)\Bigg|_{\bm{J}=\bm{J}^*=0} \\
&=-\frac 1 2 \begin{bmatrix}\frac {\bm{k}^2} {2m} +2g\phi_0^2 & \omega_n \\ -\omega_n & \frac {\bm{k}^2} {2m}\end{bmatrix}^{-1} \\
&=-\frac 1 2 \frac 1 {\frac {\bm{k}^2} {2m}\big(\frac {\bm{k}^2} {2m}+2g\phi_0^2\big)+\omega_n^2}\begin{bmatrix} \bm{k}^2/2m & -\omega_n \\ \omega_n & \bm{k}^2/2m+2g\phi_0^2 \end{bmatrix}
\end{aligned}$$

Where the factor \(1/2\) comes from the sum in the exponent of the action is over all hypersphere. So there should be a factor \(2\) if we treat it as complex Gaussian integral on half-hypersphere. And the inverse of matrix let the factor be \(1/2\) .

q.e.d.

{{< /fold >}}

Then we find that the Green's function has a first-order pole at:

$$\ti\omega_n=\pm \sqrt{\frac {\bm{k}^2} {2m}\Big(\frac {\bm{k}^2} {2m}+2g\phi_0^2\Big)}\equiv\pm\omega_{\bm{k}}$$

As we know, first-order pole of the Green's function shows the dispersion relation of the excited states. Bogoliubov was the first to derive this, showing that owing to the interaction \(g\), it is a dispersion proportional to \(\bm{k}^2\) alters to the dispersion of `acoustic waves` which is proportional to \(\bm{k}\) . And <mark>this fact leads to superfluidity</mark>.

{{< fold "Follow-up" >}}

As the final process, let us determine \(\mu\) and \(\phi_0\) using the saddle-node approach:

First we need the particle number, or its fluctuation:

$$n_{\bm{k}}= \frac 1 {\beta}\sum_{\omega_n} e^{\ti\omega_n \epsilon} \mathcal{G}(\bm{k},\ti\omega_n)=\frac 1 {\beta}\sum_{\omega_n}\frac {e^{\ti\omega_n\epsilon}} {\omega_{\bm{k}}^2+\omega_n^2}\Big\{\frac {\bm{k}^2} {2m}+g\phi_0^2+\ti\omega_n\Big\}$$

Which should be easy to get with the connection: \(\mathcal{G}=(\bm{G}_{11}+\bm{G}_{22})+\ti(\bm{G}_{21}-\bm{G}_{12})\) .

With the Matsubara frequency summation, it is:

$$\begin{aligned}
\Delta N_{\bm{k}}=&\frac 1 {\beta}\sum_{\omega_n}\frac {e^{\ti\omega_n\epsilon}} {\omega_{\bm{k}}^2+\omega_n^2}\Big\{\frac {\bm{k}^2} {2m}+g\phi_0^2+\ti\omega_n\Big\}=\frac 1 {2\pi\ti\beta}\oint \frac {e^{\epsilon z}(\frac {\bm{k}^2} {2m}+g\phi_0^2+z)} {\omega_{\bm{k}}^2-z^2}\frac {-\beta\td z} {1-e^{\beta z}}\\
=& \frac {\frac {\bm{k}^2} {2m}+g\phi_0^2-\omega_{\bm{k}}} {2\omega_{\bm{k}}(1-e^{-\beta \omega_{\bm{k}}})}+ \frac {\frac {\bm{k}^2} {2m}+g\phi_0^2 +\omega_{\bm{k}}} {2\omega_{\bm{k}}(1-e^{\beta\omega_{\bm{k}}})}
\end{aligned}$$

Then the total fluctuation should be integral this over the \(\bm{k}\) space, if the volume of space is \(V\) , i.e. \(\int \td^d \bm{r} = V\), we have the summation over \(\bm{k}\) (restrict \(d=3\)):

$$\sum_{\bm{k}} \Delta N_{\bm{k}}=\frac V {(2\pi)^3} \int \td^3 \bm{k} \Delta N_{\bm{k}}\rightarrow_{\beta\rightarrow \infty} \frac {V} {24\pi^2} (4mg \phi_0^2)^{3/2} $$

Then we have the equation:

$$N=V \phi_0^2+\sum_{\bm{k}}\Delta N_{\bm{k}}=V\Big(\phi_0^2+\frac {(mg)^{3/2}} {3\pi^2}\phi_0^3\Big)$$

Then together with the bifurcation condition \(\phi_0^2=\mu/g\) . We have determined all parameters in the statistical theory of such interacting Bose gas.

{{< /fold >}}

The solution above is also called `Bogoliubov theory` which is appropriate in the dilute limit or when the coupling is small. <mark>The main idea is that fluctuation around the classical, symmetry breaking solution \(\phi_0\) are assumed to be small. So the path integral can be approximation evaluated by the Gaussian integral. </mark>

### Goldstone mode and superfluidity

<mark>In low-dimensional systems, or for the case when the system is locally gauge invariant</mark>, `NO spontaneous symmetry breaking occurs`, and the mean field approximation becomes meaningless, so as to the assumption we used above in saddle-node approach. A new theoretical description is necessary.

We cannot separate the field as a mean field and fluctuation then expand the action into the quadratic form. But the mean field limit is helpful. The action has minimum at \(|\phi_0|^2=\mu/g\) . So the transverse(global phase transformation) contributes no loss while longitudinal(modulus change) contributes a small change. So we can write the field as:

$$\phi(\bm{r},\tau)=\sqrt{\rho(\bm{r},\tau)}e^{\ti\theta(\bm{r},\tau)} \ , \ \phi^*(\bm{r},\tau)=\sqrt{\rho(\bm{r},\tau)}e^{-\ti\theta(\bm{r},\tau)}$$

Substitute these into the action functional we have:

$$S=\int_0^\beta \td\tau\int\td^d\bm{r}\Big\{\ti\rho \partial_{\tau} \theta+\frac 1 {2m}\Big(\frac 1 {4\rho} (\nabla\rho)^2+\rho (\nabla \theta)^2\Big)-\mu\rho +\frac 1 2 g\rho^2\Big\}$$

{{< fold "Proof" >}}

we need to check the time-derivative and kinetic energy term:

$$\begin{aligned}
\phi^*\partial_{\tau}\phi &= \sqrt{\rho}e^{-\ti\theta}\big(\frac 1 {2\sqrt{\rho}}e^{\ti \theta}\partial_{\tau}\rho+\sqrt{\rho}\ti e^{\ti \theta}\partial_{\tau} \theta\big) \\
&=\frac 1 2 \partial_{\tau}\rho + \ti \rho\partial_{\tau}\theta \\
\phi^*\nabla^2\phi &= \nabla\cdot(\phi^*\nabla\phi)-\nabla \phi^*\cdot\nabla\phi \\
&= \frac 1 2 \nabla^2 |\phi|^2 - |\nabla \phi|^2 \\
&= \frac 1 2 \nabla^2 \rho - (\nabla \sqrt{\rho})^2 - \rho(\nabla \theta)^2 \\
&= \frac 1 2 \nabla^2\rho - \frac 1 {4\rho}(\nabla \rho)^2 -\rho (\nabla\theta)^2
\end{aligned}$$

Also we eliminate the terms \(\nabla^2\rho,\partial_{\tau}\rho\) because they contribute nothing in the spatial-time integral because of the boundary condition. Then we have the action:

$$S=\int_0^\beta\td\tau \int\td^d \bm{r} \Big\{\ti\rho\partial_{\tau}\theta + \frac 1 {2m}\Big(\frac 1 {4\rho}(\nabla \rho)^2+\rho (\nabla\theta)^2\Big)-\mu\rho +\frac 1 2 g\rho^2\Big\}$$

{{</fold>}}

Now we rewrite the chemical potential as \(\mu\rightarrow \mu+x(\bm{r},\tau)\) mathematically. \(x\) is a test field which helps us extract the information about \(\rho\) . And expand \(\rho\) up to the first order, zero order should also be the mean field contribution: \(\rho=\mu/g+\delta\rho\) . On the other hand, we are interested in the case of low energy, so we assume \(\omega_n,\bm{k}\) or \(\partial_{\tau},\nabla\) to be small . Then write them up to second order, noting \(\int \td\tau\int\bm{r} \delta\rho=\int \td\tau\int \bm{r} x=0\):

$$S\approx \int_0^{\beta}\td\tau \int \td^d \bm{r} \ \Big(\ti \delta\rho\partial_{\tau}\theta+\frac {\phi_0^2} {2m}(\nabla \theta)^2+\frac 1 2 g (\delta\rho)^2-x \delta\rho\Big)$$

Such action describes the low-energy physics of a superfluid.
1.  The second term arises due to the effect of \(\phi_0\neq 0\) , representing the rigidity of \(\theta\). (like an elastic energy proportional to the square of the phase difference, and phase becomes solid as if it were a rigid body).
2.  The third term signifies that the fluctuation of \(\rho\) feels a finite retrospective force
3.  The forth term is the test field with respect to \(\delta\rho\) .

And the current density is:

$$\bm{j}(\bm{r},\tau)=\frac 1 {2m\ti}\big(\phi^*(\bm{r},\tau)\nabla \phi(\bm{r},\tau)-\nabla\phi^*(\bm{r},\tau)\phi(\bm{r},\tau)\big)$$

{{< fold "Proof">}}

In the second quantization , current density operator (without magnetic field) should be:

$$\hat {\bm{j}}(\bm{r},t) = \frac {-\ti} {2m}\Big(\hat \psi^\dagger(\bm{r},t)\nabla \hat \psi(\bm{r},t)-\nabla \hat \psi^\dagger(\bm{r},t) \hat \psi(\bm{r},t)\Big)$$

So with the coherent state and path integral, the thermal average of it should equal to the functional integral form:

$$\langle \hat {\bm{j}}(\bm{r},t)\rangle=\frac {\int\mathcal{D}\phi^*\mathcal{D}\phi \ e^{-S} \frac 1 {2m\ti} (\phi^*(\bm{r},\tau)\nabla \phi(\bm{r},\tau)-\nabla\phi^*(\bm{r},\tau)\phi(\bm{r},\tau))} {\int \mathcal{D}\phi^*\mathcal{D}\phi \ e^{-S}}$$

For detial see [The proof for relation between operator expectation value and path integral]({{< ref "/Notes/qm/manybody3.md#partition-function-and-green's-function" >}})

That is why we say , the current density should have the form above.

{{</fold>}}

For this system, it is:

$$\bm{j}(\bm{r},\tau)=\frac {\rho(\bm{r},\tau)} {m} \nabla \theta(\bm{r},\tau)\sim \frac {\phi_0^2} {m}\nabla \theta(\bm{r},\tau)$$

With the \(\delta S=0\) , we have the following equation of motion (classical limit)

$$\begin{aligned}
\frac {\partial \theta(\bm{r},t)} {\partial t} &= x(\bm{r},t)-g  \delta \rho(\bm{r},t) \\
\frac {\partial  \rho(\bm{r},t)} {\partial t} &= -\frac {\psi_0^2} {m} \nabla^2  \theta(\bm{r},t)=-\nabla\cdot  \bm{j}(\bm{r},t)
\end{aligned}$$

Where we used the Wick rotation \(\tau=\ti t\) so that they are equations of real-argument functions. They are also called `Josephson equation`


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
