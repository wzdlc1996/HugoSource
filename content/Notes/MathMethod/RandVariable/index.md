---
title: "Random Variable"
date: 2021-06-17T23:36:42+08:00
draft: false
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

{{% /fold %}}

_[Definition]_ : A **Measurable (real-valued) Function** on a **Measurable Space** $(\Omega,\mathcal{F})$ is a function $f:\Omega \rightarrow \mathbb{R}$, which has the property:

$$
\forall B \in \mathcal{B}(\mathbb{R}) \Rightarrow f^{-1}(B) = \{\omega\in\Omega : f(\omega) \in B\} \in \mathcal{F}$$

Where $\mathcal{B}(\mathbb{R})$ is the **natural Borel sigma Algebra** on $\mathbb{R}$.