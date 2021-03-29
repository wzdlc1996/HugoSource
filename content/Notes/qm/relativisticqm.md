---
title: "Introduction to Relativistic Quantum Mechanics"
date: 2018-12-24T12:10:36+08:00
draft: false
tags: ["quantum","approximation"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "The simple introduction to Relativistic Quantum Mechanics. Mainly about the Dirac equation. Gives some basic understanding about the Dirac equation(in Dirac representation). Get to know some basic consequences of Dirac equation: Orbital angular momentum is not conserved, but the total angular momentum; Zeeman coupling term with g factor is 2; Spin-orbit coupling term and Zitterbewegung: Dirac particle cannot be \"at rest\" in classical sense. Even with zero momentum and without external potential, it seems to be oscillating."
---

# Dirac Equation

It comes from the dispersion relation in Special Relativistic Theory: $E=\sqrt{c^2 \bm{p}^2+m^2 c^4}$ , transfer $E\rightarrow \ti\hbar \frac {\td} {\td t}$ and $\bm{p}\rightarrow -\ti\hbar \nabla$ , together with the requirement of linear equation, Dirac derived that:


$$\ti \hbar \frac {\td} {\td t} \psi = \big(c \bm{\alpha}\cdot \hat {\bm{p}} + m c^2 \beta \big)\psi$$


Dirac proved that $\alpha_i,\beta$ should at least be $4\times 4$ matrices.

{{<fold "Proof">}}

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
Then our question is to find four <mark>anti-commutative, hermitian, square to identity</mark> matrices.

First we consider 2x2 matrices. For all 2x2 Hermitian matrices are some linear combination of Pauli matrice, while:

$$\{\sigma^i,\sigma^j\}=0 , \{\sigma^i,\sigma^0\}=2\sigma^i$$

Where $\sigma^0=\bm{I}_2$ . The solution cannot be 2x2 matrices. For:

$$\{a_i^{\indent s}\sigma^s +a_i^{\indent 0} \sigma^0,a_j^{\indent s}\sigma^s +a_j^{\indent 0} \sigma^0\}=2a_i^{\indent 0}a_j^{\indent s} \sigma^s+2a_j^{\indent 0}a_i^{\indent s} \sigma^s\neq 2\delta_{i,j}\sigma^0$$

Then, for those matrices shall be square to identity, their eigenvalues shall be $1$ or $-1$ . For $\alpha_i^2 v =\lambda_i^2 v=v$ . <br>
And for the same reason, $\alpha_1\alpha_2\alpha_1\alpha_2=\alpha_1(-\alpha_1\alpha_2)\alpha_2=-1$ , then the eigenvalues of $\alpha_1\alpha_2$ shall be $\text{i}$ or $-\text{i}$.
For $\text{Tr}\alpha_1\alpha_2=-\text{Tr}\alpha_2\alpha_1 \Rightarrow \text{Tr}\alpha_1\alpha_2=0$ , the matrix $\alpha_1\alpha_2$ shall be matrix with even order, same as $\alpha_i, \beta$

In fact, one can find that:


$$\alpha_1\alpha_2=-\alpha_2\alpha_1 \Rightarrow \alpha_1=-\alpha_2\alpha_1\alpha_2 \Rightarrow \text{Tr}(\alpha_1)=-\text{Tr}\alpha_2\alpha_1\alpha_2=-\text{Tr}\alpha_1\alpha_2\alpha_2=-\text{Tr}\alpha_1$$


At last, we know that those coefficients shall be even-order matrices. In fact , one can check that the construction through Pauli matrices above is the lowest order solution.

{{</fold>}}

With `Dirac's convention` , or in `Dirac representation` :


$$\alpha_i = \begin{bmatrix} 0 & \sigma^i \\ \sigma^i & 0 \end{bmatrix} \ ; \ \beta=\begin{bmatrix} \sigma^0 & 0 \\ 0 & -\sigma^0\end{bmatrix}$$


Where $\sigma^i$ are Pauli matrices, and $\sigma^0=\bm{I}_{2\times 2}$ .

Then one has the `Dirac equation` :


$$\ti \hbar \frac {\td} {\td t} \psi = \begin{bmatrix} mc^2 & c \bm{\sigma}\cdot \hat {\bm{p}} \\ c \bm{\sigma} \cdot \hat {\bm{p}} & -mc^2 \end{bmatrix} \psi$$


Where $\psi$ is a `4-component quantity`

Then one can prove that the integral of $\psi^\dagger \psi$ over whole space is invariant with time. And it is positive-determinate. Then it can be interpreted as the possibility density.

The Lorentz covariant form of Dirac equation is:


$$\big(\ti \hbar \gamma^\mu \partial_\mu -m c^2 \big)\tilde{\psi} =0$$


Where $\gamma^\mu = (\beta,\beta\bm{\alpha})$ . And $\tilde{\psi}=\beta \psi$ . Note that $\{\gamma^\mu,\gamma^\nu\}=2\eta^{\mu\nu}$ .

<mark>Under Lorentz transformation, $\tilde{\psi}$ shall transform non-trivially(not only change $t,\bm{x}$)</mark>

## Weyl Equation

When mass $m=0$ , or extremely relativistic Dirac particle, the Dirac equation can be block-diagonalized into $2\times 2$ equations:


$$\ti \hbar \frac {\td} {\td t} \psi = \pm c \bm{\sigma} \cdot \hat {\bm{p}} \psi$$


Where $\pm$ signs corresponds to right(left)-handed Weyl fermions.

## Majorana Fermion

It is possible to choose $\bm{\alpha}$ real and $\beta$ purely imaginary:


$$\beta=\sigma^1\otimes \sigma^2 \ ; \ \alpha_1=\sigma^1\otimes \sigma^3 \ ; \ \alpha_2= -\sigma^3\otimes \sigma^0 \ ; \ \alpha_3 = -\sigma^1\otimes \sigma^1$$


In this case the Dirac equation divided $\ti$ on both sides becomes real, so has real wave function solutions.

# Conserved Quantities for Dirac Equation

The Hamiltonian of Dirac model is a $4\times 4$ matrix:


$$\hat H= c \bm{\alpha}\cdot \hat {\bm{p}}+m c^2\beta $$


1.  Momentum $\hat {\bm{p}}$ is conserved: $[\hat H,\hat {\bm{p}}]=0$ .
2.  `Angular momentum` :

    
$$\hat {\bm{J}} = \bm{x}\times \hat{\bm{p}} + \hat {\bm{S}}$$


    Where the spin operator:

    
$$\hat S^i = \frac {\hbar} 2 \begin{bmatrix} \sigma^i & 0 \\ 0 & \sigma^i \end{bmatrix} = \frac {\hbar} {4\ti} \epsilon^{ijk}\alpha_j\alpha_k$$


    It has eigenvalues $\pm \hbar/2$ , this shows that Dirac particle are spin-1/2.

    And one can prove that:

    
$$[\hat J^i,\hat J^j]=\ti \hbar \epsilon^{ijk} \hat J^k \ ; \ [\hat L^i,\hat L^j]=\ti \hbar \epsilon^{ijk} \hat L^k \ ; \ [\hat S^i,\hat S^j]=\ti\hbar \epsilon^{ijk} \hat S^k \ ; \ [\hat L^i,\hat S^j]=0$$


    Spatial rotation corresponds to $\exp(-\ti \bm{n}\cdot \hat {\bm{J}} \theta/\hbar)$ , and it is the transformation law for `4-component` wavefunction under spatial rotation.

    {{<fold "Proof">}}

We will proof the orbital-angular-momentum will not be conserved in Dirac theory first, note $\alpha_i,\beta$ are commutable to c-number and scalar-operators:


$$\begin{aligned}[]
[\hat H,\hat L^j] &= [c\alpha_i \hat p^i+mc^2\beta,\epsilon^{jkl}\hat x^k \hat p^l] \\
&=\epsilon^{jkl} c \alpha_i (-\ti \hbar) \delta_{ik} \hat p^l \\
&=-\ti \hbar \epsilon^{jil} c \alpha_i \hat p^l\\
&=-\ti \hbar c (\bm{\alpha}\times \hat{\bm{p}})^j \neq 0
\end{aligned}$$


sum for indices except $j$ .

Then, the orbital angular momentum's square:


$$[\hat H,(\hat {\bm{L}})^2]=\sum_j [\hat H, (\hat L^j)^2]=-\ti \hbar c\sum_j \{\hat L^j,(\bm{\alpha}\times \hat {\bm{p}})^j\} \neq 0 $$


Then we will prove that total angular momentum is conserved. With some equalities about $\alpha,\beta$:


$$[\alpha_i,\alpha_j]=\begin{bmatrix}\sigma^i\sigma^j-\sigma^j\sigma^i & 0 \\ 0 & \sigma^i\sigma^j-\sigma^j\sigma^i \end{bmatrix}=\frac {4\ti} {\hbar} \epsilon^{ijk} \hat S^k$$


And $\{\beta,\alpha_i\}=0 \ ; \ \{\alpha_i,\alpha_j\}=2\delta_{ij}$ .

For spin operator we have:


$$[\hat S^i,\alpha_j]=\frac {\hbar} {2}\begin{bmatrix}0 & \sigma^i\sigma^j-\sigma^j\sigma^i \\ \sigma^i\sigma^j-\sigma^j\sigma^i & 0\end{bmatrix}= \ti\hbar \epsilon^{ijk}\alpha_k$$


And $\{\hat S^i,\alpha_j\}=\hbar \sigma^1\otimes \sigma^0\delta_{ij}$.

Then:


$$\begin{aligned}[]
[\hat H,\hat S^j]&=c[\alpha_i , \hat S^j]\hat p^i + mc^2 \epsilon^{jkl}\frac {\hbar} {4\ti} [\beta,\alpha_k\alpha_l] \\
&=-\ti\hbar c \epsilon^{jik}\alpha_k \hat p^i+ mc^2 \epsilon^{jkl}\frac {\hbar} {4\ti} \big(\{\beta,\alpha_k\}\alpha_l-\alpha_k\{\beta,\alpha_l\} \big) \\
&=\ti\hbar c (\bm{\alpha}\times \hat{\bm{p}})^j
\end{aligned}$$


Moreover, it shows that $[\hat H,\hat S^j \hat p^j]=0$ . This means `helicity` is a good quantum number. ($\hat L^j\hat p^j=0$ so we do not consider it as quantum number).

And for spin $\hat {\bm{S}}^2$ :


$$[\hat H,\hat {\bm{S}}^2]=\sum_j \{\hat S^j,\ti\hbar c (\bm{\alpha}\times \hat{\bm{p}})_j\} = \ti\hbar c \sum_j \{\hat S^j,\alpha_{k}\}\epsilon^{jkl} \hat p^l=0$$


Then we compute the total angular momentum:


$$[\hat H,\hat L^j+\hat S^j]=0$$


That is to say, in Dirac theory only the total momentum is conserved. Moreover, $\hat{\bm{S}}^2$ and $\hat{\bm{S}}\cdot \hat{\bm{p}}$ are also conserved.

    {{</fold>}}

3.  `Helicity` $\hat {\bm{J}}\cdot \hat {\bm{p}}/|\bm{p}|=\hat {\bm{S}}\cdot \hat{\bm{p}}/|\bm{p}|$ . Defined for `momentum eigenstate` , so $|\bm{p}|$ is well-defined. Helicity can be $\pm \hbar/2$ .

# Zitterbewegung

Consider the operators in `Heisenberg picture` , we have the equation of motion:


$$\frac {\td} {\td t} \hat {\bm{x}}_H = \frac {\ti} {\hbar} [\hat H,\hat {\bm{x}}_H]=c \bm{\alpha}_H$$


So the velocity operator has eigenvalues $\pm c$ and different components are not commutable.

Note that $[\hat H,\bm{\alpha}]\neq 0$ , that means in Heisenberg picture, $\bm{\alpha}_H$ is not time-independent. Then for $\bm{p}=0$ state:


$$\Big(\frac {\td}  {\td t}\Big)^2 \frac {\td} {\td t} \langle \hat{\bm{x}}\rangle = -\frac {4m^2 c^4} {\hbar^2} \frac {\td } {\td t} \langle \hat{\bm{x}}\rangle$$


{{<fold "Proof">}}

One can check that:


$$[\hat H,\alpha_j]=c [\alpha_i,\alpha_j]\hat p^i +mc^2 [\beta ,\alpha_j]=\frac {4\ti} {\hbar} c\epsilon^{ijk}\hat S^k \hat p^i+2mc^2 \beta\alpha_j$$


And:


$$\begin{aligned}[]
[\hat H,[\hat H,\alpha_j]]&= [\hat H,\frac {4\ti} {\hbar} c\epsilon^{ijk}\hat S^k \hat p^i+2mc^2 \beta\alpha_j]\\
&=\frac {4\ti c} \hbar \epsilon^{ijk} [\hat H,\hat S^k \hat p^i] + 2mc^2 [\hat H,\beta\alpha_j] \\
&=\frac {4\ti c^2} \hbar \epsilon^{ijk} [\alpha_l,\hat S^k]\hat p^l \hat p^i+\frac {4\ti c} \hbar \epsilon^{ijk} mc^2 [\beta,\hat S^k]\hat p^i + 2mc^3 [\alpha_i ,\beta\alpha_j]\hat p^i +2(mc^2)^2 [\beta,\beta\alpha_j] \\
&= -4 c^2 \epsilon^{ijk} \epsilon^{klr}\alpha_r\hat p^l\hat p^i-4mc^3\beta \hat p^j +4(mc^2)^2 \alpha_j \\
&= -4c^2 (\delta_{li}\delta_{jr}-\delta_{ir}\delta_{jl})\alpha_r \hat p^l \hat p^i -4mc^3 \beta \hat p^j +4(mc^2)^2\alpha_j \\
&= -4c^2 \alpha_j \hat {\bm{p}}^2 +4c^2 \hat p^j \bm{\alpha}\cdot \hat{\bm{p}}-4c^3 \beta \hat p^j + 4(mc^2)^2 \alpha_j
\end{aligned}$$


Then we have:


$$\frac 1 c\Big(\frac \td {\td t} \Big)^2 \frac {\td} {\td t} \hat {\bm{x}}_H =\frac {-1} {\hbar^2} [\hat H,[\hat H,\alpha_j]] = \frac {4c^2} {\hbar^2} \hat {\bm{p}}_H^2 \bm{\alpha}_H-\frac {4c^2} {\hbar^2}(\bm{\alpha}_H\cdot \hat {\bm{p}}_H)\hat {\bm{p}}_H+\frac {4c^3} {\hbar^2} \beta_H \hat {\bm{p}}_H-\frac {4m^2c^4} {\hbar^2} \bm{\alpha}_H$$


Then for the state of $\bm{p}=0$ , we have:


$$\Big(\frac \td {\td t} \Big)^2 \frac {\td} {\td t} \bra{\bm{p}=0}\hat {\bm{x}}_H\ket{\bm{p}=0} = -\frac {4m^2c^4} {\hbar^2} \frac {\td} {\td t} \bra{\bm{p}=0}\hat {\bm{x}}_H\ket{\bm{p}=0} $$


{{</fold>}}

The solution of this equation is:


$$\bm{x}(t)=\bm{x}(0) +\frac {\hbar} {2mc} \Big(\langle\bm{\alpha}\rangle\sin \frac {2mc^2 t} {\hbar} +\ti \langle\bm{\alpha}\beta\rangle \big( \cos \frac {2mc^2t} {\hbar} -1\big) \Big)$$


{{<fold "Proof">}}

The generic form of the solution is that (we use $\bm{x}(t)$ to denote the $\bra{\bm{p}=0}\hat {\bm{x}}_H(t)\ket{\bm{p}=0}$ ):


$$\frac {\td \bm{x}(t)} {\td t} =\bm{A}\sin \frac {2mc^2 t} {\hbar} +\bm{B}\cos \frac {2mc^2 t} {\hbar} $$


Use that :


$$\begin{aligned}
\frac {\td} {\td t} \hat {\bm{x}}_H &= c \bm{\alpha}_H \\
\frac {\td^2} {\td t^2} \hat {\bm{x}}_H &= \frac {4c^2} {\hbar^2} (\hat{\bm{S}}_H\times \hat{\bm{p}}_H) + \frac {2mc^3 \ti} {\hbar} \beta_H \bm{\alpha}_H
\end{aligned}$$


That is the initial condition:


$$\begin{aligned}
\frac {\td \bm{x}(t)} {\td t}\Bigg|_{t=0} &= c \langle\bm{\alpha}\rangle \\
\frac {\td^2 \bm{x}(t)} {\td t^2} \Bigg|_{t=0} &= \frac {2mc^3 \ti} {\hbar} \langle \beta \bm{\alpha}\rangle
\end{aligned}$$


Where the $\langle \cdot \rangle$ is compute on the state of $\bm{p}=0$ . Then we have:


$$\begin{aligned}
\bm{A} &= \ti c \langle \beta \bm{\alpha}\rangle \\
\bm{B} &= c \langle \bm{\alpha}\rangle
\end{aligned}$$


Then the solution:


$$\bm{x}(t)=\bm{x}(0)-\frac {\ti \hbar \langle \bm{\alpha}\beta\rangle} {2mc} +\frac {\hbar} {2mc} \Big(\langle\bm{\alpha}\rangle\sin \frac {2mc^2 t} {\hbar} +\ti \langle\bm{\alpha}\beta\rangle \cos \frac {2mc^2t} {\hbar} \Big)$$


For the state of $\bm{p}=0$ , the Dirac equation is:


$$\ti\hbar \frac {\td \psi} {\td t} = \begin{bmatrix} mc^2 & 0 \\ 0 & -mc^2 \end{bmatrix}\psi$$


That is $\psi(t)=\begin{bmatrix} e^{-\ti mc^2 t/\hbar} \xi_1 \\ e^{\ti mc^2t/\hbar} \xi_2 \end{bmatrix}$. Where $\xi_{1,2}$ are arbitrary 2-component quantities. If we choose $\xi_1=(1/\sqrt{2},0)^T, \xi_2=(0,1/\sqrt{2})^T$ for example:


$$\begin{aligned}
\langle \bm{\alpha}\rangle &= (1,0,0) \\
\langle \beta\bm{\alpha}\rangle &= (0,-\ti,0) \\
\end{aligned}$$


They are not zero simultaneously.

{{</fold>}}

Where the $\langle \cdot \rangle$ is compute on the state of $\bm{p}=0$. These two expectation value can be nonzero for some states. This means that even for the state of $\bm{p}=0$ , the expectation of coordinate of a Dirac particle is still oscillating with an extremely high frequency.


# Solutions to Dirac Equation

## Positive Energy

Let the solution has the form of $\psi(t,\bm{x})=e^{\ti(\bm{p}\cdot \bm{x}-Et)/\hbar} u(\bm{p})$ where $u(\bm{p})$ is a 4-component quantity. Then the Dirac equation is:


$$\begin{bmatrix} mc^2 & c \bm{\sigma}\cdot \bm{p} \\ c \bm{\sigma} \cdot \bm{p} & -mc^2 \end{bmatrix} u(\bm{p})=Eu(\bm{p})$$


Note that $\bm{\sigma}\cdot \bm{p}$ as a $2\times 2$ matrix has eigenvalues $\pm|\bm{p}|$ , denote the corresponding eigenvectors as $\chi_{\pm}(\bm{p})$ :


$$\bm{\sigma}\cdot \bm{p}\chi_{\pm}(\bm{p})=\pm |\bm{p}|\chi_{\pm}(\bm{p})$$


If $\bm{p}=|\bm{p}|(\sin\theta\cos\phi,\sin\theta\sin\phi,\cos \theta)$ , one can choose:


$$\chi_+(\bm{p}) = \begin{bmatrix} \cos(\theta/2) \\ e^{\ti \phi}\sin (\theta/2)\end{bmatrix} \ ; \ \chi_-(\bm{p})=\begin{bmatrix} -e^{-\ti\phi}\sin(\theta/2) \\ \cos(\theta/2) \end{bmatrix}$$


Then the two solution to $u(\bm{p})$ with $E=\sqrt{c^2\bm{p}^2+m^2c^4}$ are:


$$u_+(\bm{p})=\begin{bmatrix} \sqrt{\frac {E+mc^2} {2mc^2}} \chi_+(\bm{p}) \\ \sqrt{\frac {E-mc^2} {2mc^2}} \chi_+(\bm{p})\end{bmatrix} \ ; \ u_-(\bm{p})=\begin{bmatrix} \sqrt{\frac {E+mc^2} {2mc^2}} \chi_-(\bm{p}) \\ -\sqrt{\frac {E-mc^2} {2mc^2}} \chi_-(\bm{p})\end{bmatrix}$$


## Negative Energy

Let the solution has the form of $\psi(t,\bm{x})=e^{-\ti(\bm{p}\cdot \bm{x}-Et)/\hbar} v(\bm{p})$ where $v(\bm{p})$ is a 4-component quantity. Then the Dirac equation is:


$$\begin{bmatrix} -mc^2 & c \bm{\sigma}\cdot \bm{p} \\ c \bm{\sigma} \cdot \bm{p} & mc^2 \end{bmatrix} v(\bm{p})=Ev(\bm{p})$$


Similarly, for $E=\sqrt{c^2 \bm{p}^2+m^2c^4}$:


$$v_+(\bm{p})=\begin{bmatrix} \sqrt{\frac {E-mc^2} {2mc^2}} \chi_+(\bm{p}) \\ \sqrt{\frac {E+mc^2} {2mc^2}} \chi_+(\bm{p})\end{bmatrix} \ ; \ v_-(\bm{p})=\begin{bmatrix} -\sqrt{\frac {E-mc^2} {2mc^2}} \chi_-(\bm{p}) \\ \sqrt{\frac {E+mc^2} {2mc^2}} \chi_-(\bm{p})\end{bmatrix}$$


$\psi$ here seems negative energy $-E$ solution of Dirac equation with momentum $-\bm{p}$ , actually, it should be interpreted as the `conjugate wavefunction` of a `positron` $\psi'^*$ with energy $+E$ and momentum $\bm{p}$ .

# Non-relativistic Limit

The Dirac equation of charge $q$ particle in Electromagnetic field is:


$$\ti \hbar \frac {\partial} {\partial t}\psi = \Big(c \bm{\alpha} \cdot \big(-\ti \hbar \nabla -q \bm{A}\big) +mc^2 \beta +q \Phi \Big)\psi$$


Where $\Phi$ is electrostatic potential, and $\bm{A}$ is the vector potential. Both depend on time and space.

Consider the case that $|\bm{p}|\ll mc$ . Separate the Hamiltonian into diagonal term $\hat H_0=mc^2\beta +q \Phi$ and off-diagonal term $\hat H_1=c\bm{\alpha}\cdot (-\ti\hbar\nabla-q \bm{A})$ . We try to use sequence of unitary transformation to eliminate the off-diagonal part.

Let $\psi'=e^{\ti \hat S(t,\bm{x})}\psi$ , then the transform:


$$\ti \hbar \partial_t \psi=e^{-\ti\hat S(t,\bm{x})}\ti\hbar \partial_t \psi' + \ti\hbar (\partial_t e^{-\ti \hat S(t,\bm{x})}) \psi'=\hat H\psi$$


Then we have the new equation:


$$\ti\hbar \partial_t \psi' = e^{\ti \hat S(t,\bm{x})} \hat H e^{-\ti \hat S(t,\bm{x})} \psi' -\ti\hbar e^{\ti\hat S(t,\bm{x})}\partial_t e^{-\ti \hat S(t,\bm{x})} \psi'\equiv \hat H'\psi'$$


Where $\hat H'=e^{\ti \hat S(t,\bm{x})} \hat H e^{-\ti \hat S(t,\bm{x})} -\ti\hbar e^{\ti\hat S(t,\bm{x})}(\partial_t e^{-\ti \hat S(t,\bm{x})})$

With the Hausdorff formula, noting that $\partial_t e^{-\ti \hat S(t,\bm{x})}=-\ti (\partial_t \hat S)e^{-\ti \hat S(t,\bm{x})}$ where we do not exchange the order for general discussion:


$$\hat H'=\hat H + [\ti \hat S,\hat H]+\frac 1 2 [\ti\hat S,[\ti\hat S,\hat H]]+\cdots-\hbar (\partial_t \hat S)-\hbar[\ti\hat S,\partial_t \hat S]-\hbar[\ti\hat S,[\ti\hat S,\partial_t\hat S]]-\cdots$$


Choose $\ti\hat S=\beta \hat H_1/(2mc^2)$ , so that:


$$[\ti\hat S,mc^2\beta]=-\hat H_1 \ ; \ [\ti\hat S,\hat H_1]=\frac {\beta} {mc^2}(\hat H_1)^2\ ; \ [\ti\hat S,[\ti\hat S,\hat H_1]]=-\frac 1 {m^2c^4}(\hat H_1)^3$$


{{<fold "Proof">}}


$$\begin{aligned}[]
[\ti\hat S,mc^2\beta]&=\frac {\beta} {2}[\hat H_1,\beta]\\
&=\frac {\beta} 2 c\sum_i[\alpha_i,\beta] (-\ti \hbar \partial_i-qA_i) \\
&=\frac {\beta c} 2 \sum_i \Big(\begin{bmatrix}0 & -\sigma^i \\ \sigma^i & 0 \end{bmatrix}-\begin{bmatrix}0 & \sigma^i \\ -\sigma^i & 0 \end{bmatrix} \Big) (-\ti\hbar\partial_i-qA_i) \\
&=c\sum_i \begin{bmatrix}0 & -\sigma^i \\ -\sigma^i & 0 \end{bmatrix} (-\ti\partial_i-qA_i) \\
&=-\hat H_1
\end{aligned}$$


And


$$\begin{aligned}[]
[\ti \hat S,\hat H_1] &= \frac 1 {2mc^2}[\beta , \hat H_1] \hat H_1  \\
&=\frac {\beta} {mc^2} (\hat H_1)^2 \\
[\ti \hat S,[\ti\hat S,\hat H_1]]&=\frac {\beta} {mc^2} [\ti\hat S,(\hat H_1)^2] + \frac 1 {mc^2} [\ti\hat S,\beta](\hat H_1)^2\\
&=\frac {\beta} {mc^2}\Big(\hat H_1 [\ti \hat S,\hat H_1]+[\ti\hat S,\hat H_1]\hat H_1 \Big)-\frac 1 {(mc^2)^2} (\hat H_1)^3 \\
&=\frac {\beta} {mc^2}\Big(\frac 1 {mc^2}\big(\beta \hat H_1+[\hat H_1,\beta] \big)(\hat H_1)^2+\frac {\beta} {mc^2}(\hat H_1)^3 \Big)-\frac 1 {(mc^2)^2} (\hat H_1)^3\\
&=\frac {\beta} {mc^2}\Big(\frac 1 {mc^2}\big(\beta \hat H_1-2\beta \hat H_1 \big)(\hat H_1)^2+\frac {\beta} {mc^2}(\hat H_1)^3 \Big)-\frac 1 {(mc^2)^2} (\hat H_1)^3\\
&=-\frac 1 {m^2c^4} (\hat H_1)^4
\end{aligned}$$


{{</fold>}}

Then we have:


$$\begin{aligned}
\hat H' &= mc^2 \beta +\Big(q\Phi+\frac {\beta} {2mc^2}[\hat H_1,q\Phi]-\frac 1 {(2mc^2)^2}[\hat H_1,[\hat H_1,q\Phi]]+\cdots \Big)\\
&\indent + \Big(\frac {\beta} {2mc^2}(\hat H_1)^2- \frac 1 {3m^2c^4} (\hat H_1)^3+\frac {\beta} {8m^2c^4} (\hat H_1)^3+\cdots \Big) \\
&\indent +\Big(\ti \hbar \frac {\beta} {2mc^2}\partial_t \hat H_1-\frac {\ti\hbar} {8m^2c^4}[\hat H_1,\partial_t \hat H_1]+\cdots \Big)
\end{aligned}$$


The diagonal terms(contain even number of $\hat H_1$) up to $\frac 1 {m^2}$ are:


$$\begin{aligned}
\hat H'_{\text{diag}}&=\beta\Big(mc^2 +\frac {(\hat H_1)^2} {2mc^2} \Big)+q\Phi-\frac 1 {8m^2c^4}[\hat H_1,[\hat H_1,q\Phi]]-\frac {\ti\hbar} {8m^2c^4}[\hat H_1,\partial_t \hat H_1] \\
&=\beta mc^2+\frac {\beta} {2m}\Big( (-\ti\hbar \nabla-q\bm{A})^2 - 2q\hat{\bm{S}}\cdot \bm{B} \Big) + q\Phi \\
&\indent -\frac {\hbar^2 q} {8m^2 c^3} \nabla\cdot \bm{E} -\frac {\ti\hbar q} {4m^2 c^3} \hat {\bm{S}}\cdot (\nabla \times \bm{E}) - \frac {q} {2m^2 c^3} (\hat {\bm{P}}\times \bm{E})\cdot \hat{\bm{S}}
\end{aligned}$$


<mark>In the second line, the 1st term is the Darwin term, the 2nd term is the spin-orbit coupling, and the last term vanishes for static electromagnetic field. These terms will be used in the relativistic correction for `Fine structure`</mark>

{{<fold "Proof">}}

We will compute each term:

Using $\sigma^i\sigma^j=\delta_{ij}+\ti\epsilon^{ijk}\sigma^k$ .


$$\begin{aligned}
\hat H_1^2 &= \Big(c\bm{\alpha}\cdot (-\ti\hbar\nabla -q\bm{A})\Big)^2 \\
&= c^2 \sum_{i,j}\alpha_i \alpha_j \Big(-\hbar^2\nabla^2+\ti q \hbar \partial_i A_j+q^2\bm{A}^2 \Big) \\
&= c^2 \sum_{i,j}\begin{bmatrix}\delta_{ij}+\ti\epsilon^{ijk}\sigma^k & 0 \\ 0 & \delta_{ij}+\ti\epsilon^{ijk}\sigma^k \end{bmatrix}\Big(-\hbar^2\nabla^2+\ti q \hbar \partial_i A_j+q^2\bm{A}^2 \Big) \\
&=c^2\Big(-\hbar^2\nabla^2 + q^2 \bm{A}^2 +\ti q \hbar \nabla\cdot \bm{A}- 2 q \epsilon^{ijk} (\partial_i A_j)\hat S^k \Big) \\
&=c^2\Big(-\hbar^2\nabla^2 + q^2 \bm{A}^2 +\ti q \hbar \nabla\cdot \bm{A}- 2 q \hat{\bm{S}}\cdot \bm{B} \Big) \\
&=c^2\Big((-\ti\hbar \nabla-q\bm{A})^2 - 2q\hat{\bm{S}}\cdot \bm{B} \Big)
\end{aligned}$$


Then we check the commutator:


$$\begin{aligned}[]
[\hat H_1,q\Phi]+\ti\hbar \partial_t \hat H_1&= c\bm{\alpha}\cdot [-\ti\hbar \nabla,q\Phi]+\ti\hbar\bm{\alpha}\cdot (-q)\partial_t \bm{A} \\
&=c\bm{\alpha}\cdot (-\ti\hbar q \nabla \Phi)-\ti\hbar q \bm{\alpha}\cdot \partial_t\bm{A} \\
&=-\ti\hbar qc \bm{\alpha}\cdot (\nabla \Phi + \frac 1 c \partial_t\bm{A})\\
&=\ti\hbar qc \bm{\alpha}\cdot \bm{E}
\end{aligned}$$


And then:


$$\begin{aligned}[]
& [\hat H_1,[\hat H_1,q\Phi]+\ti\hbar \partial_t \hat H_1]= [\hat H_1,\ti\hbar qc \bm{\alpha}\cdot \bm{E}] \\
=& \ti\hbar qc \sum_{i,j} [\alpha_i(-\ti\hbar\partial_i-qA_i),\alpha_j E_j] \\
=& \ti\hbar qc \sum_{i,j} \Big(\alpha_i\alpha_j[-\ti\hbar\partial_i,E_j]+[\alpha_i,\alpha_j](-\ti\hbar \partial_i - qA_i) E_j \Big)\\
=& \ti\hbar qc \sum_{i,j} \Big((\delta_{ij}+\frac {2\ti} {\hbar}\epsilon^{ijk}\hat S^k)(-\ti\hbar \partial_i E_j)+\frac {4\ti} {\hbar} \epsilon^{ijk}\hat S^k(-\ti\hbar \partial_i - qA_i) E_j \Big)\\
=&\ti\hbar qc \Big(-\ti\hbar \nabla\cdot \bm{E}+2(\nabla\times \bm{E})\cdot \hat{\bm{S}}-\frac {4\ti} {\hbar} (\hat{\bm{P}}\times \bm{E})\cdot \hat{\bm{S}} \Big)
\end{aligned}$$


{{</fold>}}

And the off-diagonal term up to $\frac 1 m$ are:


$$\hat H'_{\text{off-diag}}=\frac {\beta} {2mc^2} \Big([\hat H_1,q\Phi]+\ti\hbar \partial_t \hat H_1\Big)=\frac {\ti\hbar q\beta} {2mc} \bm{\alpha}\cdot \bm{E}$$


{{<fold "Proof">}}

We have:


$$\begin{aligned}[]
[\hat H_1,q\Phi]+\ti\hbar \partial_t \hat H_1&= c\bm{\alpha}\cdot [-\ti\hbar \nabla,q\Phi]+\ti\hbar\bm{\alpha}\cdot (-q)\partial_t \bm{A} \\
&=c\bm{\alpha}\cdot (-\ti\hbar q \nabla \Phi)-\ti\hbar q \bm{\alpha}\cdot \partial_t\bm{A} \\
&=-\ti\hbar qc \bm{\alpha}\cdot (\nabla \Phi + \frac 1 c \partial_t\bm{A})\\
&=\ti\hbar qc \bm{\alpha}\cdot \bm{E}
\end{aligned}$$


{{</fold>}}

Then if we make the second unitary transformation to eliminate the off-diagonal term of $\mathcal{O}(m^{-1})$ order:


$$\hat H''=\hat H'_{\text{diag}}+\hat H'_{\text{off-diag}}+[\ti\hat S',\hat H'_{\text{diag}}]+[\ti\hat S',\hat H'_{\text{off-diag}}]-\hbar \partial_t \hat S' +\mathcal{O}(\hat S'^2)$$


In $\hat H_{\text{diag}}$ , we can use the term $\beta mc^2$ , that is:


$$[\ti \hat S',\beta mc^2]=-\frac {\ti\hbar q \beta} {2mc} \bm{\alpha}\cdot \bm{E}$$


For that $[\alpha_i,\beta]=-2\beta \alpha_i$ , we can choose the $\ti\hat S'$ as:


$$\ti \hat S' = \frac {\ti \hbar q \beta} {4m^2c^3} \bm{\alpha}\cdot \bm{E} $$


Then the lowest order of off-diagonal term donated by it is $\mathcal{O}(m^{-2})$ , which comes from the term $-\hbar \partial_t \hat S'$ (And it vanishes for static field). And the lowest order of diagonal term is $\mathcal{O}(m^{-3})$ .

But up to the term of $\mathcal{O}(m^{-1})$ , we have the approximated Hamiltonian  of non-relativistic limit as:


$$\hat H_{\text{nr}}=\beta mc^2 +\frac {\beta} {2m}\Big((-\ti\hbar \nabla-q\bm{A})^2 -2q \hat {\bm{S}}\cdot \bm{B} \Big)+q\Phi$$


It is block-diagonalized. In these two $2\times 2$ subspace we have two Hamiltonian:


$$\begin{aligned}
\hat H_{\text{nr},+}&=mc^2 + \frac {(-\ti\hbar \nabla-q\bm{A})^2} {2m} -\frac q m \hat {\bm{S}}_{\text{nr}} \cdot \bm{B}+q\Phi \\
-\hat H_{\text{nr},-}&=mc^2 +\frac {(-\ti\hbar \nabla-q\bm{A})^2} {2m}-\frac q m \hat {\bm{S}}_{\text{nr}} \cdot \bm{B}-q\Phi
\end{aligned}$$


The $\hat H_{\text{nr},+}$ is the Hamiltonian for electron, it also shows that electron should have the g-factor as $g=2$ .

The $-\hat H_{\text{nr},-}$ , in Dirac Hole theory, is the Hamiltonian of the hole in Dirac sea. That is indeed the Hamiltonian of positron. One can directly find that a positron has the electricity charge as $+e=-q$, and a compose spin against the electron.

The negative sign comes from that the negative-energy solution is conjugation of positron's wavefunction. One can find that for one-component wavefunction we have that $\ti \partial_t \psi^* = -\hat H \psi^*$
