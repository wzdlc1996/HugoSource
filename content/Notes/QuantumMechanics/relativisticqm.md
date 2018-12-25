---
title: "Introduction to Relativistic Quantum Mechanics"
date: 2018-12-24T12:10:36+08:00
draft: true
tags: ["quantum","approximation"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "The simple introduction to Relativistic Quantum Mechanics. Mainly about the Dirac equation. Gives some basic understanding about the Dirac equation(in Dirac representation). Get to know some basic consequences of Dirac equation: Orbital angular momentum is not conserved, but the total angular momentum; Zeeman coupling term with g factor is 2; Spin-orbit coupling term and Zitterbewegung: Dirac particle cannot be \"at rest\" in classical sense. Even with zero momentum and without external potential, it seems to be oscillating."
---

# Dirac Equation

It comes from the dispersion relation in Special Relativistic Theory: \(E=\sqrt{c^2 \bm{p}^2+m^2 c^4}\) , transfer \(E\rightarrow \ti\hbar \frac {\td} {\td t}\) and \(\bm{p}\rightarrow -\ti\hbar \nabla\) , together with the requirement of linear equation, Dirac derived that:

$$\ti \hbar \frac {\td} {\td t} \psi = \big(c \bm{\alpha}\cdot \hat {\bm{p}} + m c^2 \beta \big)\psi$$

Dirac proved that \(\alpha_i,\beta\) should at least be \(4\times 4\) matrices.

{{%fold "Proof"%}}

We need that these coefficients satisfy that :
$$(\alpha_1 p^1+\alpha_2 p^2+\alpha_3 p^3+\beta m)^2=m^2+|\bm{p}|^2$$
Which means that :
$$\begin{aligned}
\alpha_1^2=\alpha_2^2=\alpha_3^2=\beta^2&=1 \\
\alpha_i \alpha_j + \alpha_j \alpha_i &=0 \\
\alpha_i \beta+\beta \alpha_i&=0
\end{aligned}$$
The conflit between the second equation and the first implies that those coefficients must be some matrix but number.

Moreover, we need them be Hermitian for they are coefficients in Hamiltonian. <br>
Then our question is to find four <mark>anti-commute, hermitian, square to identity</mark> matrices.

First we consider 2x2 matrices. For all 2x2 Hermitian matrices are some linear combination of Pauli matrice, while:
$$\{\sigma_i,\sigma_j\}=0 , \{\sigma_i,\sigma_0\}=2\sigma_i$$
Where \(\sigma_0=\bm{I}_2\) . The solution cannot be 2x2 matrices. For:
$$\{a_i^{\indent s}\sigma_s +a_i^{\indent 0} \sigma_0,a_j^{\indent s}\sigma_s +a_j^{\indent 0} \sigma_0\}=2a_i^{\indent 0}a_j^{\indent s} \sigma_s+2a_j^{\indent 0}a_i^{\indent s} \sigma_s\neq 2\delta_{i,j}\sigma_0$$
Then, for those matrices shall be square to identity, their eigenvalues shall be \(1\) or \(-1\) . For \(\alpha_i^2 v =\lambda_i^2 v=v\) . <br>
And for the same reason, \(\alpha_1\alpha_2\alpha_1\alpha_2=\alpha_1(-\alpha_1\alpha_2)\alpha_2=-1\) , then the eigenvalues of \(\alpha_1\alpha_2\) shall be \(\text{i}\) or \(-\text{i}\).
For \(\text{Tr}\alpha_1\alpha_2=-\text{Tr}\alpha_2\alpha_1 \Rightarrow \text{Tr}\alpha_1\alpha_2=0\) , the matrix \(\alpha_1\alpha_2\) shall be matrix with even order, same as \(\alpha_i, \beta\)

In fact, one can find that:

$$\alpha_1\alpha_2=-\alpha_2\alpha_1 \Rightarrow \alpha_1=-\alpha_2\alpha_1\alpha_2 \Rightarrow \text{Tr}(\alpha_1)=-\text{Tr}\alpha_2\alpha_1\alpha_2=-\text{Tr}\alpha_1\alpha_2\alpha_2=-\text{Tr}\alpha_1$$

At last, we know that those coefficients shall be even-order matrices. In fact , one can check that the construction through Pauli matrices above is the lowest order solution.

{{%/fold%}}

With `Dirac's convention` , or in `Dirac representation` :

$$\alpha_i = \begin{bmatrix} 0 & \sigma_i \\ \sigma_i & 0 \end{bmatrix} \ ; \ \beta=\begin{bmatrix} \sigma_0 & 0 \\ 0 & -\sigma_0\end{bmatrix}$$

Where \(\sigma_i\) are Pauli matrices, and \(\sigma_0=\bm{I}_{2\times 2}\) .

Then one has the `Dirac equation` :

$$\ti \hbar \frac {\td} {\td t} \psi = \begin{bmatrix} mc^2 & c \bm{\sigma}\cdot \hat {\bm{p}} \\ c \bm{\sigma} \cdot \hat {\bm{p}} & -mc^2 \end{bmatrix} \psi$$

Where \(\psi\) is a `4-component quantity`

Then one can prove that the integral of \(\psi^\dagger \psi\) over whole space is invariant with time. And it is positive-determinate. Then it can be interpreted as the possibility density.

The Lorentz covariant form of Dirac equation is:

$$\big(\ti \hbar \gamma^\mu \partial_\mu -m c^2 \big)\tilde{\psi} =0$$

Where \(\gamma^\mu = (\beta,\beta\bm{\alpha})\) . And \(\tilde{\psi}=\beta \psi\) . Note that \(\{\gamma^\mu,\gamma^\nu\}=2\eta^{\mu\nu}\) .

<mark>Under Lorentz transformation, \(\tilde{\psi}\) shall transform non-trivially(not only change \(t,\bm{x}\))</mark>

## Weyl Equation

When mass \(m=0\) , or extremely relativistic Dirac particle, the Dirac equation can be block-diagonalized into \(2\times 2\) equations:

$$\ti \hbar \frac {\td} {\td t} \psi = \pm c \bm{\sigma} \cdot \hat {\bm{p}} \psi$$

Where \(\pm\) signs corresponds to right(left)-handed Weyl fermions.

## Majorana Fermion

It is possible to choose \(\bm{\alpha}\) real and \(\beta\) purely imaginary:

$$\beta=\sigma_1\otimes \sigma_2 \ ; \ \alpha_1=\sigma_1\otimes \sigma_3 \ ; \ \alpha_2= -\sigma_3\otimes \sigma_0 \ ; \ \alpha_3 = -\sigma_1\otimes \sigma_1$$

In this case the Dirac equation divided \(\ti\) on both sides becomes real, so has real wave function solutions.

# Conserved Quantities for Dirac Equation

The Hamiltonian of Dirac model is a \(4\times 4\) matrix:

$$\hat H= c \bm{\alpha}\cdot \hat {\bm{p}}+m c^2\beta $$

1.  Momentum \(\hat {\bm{p}}\) is conserved: \([\hat H,\hat {\bm{p}}]=0\) .
2.  `Angular momentum` :

    $$\hat {\bm{J}} = \bm{x}\times \hat{\bm{p}} + \hat {\bm{S}}$$

    Where the spin operator:

    $$\hat S_a = \frac {\hbar} 2 \begin{bmatrix} \sigma_i & 0 \\ 0 & \sigma_i \end{bmatrix} = \frac {\hbar} {4\ti} \epsilon_{abc}\alpha_b\alpha_c$$

    It has eigenvalues \(\pm \hbar/2\) , this shows that Dirac particle are spin-1/2.

    And one can prove that:

    $$[\hat J_a,\hat J_b]=\ti \hbar \epsilon_{abc} \hat J_c \ ; \ [\hat L_a,\hat L_b]=\ti \hbar \epsilon_{abc} \hat L_c \ ; \ [\hat S_a,\hat S_b]=\ti\hbar \epsilon_{abc} \hat S_c \ ; \ [\hat L_a,\hat S_b]=0$$

    Spatial rotation corresponds to \(\exp(-\ti \bm{n}\cdot \hat {\bm{J}} \theta/\hbar)\) , and it is the transformation law for `4-component` wavefunction under spatial rotation.
3.  `Helicity` \(\hat {\bm{J}}\cdot \hat {\bm{p}}/|\bm{p}|=\hat {\bm{S}}\cdot \hat{\bm{p}}/|\bm{p}|\) . Defined for `momentum eigenstate` , so \(|\bm{p}|\) is well-defined. Helicity can be \(\pm \hbar/2\) .

# Zitterbewegung

Consider the operators in `Heisenberg picture` , we have the equation of motion:

$$\frac {\td} {\td t} \hat {\bm{x}}_H = \frac {\ti} {\hbar} [\hat H,\hat {\bm{x}}_H]=c \bm{\alpha}_H$$

So the velocity operator has eigenvalues \(\pm c\) and different components are not commutable.

Note that \([\hat H,\bm{\alpha}]\neq 0\) , that means in Heisenberg picture, \(\bm{\alpha}_H\) is not time-independent. Then:

$$\Big(\frac {\td}  {\td t}\Big)^2 \frac {\td} {\td t} \hat {\bm{x}}_H = -\frac {4m^2 c^2} {\hbar^2} \frac {\td } {\td t} \hat {\bm{x}}_H$$

And the solution of \(\bm{p}=0\) is:

$$\bm{x}(t)=\bm{x}(0) +\frac {\hbar} {2mc} \Big(\bm{\alpha}\sin \frac {2mc^2 t} {\hbar} +\ti \bm{\alpha}\beta \cos \frac {2mc^2t} {\hbar} \Big)$$

This equality only holds for the sense of expectation of \(\hat {\bm{x}}\) operator on the state of \(\bm{p}=0\). At time zero, the second term's expectation is zero, and it holds actually.

# Solutions to Dirac Equation

## Positive Energy

Let the solution has the form of \(\psi(t,\bm{x})=e^{\ti(\bm{p}\cdot \bm{x}-Et)/\hbar} u(\bm{p})\) where \(u(\bm{p})\) is a 4-component quantity. Then the Dirac equation is:

$$\begin{bmatrix} mc^2 & c \bm{\sigma}\cdot \bm{p} \\ c \bm{\sigma} \cdot \bm{p} & -mc^2 \end{bmatrix} u(\bm{p})=Eu(\bm{p})$$

Note that \(\bm{\sigma}\cdot \bm{p}\) as a \(2\times 2\) matrix has eigenvalues \(\pm|\bm{p}|\) , denote the corresponding eigenvectors as \(\chi_{\pm}(\bm{p})\) :

$$\bm{\sigma}\cdot \bm{p}\chi_{\pm}(\bm{p})=\pm |\bm{p}|\chi_{\pm}(\bm{p})$$

If \(\bm{p}=|\bm{p}|(\sin\theta\cos\phi,\sin\theta\sin\phi,\cos \theta)\) , one can choose:

$$\chi_+(\bm{p}) = \begin{bmatrix} \cos(\theta/2) \\ e^{\ti \phi}\sin (\theta/2)\end{bmatrix} \ ; \ \chi_-(\bm{p})=\begin{bmatrix} -e^{-\ti\phi}\sin(\theta/2) \\ \cos(\theta/2) \end{bmatrix}$$

Then the two solution to \(u(\bm{p})\) with \(E=\sqrt{c^2\bm{p}^2+m^2c^4}\) are:

$$u_+(\bm{p})=\begin{bmatrix} \sqrt{\frac {E+mc^2} {2mc^2}} \chi_+(\bm{p}) \\ \sqrt{\frac {E-mc^2} {2mc^2}} \chi_+(\bm{p})\end{bmatrix} \ ; \ u_-(\bm{p})=\begin{bmatrix} \sqrt{\frac {E+mc^2} {2mc^2}} \chi_-(\bm{p}) \\ -\sqrt{\frac {E-mc^2} {2mc^2}} \chi_-(\bm{p})\end{bmatrix}$$

## Negative Energy

Let the solution has the form of \(\psi(t,\bm{x})=e^{-\ti(\bm{p}\cdot \bm{x}-Et)/\hbar} v(\bm{p})\) where \(v(\bm{p})\) is a 4-component quantity. Then the Dirac equation is:

$$\begin{bmatrix} -mc^2 & c \bm{\sigma}\cdot \bm{p} \\ c \bm{\sigma} \cdot \bm{p} & mc^2 \end{bmatrix} v(\bm{p})=Ev(\bm{p})$$

Similarly, for \(E=\sqrt{c^2 \bm{p}^2+m^2c^4}\):

$$v_+(\bm{p})=\begin{bmatrix} \sqrt{\frac {E-mc^2} {2mc^2}} \chi_+(\bm{p}) \\ \sqrt{\frac {E+mc^2} {2mc^2}} \chi_+(\bm{p})\end{bmatrix} \ ; \ v_-(\bm{p})=\begin{bmatrix} -\sqrt{\frac {E-mc^2} {2mc^2}} \chi_-(\bm{p}) \\ \sqrt{\frac {E+mc^2} {2mc^2}} \chi_-(\bm{p})\end{bmatrix}$$

\(\psi\) here seems negative energy \(-E\) solution of Dirac equation with momentum \(-\bm{p}\) , actually, it should be interpreted as the `conjugate wavefunction` of a `positron` \(\psi'^*\) with energy \(+E\) and momentum \(\bm{p}\) .

# Non-relativistic Limit

The Dirac equation of charge \(q\) particle in Electromagnetic field is:

$$\ti \hbar \frac {\partial} {\partial t}\psi = \Big(c \bm{\alpha} \cdot \big(-\ti \hbar \nabla -q \bm{A}\big) +mc^2 \beta +q \Phi \Big)\psi$$

Where \(\Phi\) is electrostatic potential, and \(\bm{A}\) is the vector potential. Both depend on time and space.

Consider the case that \(|\bm{p}|\ll mc\) . Separate the Hamiltonian into diagonal term \(\hat H_0=mc^2\beta +q \Phi\) and off-diagonal term \(\hat H_1=c\bm{\alpha}\cdot (-\ti\hbar\nabla-q \bm{A})\) . We try to use sequence of unitary transformation to eliminate the off-diagonal part.

Let \(\psi'=e^{\ti \hat S(t,\bm{x})}\psi\) , then the transform:

$$\ti \hbar \partial_t \psi=e^{-\ti\hat S(t,\bm{x})}\ti\hbar \partial_t \psi' + \ti\hbar (\partial_t e^{-\ti \hat S(t,\bm{x})}) \psi'=\hat H\psi$$

Then we have the new equation:

$$\ti\hbar \partial_t \psi' = e^{\ti \hat S(t,\bm{x})} \hat H e^{-\ti \hat S(t,\bm{x})} \psi' -\ti\hbar e^{\ti\hat S(t,\bm{x})}\partial_t e^{-\ti \hat S(t,\bm{x})} \psi'\equiv \hat H'\psi'$$

Where \(\hat H'=e^{\ti \hat S(t,\bm{x})} \hat H e^{-\ti \hat S(t,\bm{x})} -\ti\hbar e^{\ti\hat S(t,\bm{x})}\partial_t e^{-\ti \hat S(t,\bm{x})}\)
