---
title: "Time Reversal in Physics"
date: "2021-02-24T19:41:00+08:00"
lastmod: "2021-02-24T19:41:00+08:00"
draft: true
tags: ["quantum","symmetry"]
categories: ["Reviews"]
toc: true
summary: "Time reversal symmetry is one of the fundamental requirement of most physical theories. However, it is also one of the most strange concepts in the physics, since there is no one can make an experiment to implement the time reversal procedure. In this note, we will discuss how time reversal is introduced in physics and what we actually mean by mentioning it. The note covers the time reversal in classical mechanics and its representation in quantum theory. Some essential mathematical knowledge is required but can be found in Notes/qm."
---

# Time Reversal in Physics

## Introduction

In the historical view, the time reversal is firstly presented in the regime of classical motion of massive objects. A slightly modern model (but tricky) to understand it can be a rewind video. Imagine a ball falling freely and we record its motion, the rewind version of it will not make you feel wired. You may think that there is someone who throw it up from a lower height. **Time reversal** means such the transformation, we do not have a clear definition yet, which can map a motion to its rewind version. 

Before further digging in this concept, let us do some critics to the understanding above. 

1.  To rewind the motion one needs the motion last `finite` temporal interval. 

    It is usually prefered by theoretists that a concept or theory should be defined `locally`. For example, Newton's law of motion can help us get to know the future motion as long as we know the forces and instant state (position and momentum). This understanding based on rewind limits our discussion in a duration of motion, i.e., non-local. This property makes it hard to use. 

2.  Time reversal is `more` than the rewind of `re-order the stages during motion`. 

    The word "stage during motion" is ambiguous here. In the sense of completely description of the configuration, each stage should be a group of real numbers for the positions of objects. Rewind just returns the time series of such stages in the reversed order. But once we notice that we should use position and momentum together in the dynamics, such re-ordering is different from the time reversal. 
    Moreover, in the modern physics, it is necessary to handle the motion of many new concepts like spin. Generally, they may have no correspondance like that velocity is actually the time direvative of position thus its sign should change.

## General Discussion for Time Reversal

The **symmetry** in physics, which can be used to describe a theory or a system, usually means it is invariant under a group of specific operations. Just like many other symmetries like spatial translation and permutation between identical particles, time reversal defines an operation on the theory, which is obviously dependent of the contents and mathematical form of the theory itself. This fact makes it difficult to find a general frame work for time reversal without the detail of physical theory. In this section, we will show a framework and the language for how to define a operation for a theory and what it means by saying the symmetry of a system. They would be based on some essential requirements of a physical theory. But note it could be too general to be useful. In the following sections, the detailed definition of time reversal would be given for commonly accepted theories like classical mechanics, quantum mechanics and field theory.

In general, a physical theory covers the "complete" description of the physical system. It (here we call it state noted as $s$) could be a point on a symplectic manifold (classical mechanics) or a complex vector in a Hilbert space (quantum theory). A dynamical equation (or equation of motion(EOM)) is usually required. EOM is usually local, i.e., the derivative with respect to time of $s(t)$ is the function of current state. Mathematically, we assume EOM has the form of

$$\frac {\td} {\td t} s(t) = D(s(t)).$$

Time reversal should map $t$ to $T(t)$ which decreases over time. But besides reversing the time order, we need time reversal hold the duration between any two given moments. That means the time reversal acting on time should be $T(t) = t_0-t$. The center of reversal $t_0$ is arbitrary. However, it is widely admitted that physics should have time translation invariance, at least those theories for small scale of spacetime. Thus we let $t_0=0$. This is also why we assume $D(\cdot)$ is independent of time.

It is impossible to specify how time reversal acts on state $s(t)$. The time reversal on the state at time $t$ is denoted as $s(t)\rightarrow s'(t') = T(s(-t))$ in which $t' = T(t) = -t$. Thus, two sides of equation of motion under time reversal reads

$$\begin{aligned}
\frac {\td} {\td t} s(t) &\rightarrow \frac {\td} {\td t'} s'(t') = -\frac {\td} {\td t} T(s(-t)) \\
D(s(t)) &\rightarrow D'(s'(t')) = D'(T(s(-t)))
\end{aligned}.$$

For the same reason of time reversal on state, $D'$ can not determined yet. However, in many cases, $D$ describes how to find the flow in the tangent space of state space. This external rule should be left invariant under time reversal. For example, in classical mechanics, $D$ is related to the gradient of Hamiltonian with a symplectic matrix. The matrix is invariant while the Hamiltonian and its derivative is not. Another example is the Quantum mechanics, $D(s)$ is $\hat H \ket{\psi}$, in which $\hat H$ will change while such the linear form does not. 

The theory has time reversal symmetry means these two terms under time reversal are still equal such that the form of EOM holds. In a word, the theory with one symmetry means the form of its equation of motion is invariant under the corresponding operation.

There are two ambiguous concepts in the definition of symmetry. The first one how do we clarify the operation on states. One can always construct a transformation of $T$ such that the form of EOM holds. In this sense, any theory can possess time reversal symmetry. But one need to notice that any physical knowledge or concept should be abstracted from the real world. It is impossible to construct a theory from nothing. Time reversal is one of the fundamental concept in all physical theories but it is historically inherited and generalized from the classical mechanics, which is based on our straightforward understanding of the nature, by the position and its time derivative. Thus we have the configuration is invariant under time reversal at the born of further physical theories like quantum mechanics. One may argue that we can directly point out that the Hamiltonian of $\sum_i \hat a_i \hat a_{i+1}+\text{c.c.}$ has the translation symmetry if it sums over $i$ is evaluated in a periodic boundary condition. But in this case, he should firstly assume that the operator $\hat a_i$ is invariant under the translation. This property comes from our interpretation of the operator and such interpretation is also based on the essential part in physics built historically.

Another one is the symmetry for a system, which is also widely used concept in physics. One may find that in the statement about symmetry above, we only used the form of equation of motion. Besides this, there are also some contents about how to map a real system or a model to its mathematical dynamical equation is necessary in a theory. This part are usually called paradigm. So we can generalize the symmetry of a theory to the symmetry of an equation, or the symmetry of the system who has equipped with such equation. They are actually the same .

## Time Reversal in Classical Mechanics

Now let us begin with the most early systematic theory of nature. Time reversal was firstly noticed by those pioneers in classical mechanics, and their thoughts still make heavy influence on scholars today. In this part, we discuss the time reversal in Newton's laws of motion and Canonical formalism. Such arrangement would make it more clear to readers about the birth of symmetric view and its development in modern physics. 

### Time reversal in Newton's Law

The core content related to time evolution in Newton's Laws of motion is his second law. The acceleration is proportional to the force acting on the massive point. The equation of motion reads

$$m \frac {\td^2} {\td t^2} \bm{r} = \bm{F}.$$

It is an ordinary differential equation of time dependent configuration $\bm{r}(t)$ of second order. To fit our form in general discussion we need introduce the velocity as an independent variable into the equation as

$$\frac {\td } {\td t}\begin{bmatrix}\bm{r} \\ \bm{v} \end{bmatrix} = \begin{bmatrix}\bm{v} \\ \bm{F}/m \end{bmatrix}.$$

We cannot discuss whether Newton's theory is time reversal symmetric or not until the detailed form of $\bm{F}$ is given. As an example, when $\bm{F}=\bm{0}$, and assuming $\bm{r}$ and $\bm{F}=\bm{0}$ is invariant under time reversal, we have the state transforms as $(\bm{r}, \bm{v})\rightarrow (\bm{r}, -\bm{v})$. Following the discussion above, we have both sides of EOM as

$$\begin{aligned}
\frac {\td } {\td t} (\bm{r},\bm{v})^T &\rightarrow \frac {\td } {\td (-t)} (\bm{r},-\bm{v})^T = (-\frac {\td \bm{r}}{\td t} , \frac {\td\bm{v}} {\td t}) \\
(\bm{v}, \bm{0})^T & \rightarrow (-\bm{v}, \bm{0})^T
\end{aligned}$$

These two sides are equal. Thus we have Newton's Law is time reversal symmetric when force vanishes. And the equivalent statement reads the free system has time reversal symmetry. Noting the assumptions we made for such assertion: coordinate is invariant under time reversal, the fact that force is zero is invariant under time reversal.

A more general case is electromagnetic field present, with scalar potential $\phi(\bm{r})$ and vector potential $\bm{A}(\bm{r})$ (notes they are independent of time), the equation of motion reads

$$m \frac {\td^2} {\td t^2} \bm{r} = e\Big(-\nabla \phi +\bm{v} \times (\nabla \times \bm{A}) \Big).$$

Under the time reversal, each sides become (omitting constants $m$ and $e$)

$$\begin{aligned}
\frac {\td } {\td t} (\bm{r},\bm{v})^T & \rightarrow  (-\frac {\td \bm{r}}{\td t} , \frac {\td\bm{v}} {\td t}) \\
(\bm{v}, -\nabla \phi + \bm{v}\times (\nabla\times \bm{A}))& \rightarrow (-\bm{v}, -\nabla\phi -\bm{v}\times (\nabla \times \bm{A}))&
\end{aligned}$$

When magnetic field exists, these two sides are not equal and time reversal symmetry is lose. This issue of classical mechanics seems lack of time reversal symmetry can be resolved by considering electromagnetic field into the theory but not an external condition. We will make detailed discussion in the part of field theory. Here, we make a rough explanation by the view of fields are caused by motion of charged particles. The scalar potential should be invariant (but the time $t$ should become $-t$) and potential field $\bm{A}$ becomes $-\bm{A}$, for the electric current will change its direction. Thus, the combined theory of Newton's Law and Maxwell theory still holds the time reversal symmetry.

### Time reversal in Canonical Formalism

It is helpful for beginning this section with Lagrangian formalism for classical mechanics. The canonical formalism, or Hamiltonian formalism, can be directly obtained by the Legendre transformation. 

In Lagrangian formalism, the equation of motion is determined by the variational rule: the real motion makes the integral of action be stationary. Generally, this **Principle of stationary action** can be expressed as a variational equation

$$\delta \int_{t_{\textrm{ini}}}^{t_{\textrm{fin}}} L(q(t), \dot{q}(t), t) = 0.$$

The pair of time $(t_{\textrm{ini}},t_{\textrm{fin}})$ denotes the start and end time of the motion, configurations (denoted as $n$ general coordinates $q(t)=(q_1(t),\cdots,q_n(t))$) at these times are fixed. The function $L$ is called Lagrangian of the system. The equation of motion in differential form is the Euler-Lagrange equation of $L$ as

$$\frac {\td}{\td t} \frac {\partial L} {\partial \dot{q}_i} - \frac {\partial L} {\partial q_i} = 0.$$

{{< fold "Notes for this non-local equation w.r.t. time" >}}

One should not be confused by the form of principle of stationary action. It seems that the motion is determined by a finite time interval, which violates our assumption that the flow is only depend on the present state and time. The object looks like to choose the path with stationary action by some experiment in which it traverses all possible paths. A short answer is that this variational principle is just an equivalent form of the equation of motion with local time dependence instead of the fundamental rule of the world. However, it actually the result of quantum mechanics in the limit of $\hbar$ getting close to zero. In the theory isolated with the structure of spacetime, we can safely claim that any form of non-local time dependence is equivalent to the equation of motion with local time dependence. At least, those three theories in this note have such property.

{{< /fold >}}

The Euler-Lagrange equation is usually an ordinary equation (group) of the second order. One approach to rewrite it into the form in general discussion is writing it as canonical form by the transformation of $p = \partial_{\dot{q}} L$ and $H = p\cdot \dot{q} - L$

$$\frac {\td p} {\td t} = -\frac {\partial H} {\partial q} \ ; \ \frac {\td q} {\td t} = \frac {\partial H} {\partial p}.$$

A much compact way to write canonical equation is by the unit symplectic matrix which reads

$$\bm{J} = \begin{bmatrix} \bm{0} & \bm{1} \\ -\bm{1} & \bm{0} \end{bmatrix}.$$

It is a block matrix by $\bm{1}$ means $N$-identity matrix and $\bm{0}$ means $N$-zero matrix. Thus, with $2N$-vector $x=(q,p)$, the equation of motion can be written as

$$\frac {\td x} {\td t} = \bm{J} \nabla_x H.$$

{{< fold "Notes about the general discussion" >}}

As the general discussion said, it is impossible to determine how time reversal acts on state space (here it is the set of $x$, in classical mechanics it is the cotangent bundle of the configuration space). Within canonical formalism, one can make this argument more clear. If we follow the result in Newton's Law, make the time reversal act like $T(q, p) = (q, -p), Tt = -t$, then we have the matrix representation of it by $\bm{T} = \sigma_z\otimes \bm{1}$. However, one can always find the canonical transformation by $C:x\mapsto C(x)$ on phase space with the form canonical equation invariant, if only the $C$'s Jacobian $\bm{J}_C$ is invertible and commutative with $\bm{J}$. The reason is as follows,

$$\frac {\td C(x)} {\td t} = \bm{J}_C \frac {\td x} {\td t} = \bm{J}_C \bm{J} \bm{J} _C^{-1} \bm{J}_C \nabla _{x} H = \bm{J} \nabla _{C(x)} H. $$

Generally, we have $C(Tx) \neq TC(x)$, which means the form of time reversal is not conserved by canonical transformation. Thus no one can answer whether the state $x=(q,p)$ appearing initially is the original coordinate and momentum in Newton's framework or it is actually the image of a canonical transformation. Then we cannot define $T(q,p) = (q,-p)$ without presuming.

{{< /fold >}}

In this part, we assume the time reversal $T(q,p) = \bm{T}x = (q, -p)$ and leave the form of Hamiltonian invariant (i.e. $H(q,p, t) \rightarrow_{\textrm{Time Reversal}} H(q, -p, -t)$). This actually makes the $(q,p)$ representation have a special position among those equivalent pairs in the sense of canonical transformation. This is kind of match our physical interaction with the nature: we do have a preferred coordinate. As a fundamental problem in physics, why there is the chosen one has not been answered yet. This problem exceeds this essay, now we just make it an assumption.

Time reversal makes each sides of canonical equation changed into

$$
\begin{aligned}
\frac {\td x} {\td t} &\rightarrow \frac {\td x'} {\td t'} = \frac {\td \bm{T}x} {\td (-t)} = -\bm{T} \frac {\td x} {\td t} \\
\bm{J}\nabla_x H &\rightarrow \bm{J}\nabla_{x'} H = \bm{J} \frac {\partial x} {\partial x'} \nabla_x H = \bm{J}\bm{T}\nabla_x H(-t)
\end{aligned} 
$$

The symbol $\partial x/ \partial x'$ is the Jacobian of time reversal transformation. Since $\bm{T}^{-1} \bm{J} \bm{T}  =- \bm{J}$, the only way to preserve the equality between each sides is that Hamiltonian $H$ is not explicitly dependent of time. Equivalently, $\partial_t H = 0$

{{< fold "Return to Lagrangian" >}}

The equivalent form of $\partial_t H = 0$ in Lagrangian formalism is $\partial_t L = 0$. This can be derived following

$$
\begin{aligned}
\frac {\partial H} {\partial t} &= \frac {\td H} {\td t}\\
&= \frac {\td } {\td t}\Big(\dot{q}\cdot p - L\Big)\\
&= \frac {\td \dot{q}} {\td t} \cdot \frac {\partial L} {\partial \dot{q}} + \frac {\td q} {\td t} \cdot \frac {\td } {\td t}\frac {\partial L} {\partial \dot{q}} - \frac {\td q} {\td t}\cdot \frac {\partial L} {\partial q} - \frac {\td \dot{q}} {\td t}\cdot \frac {\partial L} {\partial \dot{q}} - \frac {\partial L} {\partial t}\\
&= - \frac {\partial L} {\partial t}
\end{aligned}
$$

in which we use the property of

$$
\frac {\td H} {\td t} = \frac {\partial H} {\partial t} +\frac {\td q} {\td t}\cdot \frac {\partial H} {\partial q} + \frac {\td p} {\td t}\cdot \frac {\partial H} {\partial p}
$$

and along the trajectory the canonical equation and Euler-Lagrangian should be hold.

{{< /fold >}}

This is our main result in this part: the following two statement is equivalent.

1.  The theory (or system) of canonical equation of motion is time reversal symmetric
2.  The Hamiltonian in the theory (or of the system) is independent of time.

With the assumption of: (1) time reversal acts like $(q,p) \rightarrow (q,-p)$, (2) time reversal has no additional effects on Hamiltonian, but only change its arguments.


## Time Reversal in Quantum Mechanics

We will discuss time reversal in this section with modern understanding about Quantum Mechanics, i.e., we will not follow the historical development but start with Schrodinger equation and Dirac notation directly. Different from the classical theory, the main entity involved in quantal equation of motion is wavefunction, which cannot be measured in principle. Physical quantities, known as observables in quantum mechanics, are linear operators on the Hilbert space of wavefunctions. Such linear structure makes the form of time reversal be much more special than it is in classical theory. Just like the general discussion, it is unnecessary and impossible to discuss time reversal in a general dynamics theory from nothing. In this section, we inherit the knowledge in canonical form of mechanics: time reversal should leave coordinates invariant and change the sign of momentum.

### Wigner Theorem on Symmetry Operations

It was firstly proven by Wigner in 1931 that any symmetry operation in quantum mechanics should be unitary or anti-unitary([Wigner 1931][1]). Formally, the theorem reads:

_[Theorem]_: If $\mathcal{H}$, $\mathcal{H'}$ are two Hilbert spaces and if

$$
T: \mathcal{H}\supset \psi = \{e^{\ti \alpha } \ket{\psi}: \alpha \in \mathbb{R}\}\mapsto \{e^{\ti \alpha } \ket{\psi'}: \alpha \in \mathbb{R}\}\subset \mathcal{H'}\ .
$$

is a symmetry transformation (preserve the overlap(inner product)), then there exists a map $\hat V: \mathcal{H}\rightarrow \mathcal{H'}$ which is compatible with $T$ and such $\hat V$ is either unitary or antiunitary if $\textrm{dim}\mathcal{H} \geq 2$. If $\textrm{dim} \mathcal{H} = 1$, there exists a unitary map and an antiunitary map both compatible with $T$.

The map $\hat V$ is compatible with $T$ means

$$
\forall \ket{v} \in \psi : \hat V\ket{v} \in T \psi\ .
$$

{{< fold "Notes on Wigner theorem" >}}

Wigner treat the physical states as **unit rays** in the Hilbert space. A unit ray is a set of normalized wavefunctions up to a global phase factor, as

$$
\psi = \{e^{\ti \alpha} \ket{\psi} : \alpha \in \mathbb{R}\}\ .
$$

A unit ray denotes a specific physical state. The prediction within quantum mechanics is in term of transition probability between two unit rays, i.e., the only measurable quantity in quantum mechanics is of

$$
S_{ij} = |(\psi_i,\psi_j)|^2 = |\braket{\psi_i|\psi_j}|^2\ .
$$

Thus, he defined the symmetry transformation as a set of one-to-one maps between unit rays with such quantity invariant, i.e., inner product preserved.

To test a given symmetry transformation is of unitary or antiunitary, a function is introduced as([V. Bargmann 1964][2])

$$
\forall \ket{\psi_1},\ket{\psi_2},\ket{\psi_3}\in\mathcal{H}, \Delta(\psi_1,\psi_2,\psi_3) = \braket{\psi_1|\psi_2}\braket{\psi_2|\psi_3}\braket{\psi_3|\psi_1}.
$$

One can find function $\Delta$ independent of the global phases of $\ket{\psi_{1,2,3}}$, thus we denote it as a function of unit rays. Now let us admit Wigner's theorem temporarily, the operator $\hat V$ is compatible with $T$, under it the function $\Delta$ transforms as

$$
\Delta(T\psi_1,T\psi_2,T\psi_3) = \prod_{c.y.c.}\braket{\psi_i|\hat V^\dagger \hat V|\psi_j} = \chi(\Delta(\psi_1,\psi_2,\psi_3)).
$$

Function $\chi:\mathbb{C}\rightarrow \mathbb{C}$ acts according to the property of $T$: if $T$ is corresponding unitary operator, $\chi$ is an identity; if $T$ is corresponding antiunitary operator, then by $\braket{\psi|\hat V^\dagger \hat V|\psi'} = \braket{\psi|\psi'}^*$, $\chi$ should return the conjugation of its argument. This can also explain why the case of $\dim\mathcal{H}=1$ is special: in this case $\Delta$ should be constantly $1$, thus unitary and antiunitary are the same. While for $\dim\mathcal{H}\gt 1$, for example, in a two-dimensional subspace of $\textrm{span}\{\ket{\psi_2}, \ket{\psi'}\}$ with $\braket{\psi'|\psi_2} = 0$, letting $\ket{\psi_3} = (\ket{\psi_2} + \ti \ket{\psi'})/\sqrt{2}$ and $\ket{\psi_1} = (\ket{\psi_2}+\ket{\psi'})/\sqrt{2}$, we have $\Delta = (1-\ti) / 2^{3/2} \notin \mathbb{R}$, thus in high dimension case these two branches of unitary and antiunitary are not the same.

We prove the theorem in three stages

1.  For 1 dimensional case, i.e., $\mathcal{H} = \textrm{span}\{\ket{e}\}$. With $T e = e'$ we can simply define $\hat V_1 (\alpha\ket{e}) = \alpha \ket{e}$ and $\hat V_2 (\alpha\ket{e}) = \alpha^* \ket{e}$. Such operators $\hat V_1, \hat V_2$ are obviously compatible with $T$. $\hat V_1$ is unitary and $\hat V_2$ is antiunitary. 
2.  For countable dimensional cases, i.e., $\dim\mathcal{H} = N \leq |\mathbb{N}|$ (rigorously, $\mathcal{H}$ is [separable](https://en.wikipedia.org/wiki/Separable_space). Generally $N$ is not a natural number, but due to the nice property of separable Hilbert space, we handle it as a number.), the proof requires a lemma reads ([V. Bargmann 1964][2])

    _[Lemma]_: $\forall \ket{x} \in \mathcal{H}$ with decomposition $\ket{x} = \sum_{i=1}^N x_i \ket{\psi_i}$ and corresponding unit ray $x$, we have

    $$
    \forall x' \in Tx\rightarrow \ket{x'} = \sum_{i=1}^N x'_i \ket{\psi'_i},
    $$

    where $|x'_i| = |x_i|$, $\{\ket{\psi_i}\}$ and $\{\ket{\psi'_i}\}$ are basis defined above.

    _[Proof]_: Denoting $x'_i = x_i e^{\ti \theta_i}$ for there are only phase shift $\theta_i\in\mathbb{R}$, we can write down:

    $$
    \begin{aligned}
    \Big\|\ket{x'} - \sum_{i=1}^N x_i e^{\ti\theta_i} \ket{\psi'_i}\Big\|^2 &= \braket{x'|x'} + \sum_{i,j=1}^N x_i x_j^* e^{\ti (\theta_i-\theta_j)} \braket{\psi'_j|\psi'_i}  \\
    &\indent - \sum_{i=1}^N x_i e^{\ti \theta_i}\braket{x'|\psi'_i} -\sum_{i=1}^N x_i^* e^{-\ti \theta_i}\braket{\psi'_i|x'} \\
    &= |\braket{x'|x'}| + \sum_{i=1}^N |x_i|^2 |\braket{\psi'_i|\psi'_i}| - 2\textrm{Re} \sum_{i=1}^N x_i e^{\ti \theta_i} \braket{x'|\psi'_i}\\
    &= 2 - 2 \textrm{Re} \sum_{i=1}^N e^{\ti \theta_i} \braket{\psi_i|x}\braket{x'|\psi'_i}
    \end{aligned}
    $$

    Since

    $$
    |\braket{\psi_i|x} \braket{x'|\psi'_i}| = |(\psi_i,x)||(\psi'_i,x')| = |(\psi_i,x)||(T\psi_i,Tx)| = |(\psi_i,x)|^2, 
    $$

    we can simply choose 

    $$
    \theta_i = -\arg \braket{\psi_i|x} \braket{x'|\psi'_i}.
    $$

    Then one has

    $$
    \sum_{i=1}^N e^{\ti \theta_i}\braket{\psi_i|x} \braket{x'|\psi'_i} = \sum_{i=1}^N e^{\ti \theta_i}e^{-\ti \theta_i}|\braket{\psi_i|x} \braket{x'|\psi'_i}| = \sum_{i=1}^N |(\psi_i,x)|^2 = 1.
    $$

    This property helps to make the "mean square error" of $\ket{x'}$ and decomposition vanish such that the Lemma gets proved. 

    q.e.d.
    <br />
    Given symmetry transformation $T$, the construction of compatible operator begins with the element $\ket{e} \in \mathcal{H}$ and its image $\ket{e'} \in T e \subset \mathcal{H'}$. Consider $\mathcal{P}, \mathcal{P'}$ are orthogonal complements of $\ket{e}, \ket{e'}$, then any vector $\ket{\psi} \in \mathcal{H}$ can be written as
    
    $$
    \ket{\psi} = \alpha \ket{e} + \|\ket{u}\| \frac {\ket{u}} {\|\ket{u}\|} \ ; \ \ket{u}\in\mathcal{P}.
    $$

    where $\alpha = \braket{e|\psi}$. Such decomposition works also for $\ket{\psi'}\in\mathcal{H'}$ and $\ket{e'}$. Note that $\ket{u}$ may not be normalized, and $\|\ket{u}\| = \sqrt{\braket{u|u}}$.

    The construction of $\hat V$ begin with assuming $\hat V\ket{e} = \ket{e'}$. By the definition, we have $e' \in T e$. Then generally for $\psi \in \mathcal{H}$, by the lemma (noticing $\{\ket{e}, \ket{u}/\|\ket{u}\|\}$ forms a orthonormal basis in a two-dimensional subspace), we require the image $\hat V\ket{\psi}$ should satisfy

    $$
    \psi' \in T\psi \rightarrow \ket{\psi'} = \hat V\ket{\psi} = \alpha' \ket{e'} + \mu' \frac {\ket{u'}} {\|\ket{u'}\|} =\alpha'\ket{e'} + \hat R\ket{u},
    $$

    in which $|\alpha'| = |\alpha|$ and $|\mu'| = \|\ket{u}\|$. We denote $\hat R\ket{u} = \mu'\ket{u'} / \|\ket{u'}\|$. This equation gives us the fact that $\psi'\in T\psi \Rightarrow \hat R\ket{u} \in Tu$



The proof of Wigner's theorem can then be formally stated.

Now let us consider the higher dimensional case. We can first construct such $\hat V$ for $2\leq \dim \mathcal{H}=N\lt \infty$, i.e., finite dimensional case. In this case, we can always find a set of orthonormal basis $\{\ket{\psi_i}\}_{i=1}^N$ for $\mathcal{H}$. The image of unit rays generated by them under $T$ could used to construct the orthonormal basis of $\mathcal{H'}$ since

$$
|\braket{\psi'_i|\psi'_j}| = |(\psi'_i,\psi'_j)| = |(T\psi_i, T\psi_j)| = |(\psi_i,\psi_j)| = \delta_{ij}.
$$

The following theorem support us to construct $\hat V$ by such basis transformation:



With this lemma, we can construct $\hat V$ in a explicit way:

$$
\hat V = 
$$



For the orthonormal basis $\{\ket{\psi_i}\}$ for $\mathcal{H}$, the image of the unit rays generated by them under symmetry transformation $T$ could also induce a set of orthonormal basis for $\mathcal{H'}$. By $\psi_i' = \{e^{\ti\alpha} \ket{\psi'}: \alpha\in\mathbb{R}\} = T \{e^{\ti \alpha} \ket{\psi}: \alpha \in \mathbb{R}\} = T\psi_i$, it requires

$$
|(\psi'_{i}, \psi' _{j})|^2 = |(T\psi_i, T\psi_j)|^2 = |(\psi_i,\psi_j)|^2 = \delta_{ij}
$$

Now let us consider the operator $\hat V$ compatible with $T$. By the definition, it requires $\forall \ket{v}\in \psi \rightarrow \hat V\ket{v} \in T\psi$. We need to prove any $\hat V$ has the following properties:
1.  (anti-)Linearity: $\hat V (\alpha\ket{a}+\beta\ket{b}) = \chi(\alpha)\hat V\ket{a} + \chi(\beta)\hat V\ket{b}$
2.  Inner product preserving: $(\hat V\ket{a}, \hat V\ket{b}) = \chi((\ket{a},\ket{b})$

in which the function $\chi$ is identity or conjugation.

For $\dim\mathcal{H} = 1$, the problem is trivial. 

Thus, we define the operator $\hat U_T$ by the following relations

$$
\hat U_T \ket{\psi_i} = \ket{\psi'_i}
$$

If $\hat U_T$ is unitary, the 

{{< /fold >}}





## Time Reversal in Field Theory

## Reference

[1]: https://doi.org/10.1007/978-3-663-02555-9
[2]: https://doi.org/10.1007/978-3-662-09203-3_41

1.  Wigner, E. (1931). Gruppentheorie und ihre Anwendung auf die Quantenmechanik der Atomspektren. [doi:10.1007/978-3-663-02555-9](https://doi.org/10.1007/978-3-663-02555-9)
2.  Shimony, Abner. Wigner on Foundations of Quantum Mechanics. Part I: Particles and Fields. Part II: Foundations of Quantum Mechanics (1997). [doi:10.1007/978-3-662-09203-3_41](https://doi.org/10.1007/978-3-662-09203-3_41)
2.  Bargmann, V. (1964, July 01). Note on Wigner's theorem on Symmetry operations. [doi:10.1063/1.1704188 ](https://doi.org/10.1063/1.1704188 )