---
title: "Manybody6"
date: 2019-04-07T17:09:13+08:00
draft: true
tags: ["statistical-phys"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "Classnote for the class in PKU: 'Quantum Theory for Manybody System'. In this note we will pay attention on constructing a general framework(Landau theory) for the phase transition, which can be treated as one of the most important physics phenomenas. Then we will use Landau theory to discuss two important phase transition: Bose-Einstein condensation and superconductivity."
---

# General Theory

## Phase Transition

**Equation of state** is defined in the space of three variables:

1.  Temperature \(T\)
2.  External field. Like pressure \(p\) , magnetic field \(H\), etc.
3.  The thermodynamic variable conjugate to the external field. Like volume \(V\) to pressure, magnetization \(M\) to magnetic field, etc.

## Landau Theory

This is a `paradigm` for a class of phase transition problems: `continuous phase transition`.

_[Assumptions]_ : Landau theory is based on the following assumptions:

1.  There exists an order parameter (e.g. the magnetization density \(m\) ) which vanishes in one phase (`disordered phase`) and is non-zero in the other phase (`ordered phase`)
2.  There exists a Landau `functional` \(\mathcal{L}[m(\bm{r}),H,T]\) which is a `continuous` function of its arguments and gives rise to the `exact partition function` of the system by:

    $$\mathcal{Z}=\int \mathcal{D}[m(\bm{r})] \exp\Big(-\beta \mathcal{L}[m(\bm{r}),H,T]\Big)$$

    Where \(H\) is the external field conjugate to \(m\) , and \(T\) is temperature.

_[Note]_ : The second assumption is regarded as the definition of the Landau functional

1.  Landau functional can be derived from the microscopic Hamiltonian of the system by applying the Hubbard-Stratonovich transformation or its classical counterpart

2.  The functional can be constructed phenomenologically:

    -  The only physical constraint of the form of \(\mathcal{L}\) is the `symmetries` of the system
    -  The transition is driven by the change of the functional form of \(\mathcal{L}\)
    -  Near the critical point, one can expand the functional as a power series in \(m\):

       $$\mathcal{L}[m(\bm{r}),H,T]\approx \int \td^d \bm{r} \ \Big(\frac a 2 |\nabla m(\bm{r})|^2 +c_1 hm+d_2 tm^2+c_3 hm^3 +b_4 m^4\Big)$$

       With \(t=T-T_c , h=H-H_c\) . Usually, a few terms can let us see the phase transition. High order terms just make the quantity result more accurate.

## Mean Field Theory

The `mean field approximation` is just the `stationary-phase approximation` for evaluating the partition function with Landau functional:

$$\delta \mathcal{L} \big|_{m(\bm{r})=\bar m} =0 \ ; \ \mathcal{Z} \approx \exp\Big(-\beta \mathcal{L}[\bar m,H,T]\Big)$$

Where the variation of \(\mathcal{L}\) is respect to the field \(m(\bm{r})\) .

With the expansion of Landau functional above:

$$\bar{m}\propto \begin{cases}\pm (-t)^{1/2} & T\lt T_c , H=H_c \\ h^{1/3} & T= T_c\end{cases}$$

{{< fold "Proof">}}

With the mean-field approximation, Landau functional has the form of:

$$\mathcal{L}[m,H,T]=V(c_1 h m+d_2 t m^2+c_3 h m^3 +b_4 m^4)$$

So we have:

$$\delta \mathcal{L}\Big|_{m=\bar{m}}=V\Big(c_1 h+2d_2 t \bar m +3c_3 h \bar m^2+4b_4 \bar m^3\Big)\delta m=0$$

So with \(T\lt T_c , H=H_c\) , it is \(2d_2 t \bar{m} +4 b_4 \bar{m}^3 = 0\) . And with \(T=T_c\) it is \(c_1 h+3 c_3 h \bar{m}^2+4 b_4 \bar{m}^3=0\) , whose solution has the asymptotic behavior of \(\bar{m}\propto h^{1/3}\).

q.e.d.

{{< /fold >}}

# BEC and Superfluidity

## Bose-Einstein Condensation

Let us begin with the `non-interacting Boson system` . The `Bose-Einstein condensation(BEC)` occurs when the states with \(\epsilon \gt 0\) cannot accommodate all particles even one sets \(\mu=0\) (maximally allowed value), i.e. there is a macroscopic large number of particles will accumulate in the single-particle ground state.

With Bose-Einstein distribution function(this only works for non-interacting Boson system), we have the condition or criterion of BEC:

$$\sum_{\epsilon_a \gt 0} n_B(\epsilon_a) = N_1 \ll N$$

One can further obtain the condensate density:

$$\rho_c(T)=\rho \Big(1-\big(\frac T {T_c}\big)^{3/2}\Big)$$

{{< fold "Proof" >}}

With the density of states of free Boson gas: \(D(E)=\frac {2s+1} {(2\pi)^2} \Big(\frac {2m} {\hbar^2}\Big)^{3/2} V \sqrt{E}\) . Where factor \(2s+1\) comes from degree freedom of spin. For \(D(E=0)=0\) , so in order to discuss the BEC we need to count the number of particle on ground state separately:

$$N=\int_0^{\infty} \frac {D(E)} {e^{\beta(E-\mu)}-1} \td E + \frac 1 {e^{-\beta\mu}-1}$$

Directly, BEC occurs at the point that \(e^{-\beta\mu}\sim 1\) .Using the property of Riemann zeta function:

$$\zeta(s)=\frac 1 {\Gamma(s)} \int_0^{\infty} \frac {x^{s-1}} {e^x -1} \td x$$

we can rewrite it as:

$$N=\frac 1 {e^{-\beta \mu}-1}+\frac {(2s+1)V} {(2\pi)^2} \Big(\frac {2m} {\hbar^2\beta}\Big)^{3/2} e^{\beta\mu}\Big\{\zeta(3/2)\Gamma(3/2)-(1-e^{\beta\mu})\int_0^{\infty} \frac {\sqrt{x}\td x} {(e^x-1)^2}\Big\}$$

At the zero order, we make \(1-e^{\beta\mu}=1\) and \(\frac 1 {e^{-\beta\mu}-1} =N_c\) . The equality becomes:

$$N = N_c(T)+N \Big(\frac {\beta_c} {\beta}\Big)^{3/2}$$

Where:

$$N=\frac {(2s+1)V} {(2\pi)^2} \Big(\frac {2m} {\hbar^2\beta_c}\Big)^{3/2} \zeta(3/2)\Gamma(3/2)$$

So we have the condensate density:

$$\rho_c(T)=\rho\Big(1-\big(\frac{T} {T_c}\big)^{3/2}\Big)$$

{{< /fold >}}

Now let us consider a Boson system with a repulsive contact interaction \(v(\bm{r}-\bm{r'})=g\delta(\bm{r}-\bm{r'})\) where \(g\gt0\). The action is (with \(\phi\) are complex valued field):

$$S[\phi,\phi^*]=\int \td^d\bm{r}\int \td\tau \Big\{\phi^*(\bm{r},\tau)\Big(\hbar\partial_{\tau}-\frac {\hbar^2\nabla^2} {2m}-\mu\Big)\phi(\bm{r},\tau)+\frac g 2 \big[\phi^*(\bm{r},\tau)\phi(\bm{r},\tau)\big]^2\Big\}$$

With the mean-field approximation, for a uniform field \(\phi\) it is reduced to:

$$S=\hbar\beta V\Big(-\mu |\phi|^2+\frac g 2 |\phi|^4\Big)$$

It predicts a `mean-field critical point` at \(\mu=0\) . And \(|\phi|^2=\mu/g\) for \(\mu\gt 0\).

## Superfluidity

### Reduced action

The BEC state breaks the `gauge symmetry`, i.e. the invariance under the transformation of \(\phi\rightarrow \phi e^{\ti \varphi}\).

`Goldstone Mode` is the spatial-modulation of the phase \(\varphi\). Let us introduce the transformation of the field:

$$\phi(\bm{r},\tau)=[\rho_c+\rho(\bm{r},\tau)]^{1/2} e^{\ti \varphi(\bm{r},\tau)}$$

Where \(\rho_c=\mu/g\) is the mean-field solution. Such transformation is non-trivial because of the path integral is defined depend on the discrete time integral. Here we do not handle the difficulty caused by the variable transformation, but treat them as ordinary calculus. However, one can prove that our procedure gives the correct result, by the time-slicing approach.

$$S[\rho,\varphi]=\int \td^d \bm{r}\int \td \tau \Big\{\ti\hbar \rho\partial_{\tau}\varphi+\frac {\hbar^2|\nabla \rho|^2} {8m(\rho_c+\rho)}+\frac {\hbar^2 (\rho_c+\rho)} {2m} |\nabla \varphi|^2+\frac g 2 \rho^2\Big\}-\frac {\hbar\beta\mu N_c} 2 +\ti\hbar N_c 2\pi n$$

{{< fold "Proof" >}}

For the quadratic part, with \(\phi=r e^{\ti \varphi}\)

$$\begin{aligned}
\phi^*(\bm{r},\tau)\Big(\hbar\partial_{\tau}-\frac {\hbar^2\nabla^2} {2m}-\mu\Big)\phi(\bm{r},\tau) &=\hbar r\partial_{\tau}r+\ti\hbar r^2\partial_{\tau}\varphi - \mu r^2-\frac {\hbar^2} {2m}\Big(r\nabla^2r+\ti r^2 \nabla^2 \varphi+2\ti r \nabla\varphi\cdot \nabla r-r^2 |\nabla \varphi|^2\Big)
\end{aligned}$$

With the boundary condition: \(\phi(\tau=\beta\hbar)=\phi(\tau=0)\) , we have: \(r(\tau=\beta\hbar)=r (\tau=0)\) and \(\varphi(\tau=\beta\hbar)=\varphi(\tau=0)+2\pi n\).  So \(r\partial_{\tau}r\) has no contribution. The result should be simplified as:

$$\begin{aligned}
\phi^*(\bm{r},\tau)\Big(\hbar\partial_{\tau}-\frac {\hbar^2\nabla^2} {2m}-\mu\Big)\phi(\bm{r},\tau) &=\ti\hbar r^2\partial_{\tau}\varphi - \mu r^2-\frac {\hbar^2} {2m}\Big(\nabla^2 \frac {r^2} 2 -|\nabla r|^2+\ti\nabla \cdot \big(r^2\nabla \varphi\big)-r^2 |\nabla \varphi|^2\Big)
\end{aligned}$$

With the assumption of the integral of divergence vanishes, we can omit \(\nabla\cdot\) like quantities. Finally, the quadratic part has been simplified as:

$$\begin{aligned}
\phi^*(\bm{r},\tau)\Big(\hbar\partial_{\tau}-\frac {\hbar^2\nabla^2} {2m}-\mu\Big)\phi(\bm{r},\tau) &=\ti\hbar r^2\partial_{\tau}\varphi - \mu r^2+\frac {\hbar^2} {2m}\Big(|\nabla r|^2+r^2 |\nabla \varphi|^2\Big) \\
&=\ti \hbar \rho_c \partial_{\tau}\varphi + \ti\hbar \rho \partial_{\tau}\varphi-\mu\rho_c-\mu\rho \\
&\indent +\frac {\hbar^2} {2m}\Big(\frac {|\nabla \rho|^2} {4(\rho_c+\rho)}+(\rho_c+\rho)|\nabla \varphi|^2\Big)
\end{aligned}$$

In the sense of integral. And the interaction part:

$$\frac g 2 |\phi|^4=\frac g 2 (\rho_c+\rho)^2=\frac g 2 (\rho_c^2+\rho^2)+g\rho_c\rho$$

With \(\rho_c=\mu/g\), we have the action:

$$S=\int \td^d \bm{r}\int \td \tau \Big\{\ti\hbar \rho\partial_{\tau}\varphi+\frac {\hbar^2|\nabla \rho|^2} {8m(\rho_c+\rho)}+\frac {\hbar^2 (\rho_c+\rho)} {2m} |\nabla \varphi|^2+\frac g 2 \rho^2\Big\}-\frac {g \rho_c^2 V\hbar \beta} 2 +\ti\hbar \rho_c V 2\pi n$$

Let \(\rho_c V =N_c\) we have proved it.

{{< /fold >}}

Make the approximation of the action, up to the second order of \(\rho,\varphi\) so that the path integral is a Gaussian integral. Then integrate out \(\rho\), we have the reduced action of \(\varphi\) like:

$$S[\varphi]=-\frac 1 2\int\td^d \bm{k}\int\td \tau\Big\{\Big(g+\frac {\hbar^2\bm{k}^2} {4m\rho_c}\Big)^{-1}|\partial_{\tau}\varphi_{\bm{k}}|^2-\frac {\hbar^2 \bm{k}^2 \rho_c} {m} |\varphi_{\bm{k}}|^2\Big\}$$

{{<fold "Proof">}}

Up to the second order of \(\rho\) , the action is:

$$S[\rho,\varphi]\approx\int \td^d \bm{r}\int \td \tau \Big\{\ti\hbar \rho\partial_{\tau}\varphi+\frac {\hbar^2|\nabla \rho|^2} {8m\rho_c}+\frac {\hbar^2 \rho_c} {2m} |\nabla \varphi|^2+\frac g 2 \rho^2\Big\}-\frac {\hbar\beta\mu N_c} 2 +\ti\hbar N_c 2\pi n$$

With \(\rho(\bm{r},\tau)=\frac 1 {\sqrt{(2\pi)^d}}\int \td^d \bm{k} \ e^{\ti \bm{k}\cdot \bm{r}} \rho_{\bm{k}}(\tau)\) and \(\varphi(\bm{r},\tau)=\frac 1 {\sqrt{(2\pi)^d}}\int \td^d \bm{k} \ e^{\ti \bm{k}\cdot \bm{r}} \varphi_{\bm{k}}(\tau)\) . So the action is: (note that \(\rho_{\bm{k}}=\rho_{-\bm{k}}^*, \varphi_{\bm{k}}=\varphi_{-\bm{k}}^*\) because they are real valued.)

$$S[\rho,\varphi]=\int \td^d \bm{k}\int \td \tau\Big\{\ti \hbar \rho_{\bm{k}}^*\partial_{\tau}\varphi_{\bm{k}}+\frac {\hbar^2 k^2} {8m \rho_c} |\rho_{\bm{k}}|^2+\frac {\hbar^2 \rho_c} {2m} k^2 |\varphi_{\bm{k}}|^2+\frac g 2 |\rho_{\bm{k}}|^2\Big\}-\frac {\hbar\beta \mu N_c} 2 +\ti\hbar N_c 2\pi n$$

Then the action is diagonalized. The integral of \(\rho\):

$$\begin{aligned}
&\indent \int \mathcal{D} \rho \ \exp\Big(\int \td^d \bm{k}\int \td\tau \Big\{-\ti \rho_{\bm{k}}^* \partial_{\tau} \varphi_{\bm{k}}-\big(\frac {\hbar \bm{k}^2} {8m\rho_c}+\frac g {2\hbar}\big)|\rho_{\bm{k}}|^2\Big\}\Big) \\
&= \prod_{\bm{k},\tau} \int \frac {\td \rho^* \td\rho} {2\pi\ti}\exp\Big(-\frac {\ti \rho^*\partial_{\tau}\varphi_{\bm{k}}+\ti\rho\partial_{\tau}\varphi_{\bm{k}}^*} 2- \big(\frac {\hbar \bm{k}^2} {8m\rho_c}+\frac g {2\hbar}\big)|\rho|^2\Big) \\
&=\prod_{\bm{k},\tau}\frac {\hbar} {\frac {\hbar^2 \bm{k}^2} {8m\rho_c}+\frac g 2}\exp\Big(\frac {-|\partial_{\tau}\varphi_{\bm{k}}|^2} {\frac {\hbar \bm{k}^2}{2m\rho_c}+\frac {2g} {\hbar}} \Big)
\end{aligned}$$

It contributes an additional term of the action:

$$-\int \td^d \bm{k}\int \td\tau \Big(2g+\frac {\hbar^2\bm{k}^2} {2m\rho_c}\Big)^{-1}|\partial_{\tau}\varphi_{\bm{k}}|^2+\text{Const}$$

So we have the reduced action: (ignoring the constant term)

$$S[\varphi]=-\frac 1 2\int\td^d \bm{k}\int\td \tau\Big\{\Big(g+\frac {\hbar^2\bm{k}^2} {4m\rho_c}\Big)^{-1}|\partial_{\tau}\varphi_{\bm{k}}|^2-\frac {\hbar^2 \bm{k}^2 \rho_c} {m} |\varphi_{\bm{k}}|^2\Big\}$$

{{</fold>}}

Which describes a collective excitation with the dispersion:

$$\omega_{\bm{k}}=\sqrt{\frac {g\rho_c} m \bm{k}^2+\Big(\frac {\hbar^2 \bm{k}^2} {2m}\Big)^2}$$

If the condensate maintains a spatial gradient of \(\bar{\varphi}(\bm{r})\) (e.g. when the condensate has a velocity relative to observers), the current density is (corresponding the case of \(\omega_n=0\) ):

$$\begin{aligned}
\bm{j}_s(\bm{r}) &= \frac 1 {\hbar \beta}\int_0^{\beta\hbar} \td\tau \ \Big(-\frac {\ti \hbar} {2m}\Big)\Big\langle \phi^*(\bm{r},\tau)\nabla \phi(\bm{r},\tau)-[\nabla \phi^*(\bm{r},\tau)]\phi(\bm{r},\tau)\Big\rangle \\
&\approx \frac {\hbar \rho} {m}\nabla \bar{\varphi}(\bm{r})
\end{aligned}$$

Where we neglect the effect of fluctuations \(T\rightarrow 0\) .

### Bogoliubov transformation
