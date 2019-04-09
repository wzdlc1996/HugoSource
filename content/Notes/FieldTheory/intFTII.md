---
title: "Interacting Field Theory: Scattering Theory"
date: 2019-01-12T14:14:27+08:00
draft: false
tags: ["classical-theory"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
summary: "We will review the scattering theory which has been studied in quantum-mechanics. The main character is the S-matrix and how to compute cross section by it. Then we will introduce the Lehmann-Symanzik-Zimmermann reduction fomula, which will show the connection between time-ordered Green's function and S-matrix in scattering theory. The former can be computed by the Feynman Diagram and Feynman Rule which we have studied in the last section, and the latter is the only thing we can measure in experiments."
---

# Scattering Theory

In experiments, the most important way is the scattering between particles. And the only observable we can measure is the `scattering cross section` . So the interacting Field Theory must build a quantitative analysis about scattering question.

## S matrix and Cross Section

With the `Lippman-Schwinger Equation`, one can express the scattering process as:

<div>$$\ket{\psi_\alpha^{(\pm)}} = \ket{\phi_{\text{in}/\text{out},\alpha}}+\frac 1 {E_\alpha -\hat H_0\pm \ti \epsilon} \hat V \ket{\psi_\alpha^{(\pm)}}\Rightarrow \ket{\psi_\alpha^{(\pm)}}=\hat \Omega^{(\pm)}\ket{\phi_{\text{in}/\text{out},\alpha}}$$</div>

Where `$\ket{\phi_{\text{in}/\text{out},\alpha}}$` is the direct product state of `free single particle states` . And `$E_\alpha$` is their energy, `$\alpha$` is some `quantum number` to mark the state. And it is also the energy of `$\ket{\psi_\alpha^{(\pm)}}$` respect to the interacting Hamiltonian. And the operator `$\hat \Omega^{(\pm)}$` are also called as `Moller Wave operators`

The state `$\ket{\psi_\alpha^{(\pm)}}$` , can be treated as the mediate-state in the scattering, they evolute to the in/out state at time `$t\rightarrow \pm \infty$` .

_[Definition]_ : `S-matrix` describes the `probability amplitude` of state `$\alpha$` at `$t\rightarrow -\infty$` `jumps` to the state
 `$\beta$` at `$t\rightarrow +\infty$` with the action of scattering potential:

<div>$$S_{\beta\alpha}:=\bra{\psi_\beta^{(-)}}\psi_\alpha^{(+)}\rangle \equiv \bra{\phi_{\text{out},\beta}}\hat \Omega^{(-)\dagger}\hat \Omega^{(+)}\ket{\phi_{\text{in},\alpha}}$$</div>

It is obviously a `unitary matrix`:

<div>$$\sum_\beta S_{\alpha\beta}^* S_{\gamma\beta} = \sum_\beta S_{\beta\alpha}^* S_{\beta\gamma} = \delta_{\alpha\gamma}$$</div>

In fact, `$S$` matrix is the limit of evolution operator: `$\hat S = \hat U_I(+\infty,-\infty)$` .

_[Theorem]_ : In `Lorentz covariant` theory, S matrix must have the form of:

<div>$$S_{\beta\alpha}=\delta(\alpha-\beta)+(2\pi)^4 \delta^4(p_\beta-p_\alpha)(\ti M_{\beta\alpha})$$</div>

Where `$M_{\beta\alpha}$` is called as `Feynman Amplitude` or `Feynman matrix element` , it is Lorentz invariant.

{{%fold "Proof"%}}

With the fact that in/out states are eigenstates of momentum so they are complete in Hilbert space so one can rewrite the Lippman-Schwinger Equation as:

<div>$$\ket{\psi_\alpha^{(\pm)}}=\ket{\phi_\alpha}+\int \td \beta \ \frac 1 {E_\alpha-E_\beta\pm \ti \epsilon} \ket{\phi_\beta}\bra{\phi_\beta}\hat V \ket{\psi_\alpha^{(\pm)}}$$</div>

For a given inward wave packet, the time-evolution of it should be:

<div>$$\ket{\Psi^{(+)}_g(t)}=\int \td \alpha \ g(\alpha)e^{-\ti E_\alpha t} \ket{\psi_\alpha^{(+)}}$$</div>

At time `$t\rightarrow -\infty$` , it is reduced to `$\ket{\Psi_g^{(+)}(t\rightarrow -\infty)} = \int \td \alpha \ g(\alpha)e^{-\ti E_\alpha t} \ket{\phi_\alpha}$` . Then with the Lippman-Schwinger equation we have:

<div>$$\ket{\Psi^{(+)}_g(t)}=\int \td \alpha \ g(\alpha)e^{-\ti E_\alpha t}\ket{\phi_\alpha} +\int \td \beta \ \ket{\phi_\beta} \int \td \alpha \ g(\alpha) \frac {e^{-\ti E_\alpha t} \bra{\phi_\beta}\hat V\ket{\psi_\alpha^{(+)}}} {E_\alpha-E_\beta+\ti\epsilon}$$</div>

One can find that when `$t\rightarrow -\infty$` the integral of the second term can be computed with the `residue theorem` and the integral over upper-half plane(semi-circle and line) . The integral on semi-circle vanishes because the factor `$e^{-\ti E_\alpha t}\sim e^{- t \text{Im}(z)}$` vanishes exponentially. Then the singularities come from `$g(\alpha)$` and `$\bra{\phi_\beta}\hat V\ket{\psi_\alpha^{(+)}}$` , they can only contribute singularities with finite imagine part(if `$g$` and `$\hat V$` are not too singular), which vanish too. The term `$\frac 1 {E_\alpha-E_\beta+\ti \epsilon}$` will only contribute the singularity of `$E_\beta-\ti\epsilon$` which is not in the contour. Then the integral vanishes, and we checked that `$\ket{\Psi_g^{(+)}(t\rightarrow -\infty)} = \int \td \alpha \ g(\alpha)e^{-\ti E_\alpha t} \ket{\phi_\alpha}$`.

Then we consider the case of `$t\rightarrow +\infty$` , we need to choose the lower-half plane. With the similar argument, the integral of second term will only contribute the residue of `$E_\beta-\ti\epsilon$`, that is:

<div>$$\begin{aligned}
\ket{\Psi_g^{(+)}(t\rightarrow +\infty)}&=\int \td \alpha \ g(\alpha) e^{-\ti E_\alpha t}\ket{\phi_\alpha}+\int \td \beta \ \ket{\phi_\beta} (-2\pi \ti)\int \td \alpha \ \delta(E_\alpha-E_\beta)g(\alpha)e^{-\ti E_\alpha t}\bra{\phi_\beta}\hat V \ket{\psi_\alpha^{(+)}} \\
&=\int \td \beta \td \alpha \ e^{-\ti E_\beta t} \ket{\phi_\beta} g(\alpha)\Big(\delta(\alpha-\beta)-2\pi\ti \delta(E_\beta-E_\alpha)\bra{\phi_\beta}\hat V \ket{\psi_\alpha^{(+)}}\Big)
\end{aligned}$$</div>

With the definition of `$\hat S$`, we have: `$\ket{\psi_\alpha^{(+)}}=\int \td \beta \ket{\psi_\beta^{(-)}} S_{\beta\alpha}$` , then:

<div>$$\ket{\Psi_g^{(+)}(t)}=\int \td \alpha \ g(\alpha)e^{-\ti E_\alpha t} \int \td \beta \ \ket{\psi_\beta^{(-)}}S_{\beta\alpha}$$</div>

Since the scattering should leave the energy invariant, that is to say `$S_{\beta\alpha}$` contain the factor `$\delta(E_\alpha-E_\beta)$` , then:

<div>$$\ket{\Psi_g^{(+)}(t)}=\int \td \beta \ e^{-\ti E_\beta t} \ket{\psi_\beta^{(-)}}\int \td \alpha \ g(\alpha) S_{\beta\alpha}\rightarrow_{t\rightarrow +\infty} \int \td \beta \ e^{-\ti E_\beta t} \ket{\phi_\beta}\int \td \alpha \ g(\alpha) S_{\beta\alpha}$$</div>

Where the integrand of `$\beta$` are simply the outward wave. Compare these two equalities, one can write down:

<div>$$S_{\beta\alpha}=\delta(\beta-\alpha)-2\pi\ti \delta(E_\beta-E_\alpha)\bra{\phi_\beta}\hat V\ket{\psi_\alpha^{(+)}}$$</div>

If the theory is Lorentz covariant, then the conservation of energy leads to the conservation of 4-momentum. That is to say:

<div>$$S_{\beta\alpha}=\delta(\beta-\alpha)+\delta^4(p_\beta-p_\alpha) K_{\beta\alpha}\equiv\delta(\beta-\alpha)+(2\pi)^4\delta^4(p_\beta-p_\alpha) \big(\ti M_{\beta\alpha}\big) $$</div>

Where `$M_{\beta\alpha}$` is called as `Feynman Amplitude` . Q.E.D.

{{%/fold%}}

Then we can construct the relationship between `differential cross section`, which is the only thing we can measure in experiments, and `$S$`-matrix.

_[Theorem]_ : For a scattering process:

<div>$$p_{i,1}+\cdots +p_{i,N_\alpha}\rightarrow p_{f,1} + \cdots + p_{f,N_\beta}$$</div>

with different initial/final states `$\beta\neq \alpha$` , and denote the particle numbers of initial/final are `$N_\alpha, N_\beta$`, total momentum `$p_\beta=\sum_j p_{f,j} \ ; \ p_\alpha=\sum_j p_{i,j}$` . Then the `transition rate` is::

<div>$$\td \Gamma_{\alpha\rightarrow \beta}=\lim_{T\rightarrow +\infty} \frac {\td P_{\alpha\rightarrow \beta}} {T}=\Big(\prod_{j=1}^{N_\alpha}\frac 1 {2E_{i,j}V}\Big)(2\pi)^4  \delta^4(p_\beta-p_\alpha)V\Big(\prod_{j=1}^{N_\beta} \frac {\td^3 \bm{p}_{f,j}} {(2\pi)^3} \frac 1 {2E_{f,j}}\Big)\cdot |M_{\beta\alpha}|^2$$</div>

Where `$E_{i,j}$` is the energy of `$j$`-th initial momentum, and `$E_{f,j}$` is the energy of `$j$`-th final momentum. `$V$` is the volume of the system, which comes from the `box-normalization`.

For the special case of `$N_\alpha=1$` , it is the `decay rate` of particle. At the frame of `$E_\alpha=m_\alpha$` (particle-static), it is:

<div>$$\td \Gamma_{\alpha\rightarrow \beta} = \frac 1 {2m_\alpha}(2\pi)^4 \delta^4\big(\sum_{j=1}^{N_\beta} p_{f,j}-(m_\alpha,0,0,0)\big)\Big(\prod_{j=1}^{N_\beta} \frac {\td^3 \bm{p}_{f,j}} {(2\pi)^3 2E_{f,j}}\Big)\cdot |M_{\beta\alpha}|^2$$</div>

For the special case of `$N_\alpha=2$` , or 2-body-scattering, with the current speed is `$u_{1,2}=|v_{1,z}-v_{2,z}|$` , is the "relative velocity" in experiment-frame. And `$u_{1,2}/V$` is the density of current. Then we have the `differential cross section`:

<div>$$\td \sigma_{\alpha\rightarrow \beta} := \frac {\td \Gamma_{\alpha\rightarrow \beta}} {u_{1,2}/V}=\frac 1 {(2E_{i,1})(2E_{i,2})u_{1,2}}(2\pi)^4 \delta^4(p_{i,1}+p_{i,2}-\sum_{j=1}^{N_\beta} p_{f,j})\Big(\prod_{j=1}^{N_\beta} \frac {\td^3 \bm{p}_{f,j}} {(2\pi)^3 2 E_{f,j}}\Big)\cdot |M_{\beta\alpha}|^2$$</div>


{{%fold "Proof"%}}

We only prove the generic formula of `$\td \Gamma_{\alpha\rightarrow \beta}$` here, cases of `$N_\alpha=1,2$` can be easily obtained from it.

The value of elements of S-matrix we defined above is not the probability, because our normalization of single-particle-state is:

<div>$$\bra{\bm{k}'}\bm{k}\rangle = (2\pi)^32E_{\bm{k}}\delta^3(\bm{k}-\bm{k}')$$</div>

Where `$E_{\bm{k}}=\omega_{|\bm{k}|}$` , (in natural unit system, `$\hbar=1$`) . Then the probability of final momentum in the cell `$\td^3 \bm{p}$` (in fact we need the factor `$V(2\pi)^{-3}$` to measure the number of states in the phase-cell) should be:

<div>$$\td P_{\alpha\rightarrow \beta}=\frac {|S_{\beta\alpha}|^2} {\bra{\phi_\alpha}\phi_\alpha\rangle\bra{\phi_\beta}\phi_\beta\rangle}\prod_{i=1}^{N_\beta} \frac {V\td^3 \bm{p}_{f,j}} {(2\pi)^3}\sim \Big(\prod_{j=1}^{N_\alpha} \frac 1 {2E_{i,j}\delta^3(\bm{0})(2\pi)^3}\Big)\Big(\prod_{j=1}^{N_\beta} \frac 1 {2E_{f,j}\delta^3(\bm{0})(2\pi)^3}\Big)|S_{\beta\alpha}|^2 \prod_{i=1}^{N_\beta} \frac {V\td^3 \bm{p}_{f,j}} {(2\pi)^3}$$</div>

With the formula of `$S_{\beta\alpha}$` , noting `$\alpha\neq \beta$` , we have:

<div>$$|S_{\beta\alpha}|^2=|M_{\beta\alpha}^2|(2\pi)^8 \delta^4(p_\beta-p_\alpha)^2=|M_{\beta\alpha}^2|(2\pi)^8 \delta^4(p_\beta-p_\alpha)\delta^4(0)$$</div>

Then we begin to deal with those illegal factor `$\delta(0)$` . Our method comes from the `box-normalization` actually, using:

<div>$$\begin{aligned}
\delta^3(\bm{0})&\sim \lim_{\bm{k}'\rightarrow \bm{k}} \int \td^3 \bm{x}\frac {e^{\ti (\bm{k}'-\bm{k})\cdot \bm{x}}} {(2\pi)^3} =\frac {V} {(2\pi)^3}\\
\delta^4(0)&\sim \lim_{k'\rightarrow k} \int \td^3 \bm{x}\td t\frac {e^{\ti (\bm{k}-\bm{k}') \cdot \bm{x}+\ti (\omega-\omega')t}} {(2\pi)^4} =\frac {VT} {(2\pi)^4}\\
\end{aligned}$$</div>

Then we have:

<div>$$\begin{aligned}
\td P_{\alpha\rightarrow \beta}&=\Big(\prod_{j=1}^{N_\alpha} \frac 1 {2E_{i,j}\delta^3(\bm{0})(2\pi)^3}\Big)\Big(\prod_{j=1}^{N_\beta} \frac 1 {2E_{f,j}\delta^3(\bm{0})(2\pi)^3}\Big)|S_{\beta\alpha}|^2 \prod_{i=1}^{N_\beta} \frac {V\td^3 \bm{p}_{f,j}} {(2\pi)^3}\\
&=\Big(\prod_{j=1}^{N_\alpha} \frac 1 {2E_{i,j}V}\Big)\Big(\prod_{j=1}^{N_\beta} \frac 1 {2E_{f,j}V}\Big)(2\pi)^4 \delta^4(p_\beta-p_\alpha)VT\prod_{i=1}^{N_\beta} \frac {V\td^3 \bm{p}_{f,j}} {(2\pi)^3}\cdot |M_{\beta\alpha}|^2\\
&=\Big(\prod_{j=1}^{N_\alpha} \frac 1 {2E_{i,j}V}\Big)(2\pi)^4 \delta^4(p_\beta-p_\alpha)VT\prod_{i=1}^{N_\beta} \frac {\td^3 \bm{p}_{f,j}} {2E_{f,j}(2\pi)^3}\cdot |M_{\beta\alpha}|^2\\
\end{aligned}$$</div>

Then the transition rate:

<div>$$\td \Gamma_{\alpha\rightarrow \beta}=\lim_{T\rightarrow +\infty} \frac {\td P_{\alpha\rightarrow \beta}} {T}=\Big(\prod_{j=1}^{N_\alpha}\frac 1 {2E_{i,j}V}\Big)(2\pi)^4  \delta^4(p_\beta-p_\alpha)V\Big(\prod_{j=1}^{N_\beta} \frac {\td^3 \bm{p}_{f,j}} {(2\pi)^3} \frac 1 {2E_{f,j}}\Big)\cdot |M_{\beta\alpha}|^2$$</div>

q.e.d.

{{%/fold%}}

## LSZ Reduction Formula

`Lehmann-Symanzik-Zimmermann Reduction Formula` (or LSZ reduction formula) combines elements of S-matrix and Time-ordered Green's function, where the latter one can be easily computed by Feynman Diagrams and Feynman rules in the level of perturbation theory.

Here, we will derive it with scalar field, it can be easily generalized to other field theory.

First of all, consider the Fourier transform of one argument of time-ordered Green's function:

<div>$$\int \td^4 x \ e^{\ti p\cdot x} \bra{\Omega}\mathcal{T}\{\phi(x)\phi(z_1)\phi(z_2)\cdots\}\ket{\Omega}$$</div>

To analyze its analyticity on the complex `$p^0$` plane, one can rewrite the integral of `$x^0$` by:

<div>$$\int_{-\infty}^{+\infty}\td x^0=\int_{T_+}^{+\infty} \td x^0+\int_{T_-}^{T_+}\td x^0+\int_{-\infty}^{T_+}\td x^0$$</div>

Where `$T_+\gt \max\{z_i^0\} \ ; \ T_-\lt \min\{z_i^0\}$` . They are finite real numbers. The second integral region is finite, so it does not cause any singularities. To analyze the singular detail of it we need to consider those two infinite integral.

In these two regions, one can prove that if the pole of `$p^0\rightarrow \pm \omega_{|\bm{p}|}$` is corresponding to a `single-particle state`:

<div>$$\begin{aligned}
\int_I \td^4 x e^{\ti p\cdot x}\bra{\Omega}\mathcal{T}\{\phi(x)\phi(z_1)\cdots\}\ket{\Omega} \rightarrow_{p^0\rightarrow +\omega_{|\bm{p}|}} \frac {\ti \sqrt{Z}} {p_\mu p^\mu - m^2+\ti \epsilon} \bra{\bm{p}}\mathcal{T}\{\phi(z_1)\cdots\}\ket{\Omega} \\
\int_{III} \td^4 x e^{\ti p\cdot x}\bra{\Omega}\mathcal{T}\{\phi(x)\phi(z_1)\cdots\}\ket{\Omega} \rightarrow_{p^0\rightarrow -\omega_{|\bm{p}|}} \bra{\Omega}\mathcal{T}\{\phi(z_1)\cdots\}\ket{-\bm{p}}  \frac {\ti \sqrt{Z}} {p_\mu p^\mu - m^2+\ti \epsilon}\\
\end{aligned}$$</div>

{{%fold "Proof"%}}

Consider the total Hamiltonian(containing the interaction) `$\hat H$` leads to a set of energy-eigenstates with 3-momentum is `$\bm{0}$`, denote it as `$\ket{\lambda_0}$` , with the energy of `$m_\lambda$` . Then with the Lorentz-transformation, we have the corresponding states of 3-momentum is `$\bm{p}$` as `$\ket{\lambda_{\bm{p}}}$` . It should have the energy of `$E_{\bm{p}}(\lambda)=\sqrt{\bm{p}^2+m_\lambda^2}$` . Then the Lorentz-covariant complete of Hilbert space is:

<div>$$1=\ket{\Omega}\bra{\Omega}+\sum_{\lambda}\int \frac {\td^3 \bm{p}} {(2\pi)^3 2E_{\bm{p}}(\lambda)} \ket{\lambda_{\bm{p}}}\bra{\lambda_{\bm{p}}}$$</div>

The sum of `$\lambda$` should cover all eigenstates of zero-3-momentum. And in general cases, the energy spectrum can be continuous, then the sum should be treated as integral.

We use this complete relation on the integral on region I, together with the property of `$\bra{\Omega}\phi\ket{\Omega}=0$` , which is to say the field on vacuum is zero:

<div>$$\int_I \td^4 x e^{\ti p\cdot x}\bra{\Omega}\mathcal{T}\{\phi(x)\phi(z_1)\cdots\}\ket{\Omega}=\int_{T_+}^{+\infty}\td x^0 e^{\ti p^0 x^0}\int \td^3 \bm{x} e^{-\ti \bm{p}\cdot \bm{x}}\sum_{\lambda}\int \frac {\td^3 \bm{q}} {(2\pi)^3 2E_{\bm{q}}(\lambda)}\bra{\Omega}\phi(x)\ket{\lambda_{\bm{q}}}\bra{\lambda_{\bm{q}}}\mathcal{T}\{\phi(z_1)\cdots\}\ket{\Omega}$$</div>

With the property of Heisenberg Field operator and the relation between space-time transition and momentum, we have: `$\phi(x)=e^{\ti \hat P \cdot x} \phi(0)e^{-\ti \hat P \cdot x}$` Then:

<div>$$\bra{\Omega}\phi(x)\ket{\lambda_{\bm{p}}}=\bra{\Omega}\phi(0)\ket{\lambda_{\bm{p}}}e^{-\ti p\cdot x}$$</div>

Consider the Lorentz Boost `$\hat U$`, which induces `$\hat U\ket{\lambda_{\bm{p}}}=\ket{\lambda_0}$` . With the invariance of vacuum, and the transformation regulation of scalar field: `$\hat U \phi(0)\hat U^{-1}=\phi(0)$` , <mark>Which should be treated carefully for other fields</mark> , we have:

<div>$$\bra{\Omega}\phi(x)\ket{\lambda_{\bm{p}}}=\bra{\Omega}\hat U^{-1}\hat U\phi(0)\hat U^{-1}\hat U\ket{\lambda_{\bm{p}}}e^{-\ti p\cdot x}=\bra{\Omega}\phi(0)\ket{\lambda_0} e^{-\ti p\cdot x}$$</div>

Where `$p^0=E_{\bm{p}}(\lambda)$` . Let `$Z=|\bra{\Omega}\phi(0)\ket{\lambda_0}|^2$` (called "wavefunction renormalization factor"), then up to an over-all-phase-factor:

<div>$$\int_I \td^4 x e^{\ti p\cdot x}\bra{\Omega}\mathcal{T}\{\phi(x)\phi(z_1)\cdots\}\ket{\Omega}=\int_{T_+}^{+\infty}\td x^0 e^{\ti p^0 x^0}\int \td^3 \bm{x}e^{-\ti \bm{p}\cdot \bm{x}}\sum_{\lambda}\int \frac {\td^3 \bm{q} \ \sqrt{Z}e^{-\ti q\cdot x}} {(2\pi)^3 2E_{\bm{q}}(\lambda)}\bra{\lambda_{\bm{q}}}\mathcal{T}\{\phi(z_1)\cdots\}\ket{\Omega}$$</div>

The integral of `$x$` can be computed firstly, which means <mark>we are exchanging the order of integrals</mark> , with the convergence factor `$e^{-\epsilon x^0}$` , where `$\epsilon\gt 0$`. And the integral of `$\bm{x}$` leads to `$\delta^3(\bm{p}-\bm{q})$` , so :

<div>$$\int_I \td^4 x e^{\ti p\cdot x}\bra{\Omega}\mathcal{T}\{\phi(x)\phi(z_1)\cdots\}\ket{\Omega}=\sum_{\lambda} \frac {\sqrt{Z}} {2E_{\bm{p}}(\lambda)} \frac {\ti e^{\ti(p^0-E_{\bm{p}}(\lambda)+\ti \epsilon)T_{+}}} {p^0-E_{\bm{p}}(\lambda)+\ti\epsilon}\bra{\lambda_{\bm{p}}}\mathcal{T}\{\phi(z_1)\cdots\}\ket{\Omega}$$</div>

One can find that the denominator `$p^0-E_{\bm{p}}(\lambda)+\ti \epsilon$` is the `$p_\mu p^\mu-m_\lambda^2$` as `$p^0\rightarrow +E_{\bm{p}}(\lambda)$` . Then with the condition that the pole is corresponding to a single particle state, the statement get proved. The integral of region III is similar.

{{%/fold%}}

_[Note]_ : In the real scattering process, the initial/final states is the direct product state of single particle state of determinant momentum, which means that these single-particle states should be separated in the space. To describe such states we need `wave-packet` . And at last we can let the width of packet in momentum-space to be zero, and they will be back to momentum-eigenstates. We do not do this procedure here, but treated them as the conclusion of such scheme.

Using the lemma above to reduce field operators and generate single-particle states recurrently, one can write the relation of elements of S-matrix and the time-ordered Green's function, which is :

_[Theorem(LSZ)]_ : If we compute the Fourier transform of the time-ordered Green's function of a theory, and check the analyticity on `$p_i^0$` plane, the highest singularity is corresponding to the contribution of poles of a series of single-particle states. Apart from the `wavefunction renormalization factor` , the residue of this multi-pole is an element of the S-matrix of this theory:

<div>$$\begin{aligned}
\Big(\prod_{i=1}^n \int \td^4 x_i e^{\ti p_i\cdot x_i}\Big)\Big(\prod_{j=1}^m \int \td^4 y_j e^{-\ti k_j\cdot x_j}\Big)\bra{\Omega}\mathcal{T}\{\phi(x_1)\cdots\phi(x_n)\phi(y_1)\cdots\phi(y_n)\}\ket{\Omega} \\
\rightarrow_{\text{on-shell}} \Big(\prod_{i=1}^n \frac{\ti \sqrt{Z}} {|p_i|^2-m^2+\ti\epsilon}\Big)\Big(\prod_{j=1}^m \frac{\ti \sqrt{Z}} {|k_j|^2-m^2+\ti \epsilon}\Big)\bra{\bm{p}_1,\cdots,\bm{p}_n}\hat S\ket{\bm{k}_1,\cdots,\bm{k}_m}
\end{aligned}$$</div>

Where on-shell means that we need to let `$p_i^0=+\omega_{|\bm{p}_i|} \ ; \ k_i^0=+\omega_{|\bm{k}_i|}$`

## Perturbation Theory for Scattering

Now we have construct all needed elements for Interacting Field Theory, with the sense of `perturbation theory`. Because of the fact that the only measurable observable is `scattering cross section`, we can list the process of how to compute it with what we have construced:

1.  Write down the interacting Field Theory, or the Lagrangian.
2.  Separate the Free Hamiltonian and Interacting Hamiltonian.
3.  For the determinant scattering process, write down the needed elements of S-matrix.
4.  Use the LSZ reduction formula to express it with time-ordered Green's function.
5.  Use the Feynman-Diagram and Feynman-Rule to compute the perturbation expansion.


Compute the Green's function and its residue is very hard, but with the Feynman-Diagram/Rule, one can simplify this procedure. We will introduce this briefly here. The detailed calculation will be shown in following some posts.

Generally speaking, because of the denominator of Gell-Man & Low theorem, all disconnected Feynman diagrams' contribution will reduce it. So we need only consider connected Feynman Diagrams. The following are some terminology of Feynman Diagram:

_[Definiton]_ : A Feynman Diagram(connected) is made up with some point and lines.

1.  `outer points` : are those space-time points appear in the Green's function, or arguments of Green's function.
2.  `inner points` : are those space-time points appear in the Dyson series, they are integral variables and not arguments of Green's function.
3.  `vertex` : or `interaction vertex`, are those inner points together with coupling parameters. Every vertex contributes to a Wick contraction between interacting fields.
4.  `outer lines` : are those lines with at least one end is outer point.
5.  `inner lines` : are those lines who do not connect with outer points. Every inner line contributes to a Free Green's function(Feynman propagator), which appears at every Wick contraction.
6.  `Amputated diagrams` : For a generic Feynman Diagram, begin with every outer line to its inner part. One can separate the diagram into two part by cut a line("amputate"). The most minimal diagram which cannot be separated into two disconnected part by the amputate is a `Amputated diagram`, which means one need to go along the line as far as possible.
7.  `1PI diagrams` : or `one particle irreducible diagrams` , are those two-outer-point diagrams who cannot be separated into two disconnected part by cut a line. It is a special case of amputated diagrams.

We will use the 2-particle `$\rightarrow$` 2-particle scattering as the example. We need to compute a 4-point-Green-function. With the concept above we can find that the Feynman diagram can be write as an `Amputated 4-point diagram` and four full-propagator. Then we treated them one by one.

### Full-Propagator, Self-Energy

First we consider the `full propagator`. It is the 2-point Green's function of the interacting Field Theory. With the 1PI diagram, we can find that it should be the sum of all 1PI diagram chains. It looks like a geometry series. With the 1PI diagram contribute is `$-\ti \Sigma(p)$`. one can write the full propagator as:

<div>$$\begin{aligned}
G(p)&=\frac {\ti} {|p|^2-m_0^2}+\frac {\ti} {|p|^2-m_0^2}\big(-\ti \Sigma(p)\big)\frac {\ti} {|p|^2-m_0^2}+\cdots \\
&= \frac {\ti} {p_\mu p^\mu - m_0^2-\Sigma(p)}\rightarrow_{\text{on-shell}} \frac {\ti Z} {p_\mu p^\mu-m^2+\ti \epsilon}
\end{aligned}$$</div>

Where the on-shell means that the highest order singularity. Here `$m_0$` which appears in the Free Lagrangian is called `bare mass`, and `$m$` as the pole of full-propagator is called `physical mass`. Because of this `$\Sigma(p)$` is also called `self-energy`.

The `wavefunction renormalization factor` appears here can be easily checked by applying the LSZ reduction formula on this 2-point Green's function. We can get clear about it now, it is the residue of full propagator at the pole of physical mass.

### Feynman Amplitude, Amputated Function

Then we consider the amputated 4-point function. With the LSZ reduction formula, and the on-shell behavior of outer line propagator(full propagator). we have:

<div>$$\bra{\bm{p}_1,\bm{p}_2}\hat S\ket{\bm{k}_1,\bm{k}_2}=(\sqrt{Z})^4\times (\text{connected, amputated 4 points Green's function})$$</div>

With the spatial-time homogeneous, which induces a delta function for 4-momentum to hold the energy-momentum conservation, we can write the much generic formula, about Feynman Amplitude and amputated Green's function:

<div>$$\ti M=(\sqrt{Z})^{n+2}\times(\text{connected, amputated \(n\)+2 points Green's function})$$</div>
