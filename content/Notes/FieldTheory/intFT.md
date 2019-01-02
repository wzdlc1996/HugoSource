---
title: "Field Theory with Interaction"
date: 2018-12-30T15:42:02+08:00
draft: true
tags: ["classical-theory"]
series: ["Field-Theory"]
categories: ["Physics"]
toc: true
summary: "We will introduce the basic Field Theory with interaction, which is the main propose of Field Theory actually. We will use the perturbation theory here. And what can we talk is only perturbation-property of Field theory. Our goal is to show the constraint of the form of Lagrangian in Interacting Field Theory. Then we will show the perturbation expansion of the time-ordered Green's function and the corresponding method- Feynman Diagram and Feynman Rules. At last we will show the connection between time-ordered Green's function and S-matrix in scattering theory, which is actually the only thing we can measure in experiments(crossing section)."
---

# Basic Introduce

## Perturbation Theory

_[Definition]_ : In quantum field theory, the `perturbation theory` is a `power series` respect to the `coupling parameter` (parameter of interaction term) of the theory. Namely, for a quantity \(A(\lambda)\) with \(\lambda\) is the coupling parameter, when \(\lambda=0\) it is the free field theory. Then the perturbation theory give us:

$$A(\lambda)\sim A(0)\big(1+c_1\lambda+c_2\lambda^2+c_3\lambda^3+\cdots\big)$$

Where \(A(0)\) is the quantity in Free Field Theory. And coefficient \(c_n\) can be obtained by perturbation calculation(like `Feynman Diagram`)

One should note that this expansion usually is `NOT` convergent. But it is treated as an `asymptotic expansion` respect to \(\lambda\) , namely:

$$\lim_{\lambda\rightarrow 0} \frac 1 {\lambda^n} \Big(A(\lambda)-A(0)\sum_{i=0}^n c_i \lambda^i \Big) = 0$$

For first some orders it will improve the calculation, though it is divergent actually.

## Scale, Cutoff and Lagrangian

A field system has `(uncountable) infinite degree of freedom` , which leads to a large class of divergence in Quantum Field Theory. To overcome this, one needs a `cutoff` in the theory. The cutoff demand that there are only finite energy-momentum modes in any integral, equivalently it leads to a discrete real space.

The cutoff might come from the fundamental property of the nature: the nature is separated into different parts according to the `scale` . And for each part we have a `effective theory` to describe it. One can think the Quantum Field Theory just work for a finite range of energy, with the upper bound \(\Lambda\) , which is the `cutoff`. The cutoff make all quantities convergent, or `the Interacting Field Theory is regularized`.

With the `cutoff`, `dimensional-analysis`, and `symmetry analysis`, one can determinate the form of Lagrangian for the Interacting Field Theory. Especially at the energy scale which is far from the cutoff.

## \(\lambda\phi^4\) Theory

For free Klein-Gordon Field, the Lagrangian is constructed by the quantities with dimensional \(M^{4}\) , and field has the dimensional of \(M^{2}\). (\(H\sim X^{3}M^2(\phi)^2\sim M\), with \(k\) has dimensional \(X^{-1}=M\) , we have \(\phi\sim M\) ) If we need the system has the symmetry of \(\phi\rightarrow -\phi\) , Then we can write the Lagrangian as:

$$\mathcal{L}_{\text{interacting}}=\frac 1 2 \partial^\mu \phi \partial_\mu \phi - \frac {m^2} 2 \phi^2 - \lambda \phi^4- \frac {\lambda'} {\Lambda^2} \phi^6-\frac {\lambda''} {\Lambda^4} \phi^8-\cdots$$

Where \(\lambda,\lambda',\cdots\) are dimensional-less. At the energy scale far from \(\Lambda\) , one can find only \(\phi^4\) term works. That is why it called as \(\lambda\phi^4\) theory, or `Scalar Field self-interaction theory`:

$$\mathcal{L}=\frac 1 2 \partial^\mu \phi \partial_\mu \phi - \frac {m^2} 2 \phi^2 -  \frac \lambda {4!} \phi^4$$

Those omitted operators with high dimensional usually are called as `irrelevant operators`. Or `nonrenormalizable operators` . A theory with no nonrenormalizable operators are called `renormalizable`.

## Yukawa Theory

For Dirac spinor Field, similarly Lagrangian has the dimensional \(M^{4}\) , Then \(M^4\sim M (\psi)^2\) , we know Dirac Field has the dimensional \(M^{3/2}\) , \(\psi,\bar \psi\) has the same dimensional. So the lowest order of interaction between scalar Field and Dirac Field should have the form of \(\bar{\psi}\phi\psi\) , then we can write down the Lagrangian:

$$\mathcal{L}=\frac 1 2 \partial^\mu \phi \partial_\mu \phi - \frac {m_{\text{scalar}}^2} 2 \phi^2 - \frac \lambda {4!}\phi^4 +\bar{\psi}(\ti \gamma^\mu \partial_\mu -m_{\text{Dirac}}-g\phi)\psi$$

Where \(g\) is the coupling parameter of scalar-Dirac field interaction.

This theory is also known as `Yukawa Theory`.

## Quantum ElectroDynamics

The interaction between Dirac Spinor Field and Maxwell Field is described by `Quantum Electrodynamics (QED)` , it has the form:

$$\mathcal{L}=\bar{\psi}(\ti \gamma^\mu \partial_\mu - e \gamma^\mu A_\mu-m)\psi - \frac 1 4 F_{\mu\nu}F^{\mu\nu}$$

Here we do not use the form of Maxwell Field's Lagrangian of `Gupta-Bleuler Quantization`.

It can also be obtained by `dimensional-analysis`, if one notes \(A_\mu\) has the dimensional of \(M^1\) like Scalar field.

The interaction term of QED, with \(j^\mu=\bar{\psi}\gamma^\mu\psi\) is the `conserved current` of \(\text{U}(1)\) symmetry of Dirac Field, one can write it as:

$$\mathcal{L}_{\text{int}}=-e A_\mu j^\mu$$

One can check QED Lagrangian is invariant under `gauge transform`:

$$\psi(x)\rightarrow e^{\ti \theta(x)}\psi(x) \ ; \ A_\mu(x)\rightarrow A_\mu(x)-\frac 1 e \partial_\mu \theta(x)$$

If we demand the `Gauge invariance` , there will not be any self-interaction term of Maxwell Field like \(A^4, A_\mu A^\mu \partial_\nu A^\nu , \cdots\) .

{{%fold "Proof"%}}

Under Gauge transform:

$$\begin{aligned}
\Delta \mathcal{L} &= -\bar{\psi}\gamma^\mu \partial_\mu \theta \psi +\bar\psi\gamma^\mu\partial_\mu \theta \psi + \Delta \mathcal{L}_{\text{Maxwell}}\\
&=\Delta \mathcal{L}_{\text{Maxwell}}
\end{aligned}$$

While for \(\mathcal{L}_{\text{Maxwell}}=\frac 1 4 F_{\mu\nu}F^{\mu\nu}\) , we have:

$$\begin{aligned}
F'_{\mu\nu}&= \partial_{\mu} A'_\nu-\partial_\nu A'_\mu \\
&= F_{\mu\nu}-\frac 1 e \partial_\mu\partial_{\nu}\theta + \frac 1 e \partial_{\nu}\partial_\mu \theta \\
&= F_{\mu\nu}
\end{aligned}$$

That is to say \(\Delta \mathcal{L}_{\text{Maxwell}}=0\) .

q.e.d.

For self-interaction of Maxwell Field, one can check they will not have gauge invariance.

{{%/fold%}}

One can also write the so-called `Scalar QED` Lagrangian to describe the interaction between `charged Klein-Gordon Field` and Maxwell Field:

$$\mathcal{L}=\frac 1 2(\partial_\mu - e A_\mu)\phi^*(\partial^\mu-eA^\mu)\phi-\frac {m^2} 2|\phi|^2-\frac 1 4 F_{\mu\nu}F^{\mu\nu}$$


# Perturbation Expansion

## Interaction Picture

<mark>If interaction term contain no time-differential of Field, then canonical momentum is the same as Free field case</mark> , that is to say, in Schrodinger Picture, field-operators and canonical momentum operators of interacting Field system have the same form of those which in non-interacting system.

In quantum mechanics, we know the relationship between `interaction picture` and `Schrodinger picture`:

With \(\hat H = \hat H_0+\hat H_{\text{int}}\) , we have:

$$\begin{aligned}
\ket{\psi_I(t)} &= e^{\ti \hat H_0 t} \ket{\psi_S(t)}\\
\hat O_I(t) &= e^{\ti \hat H_0 t} \hat O_S e^{-\ti \hat H_0 t}
\end{aligned}$$

So that \(\bra{\alpha_I(t)}\hat O_I(t)\ket{\beta_I(t)}=\bra{\alpha_S(t)}\hat O_S\ket{\beta_S(t)}\) . One can find that <mark>the operator in Interaction Picture is the same as the operator in Heisenberg Picture for Free system.</mark>

Then we have the equation of motion in Interaction Picture:

$$\ti \frac {\td} {\td t} \ket{\psi_I(t)} = \hat H_{\text{int},I}(t)\ket{\psi_I(t)}$$

Or the time-evolution operator, which is defined by \(\ket{\psi_I(t)}=\hat U_I(t,t_0)\ket{\psi_I(t_0)}\) .

$$\ti\frac {\partial} {\partial t}\hat U_I(t,t_0)=\hat H_{\text{int},I}(t)\hat U_I(t,t_0)$$

One can write the `Dyson Series` of time-evolution operator:

$$\hat U_I(t,t_0)=1+(-\ti)\int_{t_0}^t \td t_1 \hat H_{\text{int},I}(t)+(-\ti)^2\int_{t_0}^t \td t_1 \int_{t_0}^{t_1}\td t_2\hat H_{\text{int},I}(t_1)\hat H_{\text{int},I}(t_2)+\cdots$$

Or with the time-order product, one can write it as:

$$\begin{aligned}
\hat U_I(t,t_0)&=\mathcal{T}\exp \Big(-\ti \int_{t_0}^t \td \tau \hat H_{\text{int},I}(\tau)\Big) \\
&\equiv 1+(-\ti) \int_{t_0}^t \td \tau \hat H_{\text{int},I}(\tau) + \frac {(-\ti)^2} {2!} \int_{t_0}^t \td \tau_1\int_{t_0}^t \td \tau_2 \mathcal{T}\big\{\hat H_{\text{int},I}(\tau_1)\hat H_{\text{int},I}(\tau_2) \big\} \\
&\indent +\frac {(-\ti)^3} {3!} \int_{t_0}^t \td \tau_1\int_{t_0}^t \td \tau_2\int_{t_0}^t \td \tau_3 \  \mathcal{T}\big\{\hat H_{\text{int},I}(\tau_1)\hat H_{\text{int},I}(\tau_2)\hat H_{\text{int},I}(\tau_3) \big\}+\cdots
\end{aligned}$$

Where we treat \(\hat H_{\text{int},I}(\tau)\) as bosonic, that is to say:

$$\mathcal{T}\big\{\hat H_{\text{int},I}(t_1)\cdots \hat H_{\text{int},I}(t_n)\big\}=\sum_{\sigma \in S_n}\Theta(t_{\sigma(1)}-t_{\sigma(2)})\Theta(t_{\sigma(2)}-t_{\sigma(3)})\cdots \Theta(t_{\sigma(n-1)}-t_{\sigma(n)})\hat H_{\text{int},I}(t_{\sigma(1)})\cdots \hat H_{\text{int},I}(t_{\sigma(n)})$$

{{%fold "Proof"%}}

One can rewrite the differential equation:

$$\ti\frac {\partial} {\partial t}\hat U_I(t,t_0)=\hat H_{\text{int},I}(t)\hat U_I(t,t_0)$$

as integral equation, with \(\hat U_I(t_0,t_0)=1\):

$$\hat U_I(t,t_0)=1+(-\ti)\int_{t_0}^t \td t_1 \ \hat H_{\text{int},I}(t_1) \hat U_I(t_1,t_0)$$

Then use this equation recurrently:

$$\hat U_I(t,t_0)=1+(-\ti)\int_{t_0}^t \td t_1 \ \hat H_{\text{int},I}(t_1)+(-\ti)^2\int_{t_0}^t \td t_1 \int_{t_0}^{t_1}\td t_2 \hat H_{\text{int},I}(t_1)\hat H_{\text{int},I}(t_2)+\cdots$$

The third term at right-hand-side above, can be rewritten by time-ordered product, noting that the integral is calculated at the range of \(t_1\gt t_2\) :

$$\begin{aligned}
&\int_{t_0}^t \td t_1 \int_{t_0}^{t_1}\td t_2 \hat H_{\text{int},I}(t_1)\hat H_{\text{int},I}(t_2)\\
=& \frac 1 {2!} \Big(\int_{t_0}^t \td t_1 \int_{t_0}^t \td t_2 \ \Theta(t_1-t_2)\hat H_{\text{int},I}(t_1)\hat H_{\text{int},I}(t_2)+\Theta(t_2-t_1)\hat H_{\text{int},I}(t_2)\hat H_{\text{int},I}(t_1)\Big) \\
=&\frac 1 {2!} \int_{t_0}^t \td t_1 \int_{t_0}^t \td t_2 \mathcal{T}(\hat H_{\text{int},I}(t_1)\hat H_{\text{int},I}(t_2))
\end{aligned}$$

Where the factor \((2!)^{-1}\) comes from the time-ordered product of \(n\) operators has \(n!\) terms.

Then for high order terms, the relation is the same. Then we have:

$$\hat U_I(t,t_0)=\mathcal{T}\exp \Big(-\ti \int_{t_0}^t \td \tau \hat H_{\text{int},I}(\tau)\Big)$$

q.e.d.

{{%/fold%}}

With the time-evolution operator, we can write the operators in Heisenberg Picture for interacting system:

$$\hat O_H(t)=\hat U_I(t,0)^\dagger \hat O_I(t)\hat U_I(t,0)$$

{{%fold "Proof"%}}

The time-evolution operator for interaction picture we defined above is:

$$\hat U_I(t,t_0)=\hat U_I(t,t_0)=e^{\ti\hat H_0(t-t_0)}\hat U_S(t,t_0)e^{-\ti\hat H_0t_0}$$

For:

$$e^{\ti \hat H_0t}\ket{\psi_S(t)}=\ket{\psi_I(t)}=\hat U_I(t,t_0)\ket{\psi_I(t_0)}=\hat U_I(t,t_0)e^{\ti \hat H_0 t_0}\ket{\psi_S(t_0)}$$

That is:

$$\hat U_S(t,t_0)=e^{-\ti\hat H_0t}\hat U_I(t,t_0)e^{\ti\hat H_0t_0}$$

Then:

$$\hat O_H(t)=\hat U_S(t,0)^\dagger \hat O_S \hat U_S(t,0)=\hat U_I(t,0)^\dagger e^{\ti \hat H_0 t} \hat O_Se^{-\ti \hat H_0t}\hat U_I(t,0)=\hat U_I(t,0)^\dagger \hat O_I(t)\hat U_I(t,0)$$

{{%/fold%}}

## Interacting Vacuum

_[Theorem(Gell-Mann-Low)]_ : In the interacting field system, the vacuum is generally not the vacuum state of direct product of free fields. If denote the vacuum without interaction as \(\ket{0}\) , and vacuum with interaction is \(\ket{\Omega}\) . The interacting Hamiltonian is \(\hat H=\hat H_0+g \hat H_{\text{int}}\) , with \(g\) is the `coupling parameter` .

Define the time-dependent Hamiltonian \(\hat H_\epsilon = \hat H_0+e^{-\epsilon |t|}g\hat H_{\text{int}}\) , which `effectively interpolates` between \(\hat H\) and \(\hat H_0\) in the limit \(\epsilon\rightarrow 0^+ , t\rightarrow \infty\) . Let \(\hat U_{\epsilon,I}(t,t_0)\) be the time-evolution operator of this Hamiltonian in the `Interaction picture`, and \(\hat H_0\ket{\Psi_0}=E_0\ket{\Psi_0}\). The `Gell-Man & Low Theorem` asserts that if the limit as \(\epsilon\rightarrow 0^+\) of:

$$\ket{\Psi_\epsilon^{(\pm)}} = \frac {\hat U_{\epsilon,I}(0,\pm \infty)\ket{\Psi_0}} {\bra{\Psi_0}\hat U_{\epsilon,I}(0,\pm\infty)\ket{\Psi_0}}$$

exists, then \(\ket{\Psi_{\epsilon}^{(\pm)}}\) are eigenstates of \(\hat H\) .

Note that the theorem does not guarantee that if \(\ket{\Psi_0}=\ket{0}\) is the vacuum of \(\hat H_0\) the evolved state will be the ground state. But in perturbation theory, we believe it is indeed the ground state.

{{%fold "Proof"%}}

In Schrodinger Picture, we have the equation for time-evolution operator:

$$\begin{aligned}
\ti \partial_{t_1}\hat U_{\epsilon,S}(t_1,t_2)&=\hat H_\epsilon(t_1)\hat U_{\epsilon,S}(t_1,t_2)\\
\ti \partial_{t_2}\hat U_{\epsilon,S}(t_1,t_2)&=-\hat U_{\epsilon,S}(t_1,t_2)\hat H_\epsilon(t_2)
\end{aligned}$$

Or the integral equation, with \(g=e^{\epsilon\theta}\):

$$\hat U_{\epsilon,S}(t_1,t_2)=1+(-\ti) \int_{t_2}^{t_1} \td t' (\hat H_0+e^{\epsilon(\theta-|t'|)}\hat H_{\text{int}})\hat U_{\epsilon,S}(t',t_2)$$

For the case \(0\geq t_1\geq t_2\) , with changing the variables \(\tau=t'+\theta\):

$$\hat U_{\epsilon,S}(t_1,t_2)=1+(-\ti) \int_{t_2+\theta}^{t_1+\theta} \td \tau (\hat H_0+e^{\epsilon\tau}\hat H_{\text{int}})\hat U_{\epsilon,S}(\tau-\theta,t_2)$$

For the propagator of \(\hat H^{(\pm)}(t)=\hat H_0+e^{\pm\epsilon t}\hat H_{\text{int}}\) is \(\hat U^{(\pm)}(t,t')\), which satisfies the equation:

$$\hat U^{(\pm)}(t_1+\theta,t_2+\theta)=1+(-\ti)\int_{t_2+\theta}^{t_1+\theta} \td \tau (\hat H_0+e^{\pm\epsilon\tau}\hat H_{\text{int}})\hat U^{(\pm)}(\tau,t_2+\theta)$$

With the same initial condition:

$$\hat U_{\epsilon,S}(t_1=t_2,t_2)=1=\hat U^{(+)}(t_1+\theta=t_2+\theta,t_2+\theta)$$

Then we have: \(\hat U_{\epsilon,S}(t_1,t_2)=\hat U^{(+)}(t_1+\theta,t_2+\theta)\) . That is to say:

$$\partial_{\theta}\hat U_{\epsilon,S}(t_1,t_2)=\partial_{t_1}\hat U_{\epsilon,S}(t_1,t_2)+\partial_{t_2}\hat U_{\epsilon,S}(t_1,t_2)$$

Because \(\theta\) enters in the operator \(\hat U^{(+)}(t_1+\theta,t_2+\theta)\) only in its temporal variables.

If \(t_1\geq t_2\geq 0\) , one has \(\hat U_{\epsilon,S}(t_1,t_2)=\hat U^{(-)}(t_1-\theta,t_2-\theta)\) , which induces:

$$\partial_{\theta}\hat U_{\epsilon,S}(t_1,t_2)=-\partial_{t_1}\hat U_{\epsilon,S}(t_1,t_2)-\partial_{t_2}\hat U_{\epsilon,S}(t_1,t_2)$$

An identity for \(t_1\geq 0 \geq t_2\) can be obtained by writing \(\hat U_{\epsilon,S}(t_1,t_2)=\hat U_{\epsilon,S}(t_1,0)\hat U_{\epsilon,S}(0,t_2)\) .

Then with \(\partial_{\theta}=\epsilon g\partial_g\) , one can write it as:

$$\ti \epsilon g\partial_g \hat U_{\epsilon,S}(t_1,t_2)=\begin{cases}
\hat H_{\epsilon}(t_1)\hat U_{\epsilon,S}(t_1,t_2)-\hat U_{\epsilon,S}(t_1,t_2)\hat H_{\epsilon}(t_2) & 0\geq t_1\geq t_2 \\
-\hat H_{\epsilon}(t_1)\hat U_{\epsilon,S}(t_1,t_2)+\hat U_{\epsilon,S}(t_1,t_2)\hat H_{\epsilon}(t_2) &  t_1\geq t_2\geq 0
\end{cases}$$

Or in the Interaction Picture:

$$\ti \epsilon g\partial_g \hat U_{\epsilon,I}(t_1,t_2)=\begin{cases}
\hat H_{\epsilon,I}(t_1)\hat U_{\epsilon,I}(t_1,t_2)-\hat U_{\epsilon,I}(t_1,t_2)\hat H_{\epsilon,I}(t_2) & 0\geq t_1\geq t_2 \\
-\hat H_{\epsilon,I}(t_1)\hat U_{\epsilon,I}(t_1,t_2)+\hat U_{\epsilon,I}(t_1,t_2)\hat H_{\epsilon,I}(t_2) &  t_1\geq t_2\geq 0
\end{cases}$$

Where \(\hat H_{\epsilon,I}(t)=e^{\ti \hat H_0 t} \hat H_{\epsilon}(t) e^{-\ti \hat H_0 t}\) . Apply it with \(t_2=-\infty,t_1=0\) or \(t_1=+\infty,t_2=0\) on an eigenstate \(\ket{\Psi_0}\) of \(\hat H_0\) , note that \(\hat H_{\epsilon,I}(\pm\infty)=\hat H_0, \hat H_{\epsilon,I}(0)=\hat H_{\epsilon}(0)=\hat H\) , one has:

$$\begin{aligned}
\ti\epsilon g \partial_g \hat U_{\epsilon,I}(0,-\infty)\ket{\Psi_0} &= \hat H \hat U_{\epsilon,I}(0,-\infty)\ket{\Psi_0}-E_0\hat U_{\epsilon,I}(0,-\infty)\ket{\Psi_0} \\
-\ti\epsilon g \bra{\Psi_0} \partial_g \hat U_{\epsilon,I}(+\infty,0) &= E_0 \bra{\Psi_0}\hat U_{\epsilon,I}(+\infty,0)-\bra{\Psi_0}\hat U_{\epsilon,I}(+\infty,0)\hat H
\end{aligned}$$

Or with \(\hat U_{\epsilon,I}(+\infty,0)^\dagger = \hat U_{\epsilon,I}(0,+\infty)\) , we can write them as:

$$\Big(\hat H-E_0\pm \ti \epsilon g \partial_g\Big)\hat U_{\epsilon,I}(0,\pm\infty)\ket{\Psi_0}=0$$

With the definition of \(\ket{\Psi_\epsilon^{(\pm)}}\), one can write down:

$$\begin{aligned}
\big(\hat H-E_0\big)\ket{\Psi_\epsilon^{(\pm)}}&=\frac {\mp \ti\epsilon g\partial_g \hat U_{\epsilon,I}(0,\pm \infty)\ket{\Psi_0}} {\bra{\Psi_0}\hat U_{\epsilon,I}(0,\pm\infty)\ket{\Psi_0}}=\mp\ti\epsilon g\partial_g \ket{\Psi_\epsilon^{(\pm)}}\\
&\indent -\Big( \pm\ti\epsilon g\frac {\hat U_{\epsilon,I}(0,\pm\infty)\ket{\Psi_0}} {(\bra{\Psi_0}\hat U_{\epsilon,I}(0,\pm\infty)\ket{\Psi_0})^2}\bra{\Psi_0}\partial_g \hat U_{\epsilon,I}(0,\pm\infty)\ket{\Psi_0}\Big) \\
&= \mp\ti\epsilon g\partial_g \ket{\Psi_\epsilon^{(\pm)}}-\frac {\hat U_{\epsilon,I}(0,\pm\infty)\ket{\Psi_0}} {(\bra{\Psi_0}\hat U_{\epsilon,I}(0,\pm\infty)\ket{\Psi_0})^2}\bra{\Psi_0}(E_0-\hat H)\hat U_{\epsilon,I}(0,\pm\infty)\ket{\Psi_0} \\
&=\mp \ti \epsilon g \partial_g \ket{\Psi_\epsilon^{(\pm)}}-\ket{\Psi_\epsilon^{(\pm)}}\bra{\Psi_0}(E_0-\hat H)\ket{\Psi_\epsilon^{(\pm)}}
\end{aligned}$$

Or, with \(E^{(\pm)}=E_0-\bra{\Psi_0}(E_0-\hat H)\ket{\Psi_\epsilon^{(\pm)}}\) , we have:

$$\big(\hat H-E^{(\pm)}\big)\ket{\Psi_\epsilon^{(\pm)}}=\mp\ti\epsilon g\partial_g \ket{\Psi_\epsilon^{(\pm)}}$$

Do the limit with \(\epsilon\rightarrow 0^+\) , with the assumption, \(g\partial_g\ket{\Psi_\epsilon^{(\pm)}}\) will be finite, but with the factor \(\epsilon\) it will vanish. That is to say, at the limit:

$$\hat H\ket{\Psi^{(\pm)}}=E^{(\pm)}\ket{\Psi^{(\pm)}}$$

It is the eigenstate of interacting system. q.e.d.

{{%/fold%}}

With the Gell-Mann & Low Theorem, one can express the vacuum of interacting system by the vacuum of free system:

$$\ket{\Omega}=\lim_{\epsilon\rightarrow 0^+} \frac {\hat U_{\epsilon,I}(0,\pm\infty)\ket{0}} {\bra{0}\hat U_{\epsilon,I}(0,\pm\infty)\ket{0}}$$
