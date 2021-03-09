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

In this part, we assume the time reversal $T(q,p) = \bm{T}x$ mentioned above. This actually makes the $(q,p)$ representation have a special position among those equivalent pairs in the sense of canonical transformation. This is kind of match our physical interaction with the nature: we do have a preferred coordinate. As a fundamental problem in physics, why there is the chosen one has not been answered yet. This problem exceeds this essay, now we just make it an assumption.





Though we cannot determine the rule of how $(q,p)$ transforms under time reversal, the compare with Newton's formalism is helpful. It seems that under time reversal we have $(q,p)\rightarrow_{\textrm{Time Reversal}} (q, -p)$. However, note that the definition of time reversal has ambiguity in a general theory, this definition is not unique. One example is the theory of canonical transformation, which allow us exchange the place of momentum and coordinate by $(q,p)\rightarrow_{\textrm{C.T.}} (p, -q)$

## Time Reversal in Quantum Mechanics

## Time Reversal in Field Theory

## Reference