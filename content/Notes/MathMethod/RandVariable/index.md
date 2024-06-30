---
title: "Random Variable"
date: 2021-06-17T23:36:42+08:00
draft: true
tags: ["math"]
series: ["Numerical-Method"]
categories: ["tools"]
toc: true
summary: "Basic concepts of random variable and its properties"
---

# Probability Space

_[Definition]_ : A **Probability Space** is a triplet $(\Omega, \mathcal{F},\mathbb{P})$ of three elements:

1.  $\Omega$ is a set (called **Sample Space**) .
2.  $\mathcal{F}$ is a **Sigma Algebra** on $\Omega$. $\mathcal{F}$ is a collection of subsets of $\Omega$ and
    -  $\Omega, \varnothing \in \mathcal{F}$
    -  $A\in \mathcal{F} \Rightarrow A^c \equiv \Omega \setminus A \in \mathcal{F}$
    -  A sequence of sets $\{A_i\}_{i=1}^{\infty}$ in which $A_i \in \mathcal{F}$, then $\bigcup_{j=1}^{\infty} A_j \in \mathcal{F}$
3.  $\mathbb{P}$ is a **Probability Measure**: $\mathbb{P}: \mathcal{F}\rightarrow [0,1]$ and
    -  (Normalized) $\mathbb{P}(\Omega) = 1$
    -  (Countably additive) $A_1,A_2,\cdots \in \mathcal{F} \ , \ A_i\bigcap A_j=\varnothing \Rightarrow \mathbb{P}(\bigcup_{j=1}^{\infty} A_j) = \sum_{j=1}^{\infty} \mathbb{P}(A_j)$

{{% fold "Examples" %}}

Probability space is the abstract of our knowledge for how randomness works. Here are some examples.

1.  Dice

    A (six-side, homogeneous) dice has six possible output as $\Omega = \{1,2,3,4,5,6\}$. 

    From this sample space, we have a common used algebra $\mathcal{F}$ for it. This algebra should contain at least the output events of $\{1\},\cdots,\{6\}$. Then following the rule 2, any finite union ($\Omega$ is finite) of the subsets should be one element of $\mathcal{F}$, it is

    $$
    \begin{aligned}
    \mathcal{F} = \{ & \\
        &\varnothing\\
        &\{1\}, \{2\}, \cdots, \{6\}, \\
        &\{1, 2\}, \{1,3\}, \cdots \\
        &\cdots, \\
        &\Omega \\
    \} &.
    \end{aligned}
    $$

    The dice returns six outputs with equal probability. That means

    $$
    \mathbb{P}(\{1\}) = \cdots = \mathbb{P}(\{6\}) = \frac 1 6 .
    $$

    Then with the rule 3, unions of these events should have the measure of their sum:

    $$
    \mathbb{P}(A) = \frac {|A|} 6,
    $$

    where $|A|$ means the cardinity of subset $A\subset \Omega$.

2.  Uniform Random Number

    Consider a random number generator providing the real number in $[0,1]$ uniformly. In this case, the sample space is the continuous set of $\Omega = [0, 1]$. 

    The necessity of a $\sigma$-algebra can now be seen in this case. You may wonder the probability of finding output equals $\epsilon \in [0,1]$, which means the event is the subset $\{\epsilon\}\subset \Omega$. The issue happens. We cannot assign a nonvanishing measure-like-function for this event, since there are uncountably infinite exclusive subsets like it. The only way is to let their probability be zero. If we follow the rule of $\sigma$-algebra to define other elements in the minimum $\sigma$-algebra containing such zero-measure subsets, we will find all of them have zero measure. This makes the probability hard to understand.

    In the long history of fighting against the understanding of continuous [Wikipedia/zeno_paradox](https://en.wikipedia.org/wiki/Zeno%27s_paradoxes), we finally accepts that the $\sigma$-algebra needs to include "finite-large" subsets in this case. Maybe a legal form of probability-question is, how much is the probability of finding the output in the interval $[a,b]\subset \Omega$. The $\sigma$-algebra serving for such events is the collection of all Borel measurable sets of $\Omega$. Simply speaking, it contains all finite-length intervals.

    The probability measure can be simply defined with this larger $\sigma$-algebra, it is the length of the interval as

    $$
    \mathbb{P}(A=[a,b]) = b-a \ ,\  b\gt a.
    $$

    Then the exclusive cover of the sample space would have the probability sum $1$.

{{% /fold %}}

_[Definition]_ : A **Measurable (real-valued) Function** on a **Measurable Space** $(\Omega,\mathcal{F})$ is a function $f:\Omega \rightarrow \mathbb{R}$, which has the property:

$$
\forall B \in \mathcal{B}(\mathbb{R}) \Rightarrow f^{-1}(B) = \{\omega\in\Omega : f(\omega) \in B\} \in \mathcal{F}$$

Where $\mathcal{B}(\mathbb{R})$ is the **natural Borel sigma Algebra** on $\mathbb{R}$.

_[Definition]_ : A **Random Variable** is a measurable function on a Probability Space.

_[Definition]_ : The **Distribution** or **Law** of a random variable is a probability measure $\mu$ on $\mathbb{R}$ defined for any Borel set $B\in\mathcal{B} ( \mathbb{R})$ by

$$
\mu(B) = \mathbb{P}(X\in B)\equiv \mathbb{P}\big(\{\omega \in \Omega : X(\omega) \in B\}\big).
$$


{{< fold "Notes" >}}

Here we provide a rigorous definition of the **random variable**, our main task of this note. One should not get confused by the complex mathematical terminology appears during the definition. The naive understanding of the random variable is well compatible to this definition. Almost all concepts and theorems in math, especially real analysis, agree well to our intuition. So don't worry, just work as usual and store these definition in your heart.

{{< /fold >}}

_[Definition]_ : The **Probability Density Function(pdf)** of a random variable is an integrable function $p(x)$ on $\mathbb{R}$. For any set $B\in\mathcal{B}(\mathbb{R})$, there is

$$\mu(B) = \int_B p(x)\td x.$$


_[Definition]_ : The **Mean** or **Expectation** of a random variable is the **Lebesgue Integral** of it with respect to probability measure $\mathbb{P}$ as


$$\mathbb{E} (X) = \int_{\Omega} X\td \mathbb{P}.$$

{{< fold "How does expectation works?">}}

Consider the simplest random variable, which is the linear combination of `characteristic function` of sum subsets of $\Omega$ : $I(\omega;A)=\begin{cases} 1 & \omega\in A\\ 0 & \omega \notin A\end{cases}$


$$X(\omega) = \sum_{i} x_i I(\omega;A_i).$$


So $X(\omega)$ is $x_i$ if $\omega \in A_i$. Here, $x_i\geq 0$ is required, the reason will be shown below.

Then we define its expectation is:


$$\mathbb{E}(X) := \sum_i x_i \mathbb{P}(A_i).$$


For any other **non-negative** random variable $X$, we can always construct a sequence of such "simple" random variables $X_n$ to "get close to" $X$, then we can define the expectation of $X$ is the limit of expectations of this sequence:


$$\mathbb{E}(X) = \lim_{n\rightarrow \infty} \mathbb{E}(X_n).$$


The limit in r.h.s. is well-defined only when $x_{i,n}$ s are nonnegative by **Monotonous Convergence Theorem** . In general cases, the function is not non-negative, one can always separate it into positive-part and negative-part and then deals them isolatedly and computes the difference between them at last.

This version of expectation is the same as our intuition by the following deriving

$$
\begin{aligned}
\int_{\Omega} X \td \mathbb{P} &\approx \sum_{\td \omega} X(\omega')\Big|_{\omega'\in \td \omega} \mathbb{P}(\td \omega)\\
& = \sum_{\td \omega} X(\omega')\Big|_{\omega' \in \td \omega} \int_{\{x: \forall \omega \in \td \omega \rightarrow X(\omega) = x\}} p(x)\td x \\
&=\sum_{\td \omega} \int_{\{x: \forall \omega \in \td \omega \rightarrow X(\omega) = x\}} X(\omega')\Big|_{\omega' \in \td \omega} p(x)\td x \\
&\approx \sum_{\td \omega} \int_{\{x: \forall \omega \in \td \omega \rightarrow X(\omega) = x\}} x p(x)\td x \\
&= \int_{\{x: x = X(\omega), \forall \omega \in \Omega\}} x p(x) \td x.
\end{aligned}
$$

The error of the first approximation is controlled by the size of $\td \omega$, since we choose a single point in $\td \omega$ to represent the value of random variable. In the limit of continuous, the approximation is exact. 

{{< /fold >}}

# Notions of Convergence

In this section, we denote the probability space is $(\Omega, \mathcal{F},\mathbb{P})$ , and $\{X_n\}$ is a sequence of random variables on it. $\mu_n$ is the distribution of $X_n$, while $X$ is another random variable with distribution $\mu$ on the same probability space.

_[Definition]_ : **Almost sure convergence**: $X_n$ converges to $X$ `almost surely` as $n\rightarrow \infty$ (denoted as $X_n \rightarrow X , \text{a.s.}$) if:


$$\mathbb{P}\big(\{\omega \in \Omega : \lim_{n\rightarrow \infty} X_n(\omega) = X(\omega)\}\big) = 1$$


_[Definition]_ : **Convergence in probability**: $X_n$ converges to $X$ `in probability` (denoted as $X_n\rightarrow_p X$) if for any $\epsilon \gt 0$ :


$$\lim_{n\rightarrow \infty}\mathbb{P}\big(\{\omega \in \Omega : |X_n(\omega) - X(\omega)| \gt \epsilon\}\big)  = 0$$


_[Definition]_ : **Convergence in distribution**: $X_n$ converges to $X$ in distribution (denoted as $X_n \rightarrow_d X$) (i.e. $\mu_n\rightarrow_d \mu$ , weak convergence), if for any bounded continuous function $f$ :


$$\lim_{n\rightarrow \infty}\mathbb{E}(f(X_n)) = \mathbb{E}(f(X))$$


_[Definition]_ : **Convergence in $L^p$**: If $X_n, X\in L^p$, i.e., they are $p$-th power integrable. and:


$$\lim_{n\rightarrow \infty}\mathbb{E}(|X_n-X|^p) = 0$$


If $p=1$ , that is `convergence in mean`; if $p=2$ that is `convergence in mean square`.

_[Remark]_ : These convergence have the following relations:

1.  If **Almost sure converge** ,then **Converge in probability**
2.  If **Converge in probability** and exists a subsequence is **almost sure**, then the sequence **Almost sure converge**
3.  If **Converge in probability**, then **Converge in distribution**
4.  If **$L^p$ converge** for all $p$ , then **Converge in probability**