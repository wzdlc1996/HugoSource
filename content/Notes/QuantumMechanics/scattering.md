---
title: "Scattering"
date: 2018-12-17T12:54:43+08:00
draft: true
tags: ["quantum","approximation"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "Quantum theory for scattering of particles. Theory and applications."
---

# Setup of Scattering Problem

## Rough Picture

1.  `Time-dependent` : particle beam (plane wave packet) \(\ket{\psi(t=0)}\) coming in, interacting with \(\hat V\) , scattered particles (scattered wave) \(\ket{\psi(t\rightarrow +\infty)}\) going out.
2.  `Time-independent` : a (short-ranged) scattering potential \(\hat V\) as a perturbation to free particle Hamiltonian \(\hat H_0\) . The unperturbed state is momentum eigenstate \(\ket{\bm{k}}\) (with momentum \(\hbar\bm{k}\)) , and the perturbed state contains scattered wave.

    The difficulties in treating the scattering problem as perturbation theory: infinite degeneracy

We will only consider non-relativistic particles: \(\hat H_0=-\frac {\hbar^2} {2m} \nabla^2\)

Particle number(probability) current is: \(\text{Re}\big(\psi^*(\bm{r})(-\ti\frac \hbar m \nabla)\psi(\bm{r})\big)\)

## Scattering Cross Section

_[Definition]_ : `Differential cross section` :

$$\frac {\td \sigma} {\td \Omega} := \frac {\td Q_{\text{flux scattered crossing }r^2\td \Omega}} {J_{\text{incoming}}\td \Omega}$$

. Where \(\td \sigma\) is the particle current scattered into the solid angle element \(\td \Omega\), under unit incoming particle current density

_[Definition]_ : `Cross section` is the integral of differential cross section on the full angle: \(\sigma=\int \frac {\td \sigma} {\td \Omega}\td \Omega\)

Incoming plane wave \(\ket{\bm{k}}\) is not normalizable. Probability is not easily defined. To overcome this one can use free wave packet instead of the plane wave.

# Lippmann-Schwinger Equation

Take the time-independent approach: \((\hat H_0+\hat V)\ket{\psi}=E\ket{\psi}\) . Assume that \(\hat V\) is sufficiently short-ranged, namely for position \(\bm{r}\) at a very large distance from the scattering potential \(\hat V\approx 0\) and \(\ket{\psi}=\ket{\bm{k}}\), that is \(E=\hbar^2 \bm{k}^2/2m\) . Like the perturbation theory we have the `Lippmann-Schwinger Equation`

$$\ket{\psi}=\ket{\bm{k}}+\frac {1} {E-\hat H_0+\ti \epsilon}\hat V\ket{\psi}$$

Where \(\ti\epsilon\) is used to avoid singularity.

{{%fold "Proof"%}}

The Lippmann-Schwinger equation can we writen as \(E\ket{\psi}-\hat H_0\ket{\psi}+\ti \epsilon \ket{\psi}=\ti\epsilon \ket{\bm{k}}+\hat V \ket{\psi}\) . For the Schrodinger equation:

$$\ti \hbar \frac {\td } {\td t}\ket{\psi(t)} = (\hat H_0+\hat V)\ket{\psi(t)}$$

Solution is:

$$\ket{\psi(t)}=e^{-\ti E t/\hbar + \epsilon t/\hbar}\big(\ket{\psi}+\frac {\epsilon} {E+\ti\epsilon}\ket{\bm{k}}\big)-\frac {\epsilon} {E+\ti\epsilon}\ket{\bm{k}}$$

Which satisfies \(\ket{\psi(t\rightarrow -\infty)}\propto \ket{\bm{k}}\)

{{%/fold%}}}

Assuming that \(\hat V=\int \td^3\bm{r} \ V(\bm{r})\ket{\bm{r}}\bra{\bm{r}}\) , we can write the \(\ket{\psi}\) as the wavefunction on coordinate space:

$$\psi(\bm{r})=\bra{\bm{r}}\psi\rangle = \frac {e^{\ti \bm{k}\cdot \bm{r}}} {(2\pi)^{3/2}}-\frac {2m} {\hbar^2} \int \td^3 \bm{r'} \frac {e^{\ti k |\bm{r}-\bm{r}'|}} {4\pi |\bm{r}-\bm{r}'|} V(\bm{r}')\psi(\bm{r}') $$

{{%fold "Proof"%}}

With the equality: \(1=\int \td^3 \bm{k}\ket{\bm{k}}\bra{\bm{k}}\) , we have:

$$\begin{aligned}
\bra{\bm{r}}\psi\rangle &= \bra{\bm{r}}\bm{k}\rangle + \int \td^3 \bm{r}' \td^3 \bm{k}' \bra{\bm{r}}\frac {1} {E-\hat H_0+\ti\epsilon} \ket{\bm{k}'}\bra{\bm{k}'}\bm{r}'\rangle \bra{\bm{r}'}\hat V \ket{\psi} \\
&=\bra{\bm{r}}\bm{k}\rangle +\int \td^3 \bm{r}' \td^3 \bm{k}' \frac {\bra{\bm{r}}\bm{k}'\rangle\bra{\bm{k}'}\bm{r}'\rangle} {\frac {\hbar^2\bm{k}^2} {2m}-\frac {\hbar^2\bm{k}'^2} {2m}+\ti\epsilon} V(\bm{r}')\bra{\bm{r}'}\psi\rangle \\
\end{aligned}$$

For that:

$$\begin{aligned}
\int \td^3 \bm{k}' \frac {\bra{\bm{r}}\bm{k}'\rangle\bra{\bm{k}'}\bm{r}'\rangle} {\frac {\hbar^2\bm{k}^2} {2m}-\frac {\hbar^2\bm{k}'^2} {2m}+\ti\epsilon}&=\frac 1 {(2\pi)^{3/2}}\int \td^3 \bm{k}' \frac {e^{\ti \bm{k}'\cdot(\bm{r}-\bm{r}')}} {\frac {\hbar^2\bm{k}^2} {2m}-\frac {\hbar^2\bm{k}'^2} {2m}+\ti\epsilon} \\
&=\frac {2m} {(2\pi)^{3/2}\hbar^2} \int_{0}^{\infty} \td|\bm{k}'|\int_0^{2\pi}\td \theta\int_0^\pi \td \phi |\bm{k}'|^2 \sin \phi \frac {e^{\ti|\bm{k}'||\bm{r}-\bm{r}'|\cos\phi}} {|\bm{k}|^2-|\bm{k}'|^2+\ti \epsilon'} \\
&=-\frac {2m} {(2\pi)^{3/2}\hbar^2} \frac {2\pi^2} {|\bm{r}-\bm{r}'|}e^{\ti k|\bm{r}-\bm{r}'|}
\end{aligned}$$

This can be easily proved by the residue theorem.

One can write down that:

$$\psi(\bm{r})=\bra{\bm{r}}\psi\rangle = \frac {e^{\ti \bm{k}\cdot \bm{r}}} {(2\pi)^{3/2}}-\frac {2m} {\hbar^2} \int \td^3 \bm{r'} \frac {e^{\ti k |\bm{r}-\bm{r}'|}} {4\pi |\bm{r}-\bm{r}'|} V(\bm{r}')\psi(\bm{r}') $$

q.e.d.

{{%/fold%}}


The further approximation is that: \(|\bm{r}-\bm{r}'|\approx |\bm{r}|-\frac {\bm{r}\cdot \bm{r}'} {|\bm{r}|}\) with \(|\bm{r}|\gg|\bm{r}'|\) , since \(V\) is only nonzero at the neighbor of origin.

$$\psi(\bm{r})\approx \frac 1 {(2\pi)^{3/2}}\Big(e^{\ti \bm{k}\cdot \bm{r}} +f(\bm{k}',\bm{k}) \frac {e^{\ti kr}} {r} \Big) $$

Where \(f(\bm{k}',\bm{k})=-\frac {(2\pi)^{3/2}} {4\pi}\frac {2m} {\hbar}\int \td^3 \bm{r}' e^{-\ti \bm{k}'\cdot \bm{r}'}V(\bm{r}')\psi(\bm{r}')\)


And one can prove that the `differential cross section`:

$$\frac {\td\sigma} {\td \Omega} = |f(\bm{k}',\bm{k})|^2 $$

_[Theorem]_ : `Optical theorem` : Total cross section is related to the forward scattering amplitude:

$$\sigma \equiv \int \frac {\td \sigma} {\td \Omega} \td \Omega = \frac {4\pi} {k}\text{Im}f(\bm{k},\bm{k})$$

# Born Approximation

Approximate the unknown |ψi on the right-hand-side of Lippmann-Schwinger equation by the incoming plane wave, we have the method called `Born Approximation` :

$$\ket{\psi} = \ket{\bm{k}} +\frac {1} {E-\hat H_0+\ti \epsilon} \hat V \ket{\bm{k}}$$

With Born Approximation, we can write the \(f(\bm{k}',\bm{k})\) without any unknown function:

$$f(\bm{k}',\bm{k})=-\frac {2m} {4\pi\hbar}\int \td^3 \bm{x} \ e^{-\ti(\bm{k}'-\bm{k})\cdot \bm{x}} V(\bm{x})$$

It is just proportional to the fourier transform of \(V(\bm{x})\) , and just the function of \(\bm{k}'-\bm{k}\).

One can also apply higher approximation on Lippmann-Schwinger function and obtain the `Born-Equation`:

$$\ket{\psi}=\bm{k}+\frac 1 {E-\hat H_0+\ti \epsilon}\hat V \ket{\bm{k}}+\frac 1 {E-\hat H_0+\ti \epsilon}\hat V \frac 1 {E-\hat H_0+\ti \epsilon}\hat V \ket{\bm{k}}+\cdots$$

# Partial Wave Expansion

Consider the central potential \(V(\bm{x})=V(|\bm{x}|)\) , then \(f\) is just the function of the angle between \(\bm{k}',\bm{k}\) . Define the \(\bm{k}\) direction as \(+z\) direction, we have:

$$\psi(\bm{r})\sim e^{\ti kz}+f(\theta)\frac {e^{\ti kr}} r$$

Expand the plane wave into spherical waves:

$$e^{\ti kz} = \sum_{l=0}^{\infty} (2l+1)\ti^l j_l(kr)P_l(\cos\theta) $$

where \(j_l\) are spherical Bessel function. For large \(r\) , it is \(e^{\ti kz}\sim \frac 1 {2\ti kr}\sum_{l=0}^{\infty} (2l+1)(e^{\ti kr}-(-1)^l e^{-\ti kr})P_l(\cos\theta)\)

Expand \(f(\theta)\) into Legendre Polynomials: \(f(\theta)=\sum_{l=0}^{\infty}(2l+1)f_l P_l(\cos\theta)\)

Then the cross section:

$$\sigma =\int \td \Omega \ |f|^2=4\pi \sum_l (2l+1)|f_l|^2$$

Where we used the orthogonality of Legendre Polynomials: \(\int_0^{\pi}\sin\theta \td \theta \ P_l(\cos\theta)P_{l'}(\cos\theta)=\frac 2 {2l+1}\delta_{l,l'}\)

By `optical theorem`:

$$\sigma=\frac {4\pi} k \text{Im} f(0)=\frac {4\pi} k \sum_l (2l+1)\text{Im}f_l$$

Where we have used \(P_l(1)=1\) .

Compare these two expression, we have \(|f_l|^2 = \frac 1 k \text{Im}f_l\) ,  or equivalently, \(|1+2\ti kf_l|^2=1\).

Define phase shift \(\delta_l\) such that \(1+2\ti kf_l=e^{2\ti\delta_l}\) , then \(f_l=\frac 1 k e^{ti \delta_l}\sin\delta_l\) . As the result:

$$\psi(\bm{r})\sim \frac 1 {2\ti kr}\sum_l (2l+1)P_l(\cos\theta)\big[e^{2\ti \delta_l}e^{\ti kr}-(-1)^l e^{-\ti kr} \big] $$

At the large \(r\). And the cross section:

$$\sigma=\frac {4\pi} {k^2} \sum_l (2l+1)\sin^2 \delta_l$$

The full procedure to solve the scattering question by partial wave method is :

1.  Expand \(\psi(r)=\sum_l Y_l^0(\theta,\phi)R_l(r)\) , where spherical harmonic function \(Y_l^0(\theta,\phi)=\sqrt{\frac {2l+1} {4\pi}}P_l(\cos\theta)\). Then radial function satisfies:

    $$\Big[-\frac 1 r \frac {\td^2} {\td r^2} r + \frac {l(l+1)} {r^2} +\frac {2m} {\hbar^2} V(r) \Big]R_l(r)=k^2 R_l(r)$$

    And \(R_l(r)\sim\frac 1 {2\ti kr}\frac 1 {\sqrt{4\pi(2l+1)}}\big[e^{2\ti\delta_l}e^{\ti kr}-(-1)^l e^{-\ti kr} \big]\) as \(r\rightarrow \infty\).

2.  To solve \(\delta_l\) , solve the radial equation of \(R_l\) first. expand its asymptotical (\(r\rightarrow \infty\)) form by spherical Bessel function \(j_l(kr)\) and \(n_l(kr)\): \(R_l(kr)\sim j_l(kr)\cos(\delta_l)+n_l(kr)\sin\delta_l\)

    -  Reminder of the spherical Bessel function \(j_l,n_l\) , they are the solution of the equation:

       $$\Big[-\frac 1 {\rho} \frac {\td^2} {\td \rho^2} \rho + \frac {l(l+1)} {\rho^2}  \Big]R(\rho)=R(\rho)$$

       And has the form:

       $$j_l(\rho)=(-\rho)^l \Big(\frac 1 {\rho}\frac {\td} {\td \rho} \Big)^l \Big(\frac {\sin\rho} {\rho} \Big) \ ; \ n_l(\rho)=-(-\rho)^l \Big(\frac 1 {\rho}\frac {\td} {\td \rho} \Big)^l \Big(\frac {\cos\rho} {\rho} \Big)$$

       And the asymptotical behavior:

       $$\begin{aligned}
       \rho & \rightarrow 0 \Rightarrow j_l(\rho)\sim \frac {\rho^l} {(2l+1)!!} \ ; \ n_l(\rho)\sim -\frac {(2l+1)!!} {\rho^l} \\
       \rho & \rightarrow \infty \Rightarrow j_l(\rho)\sim \frac {\sin(\rho-l\pi/2)} {\rho} \ ; \ n_l(\rho)\sim \frac {\cos(\rho-l\pi/2)} {\rho}
       \end{aligned}$$
