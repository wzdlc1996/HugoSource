---
title: "Quantum Zeno Effect"
date: 2018-11-22T19:23:43+08:00
draft: false
tags: ["quantum","measurement"]
series: ["quantum-measurement"]
categories: ["Reviews"]
toc: true
---

# Introduction

`Zeno Paradox` , or `Arrow paradox of Zeno Paradoxes` argues that [[Wiki page][1]]:

>If everything when it occupies an equal space is at rest, and if that which is in locomotion is always occupying such a space at any moment, the flying arrow is therefore motionless

In 1977, Misra and Sudarshan showed [[Misra 1977][2]], based on the `quantum measurement theory`, that an unstable particle will `never` be found to decay if it is `continuously` observed [[Petrosky 1990][3]]. This effect is known as `Quantum Zeno Effect(QZE)` or `Turing Paradox` now.

The first experiment of observing the QZE is made by Itano, Heinzen, Bolligner and Wineland in 1990. [[Itano 1990][4]] . There are also some other new study in this field, like `inverse quantum Zeno effect` or `Anti-Zeno Effect(AZE)` of that the decay can be accelerated by the measurements [[Facchi 2000][5]], QZE and AZE by general measurements(without instantaneousness) [[Kazuki 2005][6]].

Here we will introduce the basic theory about QZE and analyze the periodic measurement of a quantum system.

# Unstable System

We will discuss the concept `unstable system` first of all. Generally speaking, `unstable systems` are those systems who have a finite life time will never return to the initial state spontaneously.

_[Definition]_ : To describe the rate of decay of unstable system, we can use `survival probability` :

<div>$$P(t) = |\bra{\psi(t=0)}\psi(t)\rangle|^2$$</div>

With a set of basis, usually marked by energy and other conserved quantities: `$\ket{E,a}$` . They hold the identity operator:

<div>$$1=\int \td E \td a \ \ket{E,a}\bra{E,a}$$</div>

Then we have the expansion of `$P(t)$` , with a  necessary assumption that `there is a below boundary of energy` , so that there is a ground state of the system:

<div>$$P(t)=\int_{E_{\text{min}}}^{+\infty} \td E \  \omega(E) e^{-\ti E t/\hbar} \ ; \ \omega(E)=\int \td a |\bra{E,a}\psi(t=0)\rangle|^2$$</div>

Or with the Heaviside Theta:

<div>$$P(t)=\int_{-\infty}^{\infty} \td E \omega(E)\Theta(E-E_{\min}) e^{-\ti Et /\hbar} \equiv \int \td E \  f(E) e^{-\ti E t /\hbar}$$</div>


## Large Time

The behavior of `$P(t)$` in long run had been investigated in 1950~1960. [[Fonda 1978][7]] . They got asymptotically a power law of the type: `$P(t)\sim t^{-n}$`

Here we introduce a weaker conclusion:

_[Theorem]_ : If `$f(E)$` is `$L^1$` function, namely the Lebesgue integral `$\int |f(E)|\td E \lt \infty$` , we have:

<div>$$\lim_{t\rightarrow\infty} P(t) =0$$</div>

This property was firstly pointed out by Krylov and Fock at 1947 [[Fonda 1978][7]]

{{%fold "Proof"%}}

_[Lemma(Riemann-Lebesgue)]_ : if `$f$` is `$L^1$` integrable on `$\mathbb{R}^d$` , that is to say , if the Lebesgue integral of `$|f|$` is finite. Then the Fourier transform of `$f$` satisfies:

<div>$$F(z)\equiv \int_{\mathbb{R}^d} f(x) e^{-\ti z\cdot x} \td x\rightarrow 0 \text{ as } |z|\rightarrow \infty$$</div>

The proof is followed what is posted on the Wikipedia [Wiki page][8]:

For the 1-dimension case:

First suppose that `$f(x)=\chi_{(a,b)}(x)$` is the `characteristic function` of open interval `$(a,b)$` . Then we have the explicit form of its Fourier transform:

<div>$$\int f(x)e^{-\ti z x}\td x = \frac {e^{-\ti zb}-e^{-\ti za}} {-\ti z }\rightarrow 0 \text{ as } |z|\rightarrow \infty$$</div>

For function on `$\mathbb{R}^d$` this property still hold. Then consider `$f$` is a `$L^1$` function on `$\mathbb{R}^d$` , there exists a `simple function` `$g$` as the linear combination of characteristic functions of open interval such that:

<div>$$\int |f(x)-g(x)|\td x \lt \epsilon$$</div>

And `$g$` has the property above: there exists a number `$N(\epsilon)$` , for all `$|\xi|\gt N(\epsilon)$` we have:

<div>$$\Bigg|\int_{\mathbb{R}^d} g(x)e^{-\ti \xi \cdot x}\td x\Bigg|\lt \epsilon$$</div>

Then for that:

<div>$$\Bigg|\int_{\mathbb{R}^d} f(x)e^{-\ti z\cdot x}\td x\Bigg|\leq \int_{\mathbb{R}^d} |f(x)-g(x)|\td x + \Bigg|\int_{\mathbb{R}^d} g(x)e^{-\ti z \cdot x} \Bigg| $$</div>

And the right-hand-side is bounded by `$2\epsilon$` with an arbitrary `$\epsilon$` . Then we have:

<div>$$\lim_{|z|\rightarrow \infty} \int_{\mathbb{R}^d} f(x)e^{-\ti z\cdot x}\td x = 0 $$</div>

For arbitrary `$f\in L^1$`

q.e.d.

Usually `$f(E)$` is `$L^1$` function for:

<div>$$\int |f(E)|\td E=\int_{E_{\min}}^{\infty} \td E \int \td a \ |\bra{E,a}\psi(t=0)\rangle|^2 = |\bra{\psi(t=0)}\psi(t=0)\rangle|=1  $$</div>

However, sometimes when we discuss the discrete spectrum, we will let `$f$` be a linear combination of some `Dirac-Delta function` . We need to note that Delta function is `NOT` `$L^1$` function. In fact it is kind of a functional.

For example [Stackexchange page][9] :

The set `$S=\{x\ : \ \delta(x)\neq 0\}=\{0\}$` is countable hence has Lebesgue measure of 0. That is to say we should have `$\int \delta(x)\td x =0$` , but we know that the integral is `$1$`. Then we know that `$\delta(x)$` is `NOT` a `$L^1$` function.

{{%/fold%}}

This property shows that `$P(t)$` will `usually`(not discrete spectrum) vanish at time goes too long. But not show the asymptotical behavior of `$P(t)$` .

## Short Time

The behavior of `$P(t)$` in short run had been investigated in 1970~, [[Fonda 1978][7]]. One of the most important properties is as following:

_[Theorem]_ : The time derivative of `$P(t)$` vanishes at `$t=0$`

{{%fold "Proof"%}}

According to the definition of `$P(t)$` , with `$A(t) = \bra{\psi(t=0)}\psi(t)\rangle$` , that is to say `$P(t)=|A(t)|^2 = A(t) A(-t)$` , then we have:

<div>$$\frac {\td P(t)} {\td t}\Bigg|_{t=0} = \frac {\td A(t)} {\td t}\Bigg|_{t=0} A(0) - A(0) \frac {\td A(t)} {\td t}\Bigg|_{t=0}=0 $$</div>

{{%/fold%}}

This property shows that the short time behavior of `$P(t)$` is :

<div>$$P(t\sim 0) \sim o(t) $$</div>

And this is the base of Quantum Zeno Effect.


# Quantum Zeno Effect

## Special Case

### Model Setup
First, we study a special case of QZE, which is the simplest one and is convenience to explain the QZE mechanism.

The system is at the state `$\ket{\psi}$` at the initial time. The apparatus perform the measurement of the observable:

<div>$$\hat P = \ket{\psi}\bra{\psi} $$</div>

It has only two possible results: `$1$` when the system is still on `$\ket{\psi}$` , and `$0$` when the system decays to other states. Namely, apparatus `$\hat P$` is a `Yes/No experiment`

The measurement will be performed at time `$t=n\tau , n\in \mathbb{N}^{+}$` (measurement performed at time `$t=0$` has no effect), and the evolution in the time interval `$\big((n-1)\tau,n\tau\big)$` is described by the unitary operator `$\hat U(t)=\exp(-\ti \hat H t/\hbar)$` .

The result of every measurement is a random variable `$x_n\in\{0,1\}$`, actually `$\{x_n\}$` is a stochastic process.

Here we can construct the sample space as `$\Omega=[0,1)$` , and the filteration:

<div>$$\mathcal{F}_n = \mathcal{F}_{n-1}\bigcup\Big( \bigcup_{\omega\in\mathcal{F}_{n-1}}\text{Part}(\omega)\Big) \ ; \ \mathcal{F}_1=\{[0,1/2),[1/2,1)\}=\text{Part}(\Omega) $$</div>

Where the `partition function` is defined as `$\text{Part}([a,b))=\{[a,(a+b)/2),[(a+b)/2,b)\}$` , with the probability measure `$\mathbb{P}(\omega)=|\omega|$` is the `Borel measure`.

Obviously that `$\mathcal{F}_{s\lt t}\subset \mathcal{F}_t$` , that is to say `$(\Omega,\mathcal{F}_t,\mathbb{P})$` is a `filtered probability space`

### Solution
The solution of this question is the probability `$\mathbb{P}(x_n=1)$` of the result of the `$n$`-th measurement is `$x=1$` .

According to the definition of `$\hat P$` we have the recursion equation:

<div>$$\mathbb{P}(x_n=1|x_{n-1}=1)=\mathbb{P}(x_1=1)= P(\tau)\equiv |\bra{\psi}\hat U(\tau)\ket{\psi}|^2 $$</div>

If we only care about if the system will decay, we can make a `cut off` that `$\mathbb{P}(x_n=1|x_{n-1}=0)=0$` .

This cut off let us ignore the oscillation of survival probability `$P(t)$`. With this cut off, the stochastic process `$\{x_n\}$` is a `Markov process`

We care about the probability that at finite time `$T=N\tau$` , `$x_N=1$` :

<div>$$\mathbb{P}(x_N=1) = \mathbb{P}(x_1=1) \prod_{l=2}^N \mathbb{P}(x_l=1|x_{l-1}=1)=\big(P(\tau) \big)^{T/\tau} \sim \big(1-\alpha \tau^2 \big)^{T/\tau} $$</div>

We find that :

<div>$$\lim_{\tau\rightarrow 0} \mathbb{P}(x_N=1) = 1$$</div>

This is the Quantum Zeno Effect.

## General Discussion

The general discussion about QZE is made in [[Misra 1977][2]] original paper. But it is just similar to what we have done in this simple situation.

The discussion about general measurement is made in [[Kazuki 2005][6]] . They studied the measurement  sequence with finite time interval(response time) and finite measurement range, error.

## Experiment

The first experiment which observed the Zeno effect is made by Itano's group[[Itano 1990][4]] .

### Model Setup

They used a 3-level ions system(with the interaction can be ignored), each ion's levels are noted as `$\ket{1},\ket{2},\ket{3}$` , with `$\ket{2}$` is a `metastable` level, which means that the spontaneous decay from it to `$\ket{1}$` is negligible. But `$\ket{3}$` can decay only to `$\ket{1}$` easily and fast.

The system can be described with a density matrix: `$\hat \rho$` , and the components of `$\ket{3}$` can be negligible because ions at that level is much too easy to decay to `$\ket{1}$` . That is:

<div>$$\hat \rho = \rho_{11}\ket{1}\bra{1}+\rho_{12}\ket{1}\bra{2}+\rho_{21}\ket{2}\bra{1}+\rho_{22}\ket{2}\bra{2} \sim \begin{bmatrix} \rho_{11}&\rho_{12}\\ \rho_{21}&\rho_{22}\end{bmatrix}=\bm{\rho}$$</div>

The system is coupled with a field and is a Rabi oscillator. That is to say the Hamiltonian of the system is:

<div>$$\hat H =\hbar \Omega\ket{1}\bra{2}+\hbar\Omega\ket{2}\bra{1} \sim \begin{bmatrix} 0 & \hbar \Omega \\ \hbar \Omega & 0\end{bmatrix}=\bm{H}$$</div>

The first half period of the Rabi oscillation is like the decay region of an unstable system.

### Measurement Sequence

The measurement sequence is constructed by a optical pulse sequence, with the photon can excite ions from level `$1$` to level `$3$` , but leave those at level `$2$` unchanged. The excitation  and the decay from `$3$` to `$1$` can be treated as instantaneous.

For a single ion (pure state) `$\ket{\psi}=u\ket{1}+v\ket{2}$` with `$|u|^2+|v|^2=1$` , one pulse leads to the following process:

<div>$$\ket{\psi} \rightarrow_{\text{pulse}} \big\{\ket{3}:|u|^2,\ket{2}:|v|^2\big\}\rightarrow_{\text{decay}} \big\{\ket{1}\otimes\ket{\text{photon}}:|u|^2,\ket{2}:|v|^2 \big\}$$</div>

The duration of this process is much less than the time interval between two neighbor pulses.

And after each measurement, the coherence will be zero, namely `$\rho_{12}=\rho_{21}=0$` . Because the measurement will let every ion be at `$\ket{1}$` or `$\ket{2}$` . And `$\rho_{11},\rho_{22}$` are left unchanged in the measurement.

The measurement pulse sequence is operated at the first half period (`$T=\pi/\Omega$`), in which all ions transit from `$\ket{1}$` to `$\ket{2}$` . And there will be `$n+1$` pulses in the time `$T$` (in the close interval `$[0,T]$`), then the interval `$\tau =T/n=\pi/n\Omega$`.

The measurement operated at time `$t=0$` has no effect, and the one operated at time `$t=T$` will let the density matrix diagonal.

### Solution

We have the equation of motion(without measurement sequence):

<div>$$\ti \hbar \frac {\td \hat \rho} {\td t} = [\hat H , \hat \rho] \Rightarrow \ti \frac {\td} {\td t} \begin{bmatrix} \rho_{11}&\rho_{12}\\ \rho_{21}&\rho_{22}\end{bmatrix} = \begin{bmatrix} -\Omega (\rho_{12}-\rho_{21}) & \Omega(\rho_{22}-\rho_{11}) \\ -\Omega(\rho_{22}-\rho_{11}) & \Omega (\rho_{12}-\rho_{21})\end{bmatrix}$$</div>

With the transform:

<div>$$\begin{aligned}
R_1 &= \rho_{12}+\rho_{21} \\
R_2 &= \ti( \rho_{12} - \rho_{21}) \\
R_3 &= \rho_{22}-\rho_{11}
\end{aligned}$$</div>

Because the `$\bm{\rho}$` is Hermitian matrix, they are real valued. Moreover, because `$\text{Tr}\bm{\rho}=1$` , we know that these three real valued number are complete to discribe the density matrix. That is to say, the map is one to one.

Then we have the equation of motion respect to `$\bm{R}=(R_1,R_2,R_3)^T$` :

<div>$$\frac {\td \bm{R}} {\td t} = \begin{bmatrix}0 & 0 & 0 \\ 0 & 0 & -2\Omega \\ 0 & 2\Omega & 0 \end{bmatrix}\bm{R} = \bm{\omega} \times  \bm{R} $$</div>

Where `$\bm{\omega} = (2\Omega,0,0)$` , and initially, `$\bm{R}(t=0)=(0,0,-1)^T$` , which means that all ions are at level `$1$` .

The measurement will let vector `$\bm{R}$` 's first two components be zero with the third one unchanged. Then after the half period `$T=\pi/\Omega$` with the measurement sequence, we have:

<div>$$\bm{R}_{\text{meas}}(T)=(0,0,-\cos^n (\pi/n))$$</div>

and if there is no measurement sequence:

<div>$$\bm{R}_{\text{no-meas}}(T)=(0,0,1)$$</div>

Then test how many ions are at level `$1$` at time `$t=T$` , which can be realized by excite them to level `$3$` and measure the intensity of the spontaneous radiation. And comparing it with the theoretical prediction:

<div>$$P_1(T) = \rho_{11}(T)=\frac 1 2 (1+\cos^n(\pi/n))$$</div>

When `$\tau\rightarrow 0$` or `$n\rightarrow \infty$` , we will find that `$P_1(T)=1$` , which is the QZE.

###

## Anti-Zeno Effect

When the time interval `$\tau\rightarrow 0$` , the system will never decay. But with finite `$\tau$` , the measurement sequence will accelerate the decay or slow it down, which depend on the time interval `$\tau$` .

`Quantum Anti-Zeno Effect` , also known as `Inverse Zeno Effect`, is the phenomenon that the periodic measurements accelerates the decay of unstable system [[Facchi 2000][5]].



# QZE and MWI/RSI

## MWI and RSI

`Many Worlds Interpretaion(MWI)` is come from the `Relative States Interpretation` which is firstly come up with by `Everett III` at 1957 [[Everett 1957][10]] .

In MWI, there are myriads of worlds in the Universe in addition to the world we are aware of. In particular, every time a quantum experiment with different possible outcomes is performed, all outcomes are obtained, each in a different world, even if we are only aware of the world with the outcome we have seen. [[SEP page][11]] The MWI consists of two parts:

1.  A mathematical theory which yields the time evolution of the quantum state of the (single) Universe
2.  A prescription which sets up a correspondence between the quantum state of the Universe and our experiences.

However, the RSI, as the prototype of the MWI, does not need the "worlds" argument. Actually, in the Everett's original paper, RSI has two rules: [[Everett 1957][10]]

1.  The observation of observable `$\hat A$` with eigenstates `$\ket{a_i}$` , in the system `$S$` and observer `$O$` , transforms the total state `$\ket{\psi}\otimes \ket{O}$` according to:

    <div>$$\ket{\psi}\otimes \ket{O}\rightarrow \sum_{i} (\bra{a_i}\psi\rangle) \ket{a_i}\otimes \ket{O:a_i} $$</div>

2.  For the observation in more than one observables in more than one systems (non-interaction) with the same observer, the rule 1 should be linearly applied on the direct product state:

    <div>$$\big(\bigotimes_{i=1}^n \ket{\psi_i^{S_i}}\big) \otimes \ket{O}\rightarrow \sum_{j_1,\cdots,j_n} \Big(\prod_{i=1}^n \bra{\hat A_i=a_{i,j_i}}\psi_i^{S_i}\rangle\Big)\Big(\bigotimes_{i=1}^n \ket{\hat A_i=a_{i,j_i}}\ket{O:a_{1,j_1},a_{2,j_2},\cdots,a_{n,j_n}}\Big)$$</div>

The probability, according to Everett, does not need to be introduced first.

In fact, there are many versions of MWI and RSI, here, we just discuss the Zeno Effect with the original opinion of Everett.

## QZE in RSI

Consider a unstable system with unstable state `$\ket{u}$` , and with the time evolution it might decay to stable state `$\ket{s}$` (never back to `$\ket{u}$`) with overlap `$x(\tau)=\bra{s} \hat U(\tau)\ket{u}$` . And we introduce a observer who frequently check whether the system decay or not. The interaction between observer and system is ideal, and irrelevant to the history of observation.

<div>$$\ket{\psi}\ket{O}\rightarrow \bra{u}\psi\rangle \ket{u} \ket{O:0}+\bra{s}\psi\rangle \ket{s}\ket{O:1}$$</div>

Initially, the total state is `$\ket{u}\ket{O}$` , then we have:

<div>$$\begin{aligned}
\ket{u}\ket{O} &\rightarrow_{\tau} x(\tau)\ket{s}\ket{O:1}+\sqrt{1-|x(\tau)|^2} \ket{u}\ket{O:0} \\
& \rightarrow_\tau x(\tau)\ket{s}\ket{O:1} + \sqrt{1-|x(\tau)|^2}x(\tau)\ket{s}\ket{O:0,1}+(1-|x(\tau)|^2)^{2/2} \ket{u}\ket{O:0,0} \\
& \cdots
\end{aligned}$$</div>

With `$N$` measurements, that is to say with `$N$` maps on `$\ket{u}\ket{O}$` . With rearrange all `$\ket{O:\cdots,1}$` together as `$\ket{O:\text{decayed}}$` we have:

<div>$$\ket{u}\ket{O} \rightarrow_{N\tau} x(\tau)\sum_{k=0}^{N-1} (1-|x(\tau)|^2)^{k/2} \ket{s}\ket{O:\text{decayed}} + (1-|x(\tau)|^2)^{N/2} \ket{u}\ket{O:\text{undecayed}} $$</div>

With `$1-|x(\tau)|^2 = |\bra{u}\hat U(\tau)\ket{u}|^2=P(\tau)\sim 1-\alpha \tau^2$` , we still obtain that:

<div>$$\ket{u}\ket{O} \rightarrow_{N\tau;\tau\rightarrow 0} \frac {\alpha T \tau} 2 \ket{s}\ket{O:\text{decayed}} + (1-\frac {\alpha T \tau} 2)\ket{u}\ket{O:\text{undecayed}} = \ket{u}\ket{O:\text{undecayed}} $$</div>

That is QZE.

[1]:https://en.wikipedia.org/wiki/Zeno%27s_paradoxes#Arrow_paradox
[2]:https://aip.scitation.org/doi/10.1063/1.523304
[3]:https://www.researchgate.net/publication/222378644_Quantum_Zeno_effect
[4]:https://journals.aps.org/pra/abstract/10.1103/PhysRevA.41.2295
[5]:https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.86.2699
[6]:https://arxiv.org/abs/quant-ph/0411145
[7]:http://iopscience.iop.org/article/10.1088/0034-4885/41/4/003/pdf
[8]:https://en.wikipedia.org/wiki/Riemann%E2%80%93Lebesgue_lemma
[9]:https://math.stackexchange.com/questions/522603/is-the-dirac-delta-function-l1-integrable
[10]:https://journals.aps.org/rmp/abstract/10.1103/RevModPhys.29.454
[11]:https://plato.stanford.edu/entries/qm-manyworlds/
