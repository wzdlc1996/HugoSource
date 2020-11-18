---
title: "Scattering Theory"
date: 2018-12-17T12:54:43+08:00
draft: false
tags: ["quantum","approximation"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "Quantum theory for scattering of particles. Theory and applications."
---

# Setup of Scattering Problem

## Rough Picture

1.  `Time-dependent` : particle beam (plane wave packet) $\ket{\psi(t=0)}$ coming in, interacting with $\hat V$ , scattered particles (scattered wave) $\ket{\psi(t\rightarrow +\infty)}$ going out.
2.  `Time-independent` : a (short-ranged) scattering potential $\hat V$ as a perturbation to free particle Hamiltonian $\hat H_0$ . The unperturbed state is momentum eigenstate $\ket{\bm{k}}$ (with momentum $\hbar\bm{k}$) , and the perturbed state contains scattered wave.

    The difficulties in treating the scattering problem as perturbation theory: infinite degeneracy

We will only consider non-relativistic particles: $\hat H_0=-\frac {\hbar^2} {2m} \nabla^2$

Particle number(probability) current is: $\text{Re}\big(\psi^*(\bm{r})(-\ti\frac \hbar m \nabla)\psi(\bm{r})\big)$

## Scattering Cross Section

_[Definition]_ : `Differential cross section` :

{{< mathjax >}}
$$\frac {\td \sigma} {\td \Omega} := \frac {\td Q_{\text{flux scattered crossing }r^2\td \Omega}} {J_{\text{incoming}}\td \Omega}$$
{{< /mathjax >}}

. Where $\td \sigma$ is the particle current scattered into the solid angle element $\td \Omega$, under unit incoming particle current density

_[Definition]_ : `Cross section` is the integral of differential cross section on the full angle: $\sigma=\int \frac {\td \sigma} {\td \Omega}\td \Omega$

Incoming plane wave $\ket{\bm{k}}$ is not normalizable. Probability is not easily defined. To overcome this one can use free wave packet instead of the plane wave.

# Lippmann-Schwinger Equation

Take the time-independent approach: $(\hat H_0+\hat V)\ket{\psi}=E\ket{\psi}$ . Assume that $\hat V$ is sufficiently short-ranged, namely for position $\bm{r}$ at a very large distance from the scattering potential $\hat V\approx 0$ and $\ket{\psi}=\ket{\bm{k}}$, that is $E=\hbar^2 \bm{k}^2/2m$ .(Here we argue $\ket{\psi}$ and $\ket{\bm{k}}$ have the same energy, which means we are only considering `elastic scattering`) Like the perturbation theory we have the `Lippmann-Schwinger Equation`

{{< mathjax >}}
$$\ket{\psi}=\ket{\bm{k}}+\frac {1} {E-\hat H_0+\ti \epsilon}\hat V\ket{\psi}$$
{{< /mathjax >}}

Where $\ti\epsilon$ is used to avoid singularity.

{{<fold "Proof">}}

The Lippmann-Schwinger equation can we writen as $E\ket{\psi}-\hat H_0\ket{\psi}+\ti \epsilon \ket{\psi}=\ti\epsilon \ket{\bm{k}}+\hat V \ket{\psi}$ . For the time-evolution of $\ket{\psi}$ can be obtained by the Schrodinger equation:

{{< mathjax >}}
$$\ti \hbar \frac {\td } {\td t}\ket{\psi(t)} = (\hat H_0+\hat V)\ket{\psi(t)}=(E+\ti\epsilon)\ket{\psi(t)}-\ti\epsilon\ket{\bm{k}}$$
{{< /mathjax >}}

Then we have:

{{< mathjax >}}
$$\ti\hbar \frac {\td} {\td t} \Big(e^{\ti Et/\hbar -\epsilon t/\hbar}\ket{\psi(t)}\Big)=-\ti \epsilon e^{\ti Et/\hbar -\epsilon t/\hbar}\ket{\bm{k}}$$
{{< /mathjax >}}

Then the solution is:

{{< mathjax >}}
$$\ket{\psi(t)}=e^{-\ti Et/\hbar+\epsilon t/\hbar}\Big(\ket{\psi(t=0)}-\frac {e^{\ti Et/\hbar-\epsilon t/\hbar}-1} {\ti E-\epsilon} \ti \epsilon \ket{\bm{k}}\Big)$$
{{< /mathjax >}}

Or equivalently,

{{< mathjax >}}
$$\ket{\psi(t)}=e^{-\ti E t/\hbar + \epsilon t/\hbar}\big(\ket{\psi}+\frac {\epsilon} {E+\ti\epsilon}\ket{\bm{k}}\big)-\frac {\epsilon} {E+\ti\epsilon}\ket{\bm{k}}$$
{{< /mathjax >}}

Which satisfies $\ket{\psi(t\rightarrow -\infty)}\propto \ket{\bm{k}}$ , mimic the scattering process. With this meaning, one can also write it as the form of:

{{< mathjax >}}
$$\begin{aligned}
\ket{\psi^{(\pm)}}=\ket{\bm{k}}_{\text{in}/\text{out}}+\frac 1 {E-\hat H_0\pm \ti \epsilon} \hat V \ket{\psi^{(\pm)}}
\end{aligned}$$
{{< /mathjax >}}

Where $(+)$ corresponding to the $\ket{\bm{k}}_{\text{in}}$ , because $\ket{\psi^{(+)}(t\rightarrow -\infty)} = \ket{\bm{k}}_{\text{in}}$ , \
And $(-)$ corresponding to the $\ket{\bm{k}}_{\text{out}}$ , because $\ket{\psi^{(-)}(t\rightarrow +\infty)} = \ket{\bm{k}}_{\text{out}}$ .

{{</fold>}}

Assuming that $\hat V=\int \td^3\bm{r} \ V(\bm{r})\ket{\bm{r}}\bra{\bm{r}}$ , we can write the $\ket{\psi}$ as the wavefunction on coordinate space:

{{< mathjax >}}
$$\psi(\bm{r})=\bra{\bm{r}}\psi\rangle = \frac {e^{\ti \bm{k}\cdot \bm{r}}} {(2\pi)^{3/2}}-\frac {2m} {\hbar^2} \int \td^3 \bm{r'} \frac {e^{\ti k |\bm{r}-\bm{r}'|}} {4\pi |\bm{r}-\bm{r}'|} V(\bm{r}')\psi(\bm{r}') $$
{{< /mathjax >}}

{{<fold "Proof">}}

With the equality: $1=\int \td^3 \bm{k}\ket{\bm{k}}\bra{\bm{k}}$ , we have:

{{< mathjax >}}
$$\begin{aligned}
\bra{\bm{r}}\psi\rangle &= \bra{\bm{r}}\bm{k}\rangle + \int \td^3 \bm{r}' \td^3 \bm{k}' \bra{\bm{r}}\frac {1} {E-\hat H_0+\ti\epsilon} \ket{\bm{k}'}\bra{\bm{k}'}\bm{r}'\rangle \bra{\bm{r}'}\hat V \ket{\psi} \\
&=\bra{\bm{r}}\bm{k}\rangle +\int \td^3 \bm{r}' \td^3 \bm{k}' \frac {\bra{\bm{r}}\bm{k}'\rangle\bra{\bm{k}'}\bm{r}'\rangle} {\frac {\hbar^2\bm{k}^2} {2m}-\frac {\hbar^2\bm{k}'^2} {2m}+\ti\epsilon} V(\bm{r}')\bra{\bm{r}'}\psi\rangle \\
\end{aligned}$$
{{< /mathjax >}}

For that:

{{< mathjax >}}
$$\begin{aligned}
\int \td^3 \bm{k}' \frac {\bra{\bm{r}}\bm{k}'\rangle\bra{\bm{k}'}\bm{r}'\rangle} {\frac {\hbar^2\bm{k}^2} {2m}-\frac {\hbar^2\bm{k}'^2} {2m}+\ti\epsilon}&=\frac 1 {(2\pi)^{3/2}}\int \td^3 \bm{k}' \frac {e^{\ti \bm{k}'\cdot(\bm{r}-\bm{r}')}} {\frac {\hbar^2\bm{k}^2} {2m}-\frac {\hbar^2\bm{k}'^2} {2m}+\ti\epsilon} \\
&=\frac {2m} {(2\pi)^{3/2}\hbar^2} \int_{0}^{\infty} \td|\bm{k}'|\int_0^{2\pi}\td \theta\int_0^\pi \td \phi |\bm{k}'|^2 \sin \phi \frac {e^{\ti|\bm{k}'||\bm{r}-\bm{r}'|\cos\phi}} {|\bm{k}|^2-|\bm{k}'|^2+\ti \epsilon'} \\
&=-\frac {2m} {(2\pi)^{3/2}\hbar^2} \frac {2\pi^2} {|\bm{r}-\bm{r}'|}e^{\ti k|\bm{r}-\bm{r}'|}
\end{aligned}$$
{{< /mathjax >}}

This can be easily proved by the residue theorem.

One can write down that:

{{< mathjax >}}
$$\psi(\bm{r})=\bra{\bm{r}}\psi\rangle = \frac {e^{\ti \bm{k}\cdot \bm{r}}} {(2\pi)^{3/2}}-\frac {2m} {\hbar^2} \int \td^3 \bm{r'} \frac {e^{\ti k |\bm{r}-\bm{r}'|}} {4\pi |\bm{r}-\bm{r}'|} V(\bm{r}')\psi(\bm{r}') $$
{{< /mathjax >}}

q.e.d.

{{</fold>}}


The further approximation is that: $|\bm{r}-\bm{r}'|\approx |\bm{r}|-\frac {\bm{r}\cdot \bm{r}'} {|\bm{r}|}$ with $|\bm{r}|\gg|\bm{r}'|$ , since $V$ is only nonzero at the neighbor of origin.

{{< mathjax >}}
$$\psi(\bm{r})\approx \frac 1 {(2\pi)^{3/2}}\Big(e^{\ti \bm{k}\cdot \bm{r}} +f(\bm{k}',\bm{k}) \frac {e^{\ti kr}} {r} \Big) $$
{{< /mathjax >}}

Where $f(\bm{k}',\bm{k})=-\frac {(2\pi)^{3/2}} {4\pi}\frac {2m} {\hbar}\int \td^3 \bm{r}' e^{-\ti \bm{k}'\cdot \bm{r}'}V(\bm{r}')\psi(\bm{r}')$


And one can prove that the `differential cross section`:

{{< mathjax >}}
$$\frac {\td\sigma} {\td \Omega} = |f(\bm{k}',\bm{k})|^2 $$
{{< /mathjax >}}

_[Theorem]_ : `Optical theorem` : Total cross section is related to the forward scattering amplitude:

{{< mathjax >}}
$$\sigma \equiv \int \frac {\td \sigma} {\td \Omega} \td \Omega = \frac {4\pi} {k}\text{Im}f(\bm{k},\bm{k})$$
{{< /mathjax >}}

# Born Approximation

Approximate the unknown |ψi on the right-hand-side of Lippmann-Schwinger equation by the incoming plane wave, we have the method called `Born Approximation` :

{{< mathjax >}}
$$\ket{\psi} = \ket{\bm{k}} +\frac {1} {E-\hat H_0+\ti \epsilon} \hat V \ket{\bm{k}}$$
{{< /mathjax >}}

With Born Approximation, we can write the $f(\bm{k}',\bm{k})$ without any unknown function:

{{< mathjax >}}
$$f(\bm{k}',\bm{k})=-\frac {2m} {4\pi\hbar}\int \td^3 \bm{x} \ e^{-\ti(\bm{k}'-\bm{k})\cdot \bm{x}} V(\bm{x})$$
{{< /mathjax >}}

It is just proportional to the fourier transform of $V(\bm{x})$ , and just the function of $\bm{k}'-\bm{k}$.

One can also apply higher approximation on Lippmann-Schwinger function and obtain the `Born-Equation`:

{{< mathjax >}}
$$\ket{\psi}=\ket{\bm{k}}+\frac 1 {E-\hat H_0+\ti \epsilon}\hat V \ket{\bm{k}}+\frac 1 {E-\hat H_0+\ti \epsilon}\hat V \frac 1 {E-\hat H_0+\ti \epsilon}\hat V \ket{\bm{k}}+\cdots$$
{{< /mathjax >}}

# Partial Wave Expansion

Consider the central potential $V(\bm{x})=V(|\bm{x}|)$ , then $f$ is just the function of the angle between $\bm{k}',\bm{k}$ . Define the $\bm{k}$ direction as $+z$ direction, we have:

{{< mathjax >}}
$$\psi(\bm{r})\sim e^{\ti kz}+f(\theta)\frac {e^{\ti kr}} r$$
{{< /mathjax >}}

Expand the plane wave into spherical waves:

{{< mathjax >}}
$$e^{\ti kz} = \sum_{l=0}^{\infty} (2l+1)\ti^l j_l(kr)P_l(\cos\theta) $$
{{< /mathjax >}}

where $j_l$ are spherical Bessel function. For large $r$ , it is $e^{\ti kz}\sim \frac 1 {2\ti kr}\sum_{l=0}^{\infty} (2l+1)(e^{\ti kr}-(-1)^l e^{-\ti kr})P_l(\cos\theta)$

Expand $f(\theta)$ into Legendre Polynomials: $f(\theta)=\sum_{l=0}^{\infty}(2l+1)f_l P_l(\cos\theta)$

Then the cross section:

{{< mathjax >}}
$$\sigma =\int \td \Omega \ |f|^2=4\pi \sum_l (2l+1)|f_l|^2$$
{{< /mathjax >}}

Where we used the orthogonality of Legendre Polynomials: $\int_0^{\pi}\sin\theta \td \theta \ P_l(\cos\theta)P_{l'}(\cos\theta)=\frac 2 {2l+1}\delta_{l,l'}$

By `optical theorem`:

{{< mathjax >}}
$$\sigma=\frac {4\pi} k \text{Im} f(0)=\frac {4\pi} k \sum_l (2l+1)\text{Im}f_l$$
{{< /mathjax >}}

Where we have used $P_l(1)=1$ .

Compare these two expression, we have $|f_l|^2 = \frac 1 k \text{Im}f_l$ ,  or equivalently, $|1+2\ti kf_l|^2=1$.

Define phase shift $\delta_l$ such that $1+2\ti kf_l=e^{2\ti\delta_l}$ , then $f_l=\frac 1 k e^{ti \delta_l}\sin\delta_l$ . As the result:

{{< mathjax >}}
$$\psi(\bm{r})\sim \frac 1 {2\ti kr}\sum_l (2l+1)P_l(\cos\theta)\big[e^{2\ti \delta_l}e^{\ti kr}-(-1)^l e^{-\ti kr} \big] $$
{{< /mathjax >}}

At the large $r$. And the cross section:

{{< mathjax >}}
$$\sigma=\frac {4\pi} {k^2} \sum_l (2l+1)\sin^2 \delta_l$$
{{< /mathjax >}}

The full procedure to solve the scattering question by partial wave method is :

1.  Expand $\psi(r)=\sum_l Y_l^0(\theta,\phi)R_l(r)$ , where spherical harmonic function $Y_l^0(\theta,\phi)=\sqrt{\frac {2l+1} {4\pi}}P_l(\cos\theta)$. Then radial function satisfies:

    {{< mathjax >}}
$$\Big[-\frac 1 r \frac {\td^2} {\td r^2} r + \frac {l(l+1)} {r^2} +\frac {2m} {\hbar^2} V(r) \Big]R_l(r)=k^2 R_l(r)$$
{{< /mathjax >}}

    And $R_l(r)\sim\frac 1 {2\ti kr}\frac 1 {\sqrt{4\pi(2l+1)}}\big[e^{2\ti\delta_l}e^{\ti kr}-(-1)^l e^{-\ti kr} \big]$ as $r\rightarrow \infty$.

2.  To solve $\delta_l$ , solve the radial equation of $R_l$ first. expand its asymptotical ($r\rightarrow \infty$) form by spherical Bessel function $j_l(kr)$ and $n_l(kr)$: $R_l(kr)\sim j_l(kr)\cos(\delta_l)+n_l(kr)\sin\delta_l$

    Remind of the spherical Bessel function $j_l,n_l$ , they are the solution of the equation:

    {{< mathjax >}}
$$\Big[-\frac 1 {\rho} \frac {\td^2} {\td \rho^2} \rho + \frac {l(l+1)} {\rho^2}  \Big]R(\rho)=R(\rho)$$
{{< /mathjax >}}

    And has the form:

    {{< mathjax >}}
$$j_l(\rho)=(-\rho)^l \Big(\frac 1 {\rho}\frac {\td} {\td \rho} \Big)^l \Big(\frac {\sin\rho} {\rho} \Big) \ ; \ n_l(\rho)=-(-\rho)^l \Big(\frac 1 {\rho}\frac {\td} {\td \rho} \Big)^l \Big(\frac {\cos\rho} {\rho} \Big)$$
{{< /mathjax >}}

    And the asymptotical behavior:

    {{< mathjax >}}
$$\begin{aligned}
    \rho &\rightarrow 0 \Rightarrow j_l(\rho)\sim \frac {\rho^l} {(2l+1)!!} \ ; \ n_l(\rho)\sim - \frac {(2l+1)!!} {\rho^l}\\
    \rho &\rightarrow \infty \Rightarrow j_l(\rho)\sim \frac {\sin(\rho-l\pi/2)} {\rho} \ ; \ n_l(\rho)\sim \frac {\cos(\rho-l\pi/2)} {\rho}
    \end{aligned}$$
{{< /mathjax >}}

# Scattering Matrix

_[Definition]_ : $\hat S$ is the unitary time evolution operator in `interaction picture` , under the `limit` that initial time $t_i\rightarrow -\infty$ and the final time $t_f\rightarrow +\infty$ :

{{< mathjax >}}
$$\hat S = \lim_{t_i\rightarrow -\infty \\  t_f\rightarrow +\infty} \hat U_I(t_f,t_i)$$
{{< /mathjax >}}

Then from Dyson series, we have:

{{< mathjax >}}
$$\hat S = 1 +\frac {-\ti} {\hbar} \int_{-\infty}^{+\infty} \td t_1 \hat V_I(t_1) + \Big(\frac {-\ti} {\hbar}\Big)^2 \int_{-\infty}^{+\infty}\td t_1 \int_{-\infty}^{t_1} \td t_2 \hat V_I(t_1)\hat V_I(t_2)+\cdots$$
{{< /mathjax >}}

Where $\hat V_I(t)=e^{\ti \hat H_0 t/\hbar} \hat V e^{-\ti \hat H_0 t/\hbar}$

Usually it is a `non-convergent integral` , to avoid this , we assume that the time of interaction is finite. That is assuming the potential (in `Schrodinger picture`) depends on time: $\hat V(t)=\hat V e^{-\epsilon |t|}$ . With $\epsilon\gt 0$ .

Then with the Dyson series we can compute order by order:

## 1st Order

{{< mathjax >}}
$$\hat S^{(1)} = -\int \td^3 \bm{k}\td^3 \bm{k}' \ \ket{\bm{k}}\bra{\bm{k}}\hat V \ket{\bm{k}'}\bra{\bm{k}'} \ 2\pi\ti \delta(E_{\bm{k}}-E_{\bm{k}'})$$
{{< /mathjax >}}

Where $\ket{\bm{k}}$ is the eigenstate of momentum, or $\hat H_0$ .

{{< mathjax >}}
$$\hat H_0\ket{\bm{k}}=\frac {\hbar \bm{k}^2} {2m} \ket{\bm{k}}\equiv E_{\bm{k}}\ket{\bm{k}}$$
{{< /mathjax >}}

{{<fold "Proof">}}

The first order term in Dyson series is:

{{< mathjax >}}
$$\begin{aligned}
&\frac {-\ti} {\hbar} \int_{-\infty}^{+\infty} \td t_1 e^{\ti \hat H_0 t_1/\hbar} \hat V e^{-\epsilon |t_1|} e^{-\ti \hat H_0 t_1/\hbar}  \\
=& \int \td^3 \bm{k}\td^3 \bm{k}' \ \frac {-\ti} \hbar \int_{-\infty}^{+\infty} \td t_1 \ket{\bm{k}}e^{\ti E_{\bm{k}}t/\hbar}\bra{\bm{k}}\hat V\ket{\bm{k}'}e^{-\epsilon |t_1|} e^{-\ti E_{\bm{k}'}t/\hbar} \bra{\bm{k}'} \\
=& \int \td^3 \bm{k}\td^3 \bm{k}' \  \frac {-\ti} \hbar \ket{\bm{k}}\bra{\bm{k}}\hat V \ket{\bm{k}'}\bra{\bm{k}'} \Big(\frac 1 {\ti(E_{\bm{k}}-E_{\bm{k}'})/\hbar +\epsilon} - \frac 1 {\ti(E_{\bm{k}}-E_{\bm{k}'})/\hbar -\epsilon} \Big)\\
=& \int \td^3 \bm{k}\td^3 \bm{k}' \  \frac {-\ti} \hbar \ket{\bm{k}}\bra{\bm{k}}\hat V \ket{\bm{k}'}\bra{\bm{k}'} \frac {2\epsilon} {(E_{\bm{k}}-E_{\bm{k}'})^2/\hbar^2 +\epsilon^2} \\
\sim_{\epsilon\rightarrow 0} &\int \td^3 \bm{k}\td^3 \bm{k}' \  \frac {-\ti} \hbar \ket{\bm{k}}\bra{\bm{k}}\hat V \ket{\bm{k}'}\bra{\bm{k}'} 2\pi \delta\big(\frac {E_{\bm{k}}-E_{\bm{k}'}} {\hbar} \big) \\
=& -\int \td^3 \bm{k}\td^3 \bm{k}' \ \ket{\bm{k}}\bra{\bm{k}}\hat V \ket{\bm{k}'}\bra{\bm{k}'} \ 2\pi\ti \delta(E_{\bm{k}}-E_{\bm{k}'})
\end{aligned}$$
{{< /mathjax >}}

Using that $\lim_{\epsilon\rightarrow 0^+} \frac {2\epsilon} {x^2+\epsilon^2} = 2\pi \delta(x)$.

q.e.d.

{{</fold>}}

## 2nd Order

{{< mathjax >}}
$$\hat S^{(2)} = -\int \td^3 \bm{k}_1 \td^3 \bm{k}_2 \ket{\bm{k}_1}\bra{\bm{k}_1}\hat V \frac 1 {E_{\bm{k}_1}-\hat H_0+\ti \epsilon} \hat V \ket{\bm{k}_2}\bra{\bm{k}_2} 2\pi \ti \delta(E_{\bm{k}_1}-E_{\bm{k}_2})$$
{{< /mathjax >}}

{{<fold "Proof">}}

The second order term in Dyson series is:

{{< mathjax >}}
$$\begin{aligned}
& \Big(\frac {-\ti} {\hbar}\Big)^2 \int_{-\infty}^{+\infty} \td t_1 \int_{-\infty}^{t_1}\td t_2 e^{\ti \hat H_0 t_1 /\hbar} \hat V e^{-\epsilon |t_1|} e^{-\ti \hat H_0 t_1/\hbar} e^{\ti \hat H_0 t_2/\hbar} \hat V e^{-\epsilon |t_2|} e^{-\ti \hat H_0 t_2/\hbar} \\
&= (\frac {-\ti} \hbar)^2 \int \td^3 \bm{k}_1 \td^3 \bm{k}_2 \td^3 \bm{k}_3 \ \ket{\bm{k}_1}\bra{\bm{k}_1}\hat V \ket{\bm{k}_2}\bra{\bm{k}_2}\hat V \ket{\bm{k}_3}\bra{\bm{k}_3} \times \\
& \indent \int_{-\infty}^{+\infty} \td t_1 \int_{-\infty}^{t_1}\td t_2 \ e^{\ti E_{\bm{k}_1}t_1/\hbar-\epsilon|t_1|-\ti E_{\bm{k}_2}t_1/\hbar +\ti E_{\bm{k}_2}t_2/\hbar -\epsilon |t_2|-\ti E_{\bm{k}_3}t_2/\hbar} \\
&= (\frac {-\ti} \hbar)^2 \int \td^3 \bm{k}_1 \td^3 \bm{k}_2 \td^3 \bm{k}_3 \ \ket{\bm{k}_1}\bra{\bm{k}_1}\hat V \ket{\bm{k}_2}\bra{\bm{k}_2}\hat V \ket{\bm{k}_3}\bra{\bm{k}_3} \times \\
&\indent \Big\{\frac 1 {\ti(E_{\bm{k}_2}-E_{\bm{k}_3})/\hbar +\epsilon}\Big(\frac 1 {\ti(E_{\bm{k}_1}-E_{\bm{k}_3})/\hbar +\epsilon} - \frac 1 {\ti(E_{\bm{k}_1}-E_{\bm{k}_2})/\hbar -\epsilon} \Big) \\
&\indent - \frac 1 {\ti(E_{\bm{k}_2}-E_{\bm{k}_3})/\hbar -\epsilon}\Big(\frac 1 {\ti(E_{\bm{k}_1}-E_{\bm{k}_3})/\hbar -\epsilon} - \frac 1 {\ti(E_{\bm{k}_1}-E_{\bm{k}_2})/\hbar -\epsilon} \Big) \Big\}
\end{aligned}$$
{{< /mathjax >}}

Consider:

{{< mathjax >}}
$$\lim_{\epsilon\rightarrow 0^+} \frac 1 {x+\ti \epsilon} = -\ti \pi \delta(x) + \mathcal{P}\Big(\frac 1 x \Big)$$
{{< /mathjax >}}

Where $\mathcal{P}$ means `Cauchy principal value` . One can reduce the result above to:

{{< mathjax >}}
$$\hat S^{(2)} = -\int \td^3 \bm{k}_1 \td^3 \bm{k}_2 \ket{\bm{k}_1}\bra{\bm{k}_1}\hat V \frac 1 {E_{\bm{k}_1}-\hat H_0+\ti \epsilon} \hat V \ket{\bm{k}_2}\bra{\bm{k}_2} 2\pi \ti \delta(E_{\bm{k}_1}-E_{\bm{k}_2})$$
{{< /mathjax >}}

q.e.d.

{{</fold>}}

## Generic Formula

The generic formula of $\hat S$ is:

{{< mathjax >}}
$$\bra{\bm{k}}\hat S -1 \ket{\bm{k}'} = -2\pi \ti \delta(E_{\bm{k}}-E_{\bm{k}'}) \bra{\bm{k}} \Big(\hat V +\hat V \frac 1 {E_{\bm{k}}-\hat H_0+\ti\epsilon} \hat V +\cdots \Big) \ket{\bm{k}'}$$
{{< /mathjax >}}

Is similar to Born expansion.

{{<fold "Re-prove the Optical Theorem">}}

With that $\hat S$ is unitary, we have:

{{< mathjax >}}
$$\int \td^3 \bm{k}' \bra{\bm{k}} \hat S^\dagger\ket{\bm{k}'}\bra{\bm{k}'}\hat S \ket{\bm{k}}=\bra{\bm{k}}\bm{k}\rangle$$
{{< /mathjax >}}

Or equivalently,

{{< mathjax >}}
$$\int \td^3 \bm{k}' \Big(\bra{\bm{k}}\bm{k}'\rangle \bra{\bm{k}'}\hat S-1\ket{\bm{k}} + \bra{\bm{k}}\hat S^\dagger -1 \ket{\bm{k}'}\bra{\bm{k}'}\bm{k}\rangle + |\bra{\bm{k}'}\hat S-1\ket{\bm{k}}|^2 \Big)=0$$
{{< /mathjax >}}

Let

{{< mathjax >}}
$$T(\bm{k}',\bm{k})=\bra{\bm{k}'}\Big(\hat V +\hat V \frac 1 {E_{\bm{k}}-\hat H_0+\ti\epsilon} \hat V +\cdots \Big) \ket{\bm{k}}$$
{{< /mathjax >}}

we can rewrite the equality above as:

{{< mathjax >}}
$$\int \td^3 \bm{k}' \Big(\bra{\bm{k}}\bm{k}'\rangle (-2\pi\ti)\delta(E_{\bm{k}}-E_{\bm{k}'}) T(\bm{k}',\bm{k})+2\pi\ti\delta(E_{\bm{k}}-E_{\bm{k}'}) T(\bm{k}',\bm{k})^*\bra{\bm{k}'}\bm{k}\rangle \Big)\\
=-\int \td^3 \bm{k} \big(2\pi \delta(E_{\bm{k}'}-E_{\bm{k}}) \big)^2 |T(\bm{k}',\bm{k})|^2 $$
{{< /mathjax >}}

That is:

{{< mathjax >}}
$$-\int \td^3 \bm{k}' \ 4\pi \delta(E_{\bm{k}}-E_{\bm{k}'}) \text{Im}(\bra{\bm{k}}\bm{k}'\rangle T(\bm{k}',\bm{k})) = \int \td^3 \bm{k}' \big(2\pi \delta(E_{\bm{k}'}-E_{\bm{k}}) \big)^2 |T(\bm{k}',\bm{k})|^2 $$
{{< /mathjax >}}

That is the optical theorem:

{{< mathjax >}}
$$-\text{Im}T(\bm{k},\bm{k})=\int \td^3 \bm{k}' \pi \delta(E_{\bm{k}}-E_{\bm{k}'}) |T(\bm{k}',\bm{k})|^2$$
{{< /mathjax >}}

{{</fold>}}
