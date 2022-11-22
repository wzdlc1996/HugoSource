---
title: "Introduction to Computational Complexity Theory"
date: 2022-11-22T22:36:14+08:00
draft: true
lastmod: 2022-11-22T22:36:14+08:00
tags: ["quantum-computing"]
categories: ["Reviews"]
toc: true
summary: "In this post, we will discussion the most important several compleixty classes in classical theory and quantum computing. This basic knowledge and notations  is complexity theory will be covered, including Turing machine and computability. The content is mainly 1) explanin the computation mocel and why it does not matter, 2) basic classes of P and NP, 3) Randomized computation BPP and PP, 4) quantum computing with BPQ and QMA."
---

# Representation of Objects

## Terminologies

**Alphabet** is a finite set. For example: $S = \{0, 1\}$ is the alphabet of all bit-string.
**String** is a finite list of elements in its Alphabet. For example: $S^4 \ni 0100$ is a string (bit-string)

The union of all possible string (with all possible length) is denoted as $S^* = \cup_{l=0}^{\infty} S^l$.

**Length** of a string is the number of elements of it. We denote it as $|\cdot|$. For example $|0100| = 4$.

## Representability of string

By the representability of binary encoding, we can safely assume there exists a function mapping everything to a string. For example, the number $8$ could be mapped to $1000$. With binary encoding, we can actually make some alphabet with size over $2$. For example, the alphabet $\{0, 1, |\}$ which could be used to construct the list of binary values by joining them with `|` such as $0100|1000|0010$, one can encode each element by two bits like: `0 -> 00`, `1 -> 11`, `| -> 10`.

One can always make more complex representation systems based on the binary alphabet. Let $x'$ be a string of alphabet $S'$, while $x$ is its binary representation, then one always has

$$
|x| \leq |S'| |x'|.
$$

This means different alphabets are **polynomially equivalent**. We will frequently encounter this concept in the following discussion.


# Computation Systems


# Class: P

Informally, we say class $\textbf{P}$ is the collection of all problems could be solved within runtime polynomial to the size. In this section we will clarify three concepts:

1.  What is a problem?
2.  What is ``solve''?
3.  Why polynomial?

## Decision problems/Languages

_[Definition]_: A **decision problem** or **language** is specified by a boolean function $f:S^*\rightarrow \{0, 1\}$. We say, the language $L_f$ (depend on function $f$) is the set

$$
L_f = \{x\in S^*: f(x) = 1\} \subset S^*.
$$

The word ``solve'', or formally, a machine **decides** a language $L\subset S^*$ means that this machine computes the function $f_L: S^*\rightarrow \{0,1\}$ such that $L = \{x:f_L(x) = 1\}$. 

{{% fold "Example: decision problems" %}}

This definition is a little strange for those who new to complexity theory. By natural language we prefer defining a decision problem by `ask` a question and waiting for some `yes/no` answer. We will show these two view point is the same by a simple example.

Let us consider a problem defined by natural language as

> Is the number $x$ prime?

It exactly is a decision problem we want. To express it by the formal definition, a smallest construction is to consider the set of prime numbers:

$$
\textrm{Prime} = \{x\in \mathbb{N}: x \textrm{ is Prime}\}.
$$

Then by binary encoding we can write a one-to-one map from $\mathbb{N}$ to $S^*$. Thus the "language" (by definition) is 

$$
L = \{x \in S^* : \textrm{dec}(x) \in \textrm{Prime}\}.
$$

A machine deciding this would offer a mechanical procedure to compute the characteristic function of $\textrm{Prime}$ and thus for any given number we can run this machine and find whether it is prime. This is indeed solve our decision problem.

{{% /fold %}}


## Formal definition of P


_[Definition]_: (The class $\textbf{DTIME}$) Let $T:\mathbb{N}\rightarrow \mathbb{N}$ be some function, a language $L$ is in $\textbf{DTIME}(T(n))$ iff there is a (deterministic) Turing machine that runs in time (step counting) $O(T(n))$ and decides $L$. 

_[Definition]_: (The class $\textbf{P}$):

$$
\textbf{P} = \bigcup_{c \in \mathbb{N}} \textbf{DTIME}(n^c).
$$

{{% fold "Note" %}}

This definition involves a new term "deterministic". This limits the computational model runs exact path for any input. In classical mechanics, it seems trivial if the machine has no random things. But in quantum mechanics, the intrinsic irreversibility of quantum measurement might break this. 

In theoretical discussion, people introduce non-deterministic Turing machine(NDTM). At each step, NDTM has more than one next choice and the computation procedure forms a tree. For decision problem, NDTM returns $1$ if **at least one** path returns $1$ otherwise $0$. 

As an example, we provide an non-deterministic Turing machine to decide the Prime checker defined above:

```python
def NDTM_prime_checker(x: int) -> bool:
    # non-deterministic Turing machine could run this loop non-deterministically
    for fac_1 in range(1, x):
        for fac_2 in range(1, x):
            if fac_1 * fac_2 == x:
                return True
    return False
```

We use `python` to show the idea about this NDTM, note the for loops are run by NDTM way: as a tree of all possible paths.

{{% /fold %}}

Theoretically, $\textbf{P}$ has some philosophical importance:

1.  $\textbf{P}$ is invariant by changing the setup of Turing machine
2.  $\textbf{P}$ is invariant by changing the method of encoding
3.  $\textbf{P}$ is thought as "efficiently" computable


# Class: NP


We discuss class $\textbf{NP}$ in this section. We cover two definitions of it by verification and polynomial to non-deterministic Turing machine. The equivalence between them will be proved. At last, we discuss the NP completeness and the famous problem named P versus NP.

## NP: as efficiently verifiable

_[Definition]_: (The class $\textbf{NP}$) A language $L\subset S^*$ is in $\textbf{NP}$ if there exists a polynomial $p:\mathbb{N}\rightarrow \mathbb{N}$ and a polynomial-time Turing machine $M$ (called the **verifier** for $L$) such that for every $x\in S^*$,

$$
x\in L \Leftrightarrow \exists u \in S^{p(|x|)} \textrm{ s.t. } M(x, u) = 1.
$$

We call such $u$ a **certificate** (or **witness**) for $x$ (w.r.t. language $L$ and machine $M$).

By the definition, we directly find $\textbf{P} \subset \textbf{NP}$, since for any language $L$ in $\textbf{P}$, the Turing machine $M_L$ deciding it could be the verifier neglecting $u$: $\forall x \in L \rightarrow M(x, u) = M_L(x) = 1$.

{{% fold "Example: NP problems" %}}

Roughly, this definition means the NP problem can be efficiently verified with some "oracle" $u$ which we need only it exists instead of find an explicit machine to obtain it.

As an example, we show the **Independent Set problem** $\textrm{IndSet}$ is in $\textbf{NP}$ by this definition.

Let $G = \textrm{Graph}(E, V)$ is a graph with vertices $V$ and edges $E$. An independent set of it is a subset of $V$ while any two vertices in it is not directly connected by an edge. Formally:

$$
V\ni S \textrm{ is an independent set} \Leftrightarrow \forall u, v \in S, (u, v) \notin E.
$$

The **Independent Set problem** is a decision problem to judge whether there is an independent set with size not less than a given number $k$. Formally, we say:

$$
\textrm{IndSet} = \{(G, k): \exists S \subset V(G) \textrm{ s.t. } |S|\geq k \textrm{ and } \forall u,v \in S, (u,v) \notin E(G)\}.
$$

We note that there exists a polynomial-time Turing machine to check whether a given set $S$ is an independent set or not. Just traverse all pairs and costing $O(|S|^2)$. Thus by letting $u$ be an subset of $V(G)$. The Turing machine $M((G,k), u)$ checks whether $u$ is an independent set and $|u| \geq k$. Thus,

$$
\begin{aligned}
&\exists u \in S^* \textrm{ s.t. } M((G, k), u) = 1 \\
\Rightarrow & \exist S_u \subset V(G) \textrm{ s.t. } |S_u|\geq k \textrm{ and } S_u \textrm{ is an independent set}\\
\Rightarrow & (G, k) \in \textrm{IndSet} \\
\Rightarrow & \textrm{IndSet} \in \textbf{NP}.
\end{aligned}
$$

{{% /fold %}}

## NP: as polynomial-time NDTM solvable

The class $\textbf{NP}$ was originally introduced as the class of problems solvable by **non-deterministic Turing machine(NDTM)** within polynomial time. And the name $\textbf{NP}$ means non-deterministic polynomial. 

Here, we model the NDTM as a tree-like structure by its possible steps. It returns $1$ if at least one path returns $1$ while returns $0$ if none of them returns $0$. 

_[Theorem]_: By defining $\textbf{NTIME}(T(n))$ is the collection of languages which could be decided by an NDTM within time $T(n)$ ($n$ is the size of input), we have

$$
\textbf{NP} = \bigcup_{c\in \mathbb{N}} \textbf{NTIME}(n^c).
$$

{{% fold "Proof" %}}

We note that given an non-deterministic Turing machine $N: S^* \rightarrow \{0, 1\}$, one can always find a deterministic Turing machine $M: S^*\times A^* \rightarrow \{0, 1\}$, where $A^*$ is the set of all possible paths in the tree defined by running of NDTM. This means $M$ works as a specified path of the $N$, thus it is deterministic.

Thus, for any $L \in \textbf{NTIME}(n^c)$, we have 

$$
\begin{aligned}
\forall x \in L &\rightarrow N(x) = 1 \\
&\rightarrow \exists s \in A^* \textrm{ s.t. } M(x, s) = 1 \\
&\rightarrow L \in \textbf{NP}.
\end{aligned}
$$

This means

$$
\bigcup_{c\in \mathbb{N}} \textbf{NTIME}(n^c) \subset \textbf{NP}.
$$

And vice versa, given the certification $u$ of any $x \in L \subset \textbf{NP}$, we can map it as a path of some non-deterministic Turing machine's running path and then build an NDTM to decide $L$. Since the length of $u$ is always polynomial to $|x|$, this NDTM's runtime would be of $O(p(|x|))$, Thus we have

$$
\textbf{NP}\subset \bigcup_{c\in \mathbb{N}} \textbf{NTIME}(n^c) .
$$

Then we have

$$
\textbf{NP}= \bigcup_{c\in \mathbb{N}} \textbf{NTIME}(n^c).
$$

{{% /fold %}}


# Class: BPP and Class PP

Introducing random number generator is common in real world programming, but it deeply change the computational model such as deterministic Turing machine. A **probabilistic Turing machine(PTM)** is an implementation of non-deterministic Turing machine. It introduce some specific probability distribution at each step, this makes it suitable to model stochastic algorithms. In this section, we discuss some famous classes based on PTM.

## Formal definition of BPP

_[Definition]_: (The class $\textbf{BPTIME}$ and $\textbf{BPP}$) For function $T:\mathbb{N}\rightarrow \mathbb{N}$ and language $L\subset S^*$, we say $L$ is in $\textbf{BPTIME}(T(n))$ if there exists a PTM $M$ decides $L$ within time $O(T(n))$ ($n$ is the size of input). The "decide" means $M$ halts in $O(T(|x|))$ time regardless of the random choice, and the success probability is bounded:

$$
\mathbb{P}(M(x) = 1_{x\in L}) \geq 2/3.
$$

The class $\textbf{BPP}$ (means **bounded-error probabilistic polynomial**) is defined by

$$
\textbf{BPP} = \bigcup_{c\in \mathbb{N}} \textbf{BPTIME}(n^c).
$$

The error bound $2/3$ could be actually arbitrary any number greater than $1/2$, by the following theorem

_[Theorem]_: (The robustness of $\textbf{BPP}$) For any language $L\subset S^*$, if there exists a polynomial-time PTM $M$ such that 

$$
\forall x \in S^*, c\gt 0, \mathbb{P}(M(x) = 1_{x\in L}) \geq \frac 1 2 + \frac 1 {|x|^c},
$$

then there exists a polynomial-time PTM $M'$ such that

$$
\forall x\in S^*, d\gt 0, \mathbb{P}(M'(x) = 1_{x\in L}) \geq 1 - \frac 1 {2^{|x|^d}}.
$$

{{% fold "Proof" %}}

The machine $M'$ is simply run $M$ several times and see the majority of outputs. If mainly $1$ then output $1$, otherwise output $0$. Note this unbalance is rely on the success probability of $M$ is greater than $1/2$.

We prove a useful lemma about two-point distributed random variables (Chernoff bounds). Assume $x_i$ are independent random variables over $\{0, 1\}$, let $\mu = \sum_{i=1}^n \mathbb{E}(x_i)$, We have

$$
\begin{aligned}
\mathbb{P}\Big(\sum_{i=1}^n x_i \geq (1+\delta) \mu\Big) &\leq \Big(\frac {e^\delta} {(1+\delta)^{1+\delta}}\Big)^\mu \\
\mathbb{P}\Big(\sum_{i=1}^n x_i \leq (1-\delta) \mu\Big) &\leq \Big(\frac {e^{-\delta}} {(1-\delta)^{1-\delta}}\Big)^\mu
\end{aligned}.
$$

To prove this, we have for $\sum x_i$ by (let $p_i = \mathbb{P}(x_i=1)$)

$$
\mathbb{E}\Big(\exp(t\sum_{i=1}^n x_i)\Big) = \prod_{i=1}^n \mathbb{E}(e^{tx_i}) = \prod_{i=1}^n \Big((1-p_i) + p_i e^{t}\Big).
$$

Note $1+x \leq e^x$, we have

$$
\mathbb{E}\Big(\exp(t\sum_{i=1}^n x_i)\Big) \leq \prod_{i=1}^n \exp(p_i(e^t - 1)) = \exp(\mu (e^t - 1)).
$$

We used the property that $\mu = \sum_i \mathbb{E}(x_i) = \sum_i p_i$. then use the Markov inequality [wikipedia/Markov's_inequality][1]: for nonnegative random variable $X$ and positive $a$, one has $\mathbb{P}(X\geq a) \leq \mathbb{E}(X) / a$. We have (for $t\gt 0$)

$$
\begin{aligned}
\mathbb{P}\Big(\sum_{i=1}^n X_i \geq (1+\delta) \mu\Big) &= \mathbb{P}\Big(e^{t\sum_i x_i} \geq e^{t\mu(1+\delta)}\Big) \\
&\leq \frac {\mathbb{E}(e^{t\sum_i x_i})} {e^{t\mu(1+\delta)}} \\
&\leq \exp(\mu(e^t-1) - t\mu(1+\delta)) \\
&\leq \Big(\frac {e^\delta} {(1+\delta)^{1+\delta}}\Big)^\mu.
\end{aligned}
$$

The last inequality is made by minimizing the function w.r.t. $t$. For another aspect, we have similarly

$$
\begin{aligned}
\mathbb{P}\Big(\sum_{i=1}^n X_i \leq (1-\delta) \mu\Big) &= \mathbb{P}\Big(e^{-t\sum_i x_i} \geq e^{-t\mu(1-\delta)}\Big) \\
&\leq \frac {\mathbb{E}(e^{-t\sum_i x_i})} {e^{-t\mu(1+\delta)}} \\
&\leq \exp(\mu(e^{-t}-1) + t\mu(1-\delta)) \\
&\leq \Big(\frac {e^{-\delta}} {(1-\delta)^{1-\delta}}\Big)^\mu.
\end{aligned}
$$

With this, we have the corollary of

$$
\begin{aligned}
\mathbb{P}\Big(\Big|\sum_{i=1}^n x_i - \mu\Big| \geq \delta \mu \Big) &= \mathbb{P}(\sum_i x_i -\mu \leq -\delta \mu) + \mathbb{P}(\sum_i x_i -\mu \geq \delta \mu) \\
&\leq \Big(\frac {e^{-\delta}} {(1-\delta)^{1-\delta}}\Big)^\mu + \Big(\frac {e^\delta} {(1+\delta)^{1+\delta}}\Big)^\mu \\
&\leq 2 \max\Big(\Big(\frac {e^{-\delta}} {(1-\delta)^{1-\delta}}\Big)^\mu, \Big(\frac {e^\delta} {(1+\delta)^{1+\delta}}\Big)^\mu\Big) \\
&\lt 2 e^{-\min (\delta^2/4, \delta/2) \mu} = 2 e^{-\Omega(\mu)}.
\end{aligned}
$$

We note the last loosing is not unique and not tight. See [wikipedia/Chernoff_bound][2] for more useful forms.

Now let us try to find the repeating time $k$. For any input $x$, consider $k$ random variables of independent repeated runs, and $X_i = 1$ if the result is correct, otherwise $X_i =0$. Formally

$$
X_i = \begin{cases}
1 & M(x) = 1_{x\in L} \\
0 & M(x) \neq 1_{x\in L}
\end{cases}.
$$

By the setup, we have

$$
\mathbb{P}(X_i = 1) \geq p = \frac 1 2 + \frac 1 {|x|^c}.
$$

Thus, we have $\mu = \sum_{i=1}^k\mathbb{E}(X_k)\geq pk$. For sufficient small $\delta \gt 0$, we have by Chernoff bound

$$
\mathbb{P}\Big(\sum_{i=1}^k X_k \leq (1-\delta)pk\Big)\leq \mathbb{P}\Big(\sum_{i=1}^k X_k \leq (1-\delta)\mu\Big) \leq e^{-\delta^2\mu / 4} \leq e^{-\delta^2pk/4}
$$

Consider the rule for $M'$, it will return the majority of $k$ outputs of $M$s, That means 

$$
\begin{aligned}
\mathbb{P}(M'(x) &= 1_{x\in L}) = \mathbb{P}(\sum_{i=1}^k X_k \gt \frac k 2) \\
&= 1 - \mathbb{P}(\sum_{i=1}^k X_k \lt \frac k 2).
\end{aligned}
$$

We note that there is

$$
\begin{aligned}
\mathbb{P}\Big(\sum_{i=1}^k X_k \leq (1-\delta)pk\Big)\Bigg|_{\delta = 1/(2|x|^c)} &= \mathbb{P}\Big(\sum_{i=1}^k X_k \leq \frac k 2 (1+\frac 3 {2|x|^c} - \frac 1 {|x|^{2c}})\Big) \\
&\geq \mathbb{P}\Big(\sum_{i=1}^k X_k \leq \frac k 2 (1+\frac 3 {2|x|^c} - \frac 1 {|x|^{c}})\Big) \\
&= \mathbb{P}\Big(\sum_{i=1}^k X_k \leq \frac k 2 (1+\frac 1 {2|x|^c})\Big).
\end{aligned}
$$

where we used the fact that $|x| \geq 1$. Thus

$$
\begin{aligned}
\mathbb{P}(M'(x) &= 1_{x\in L}) = \mathbb{P}(\sum_{i=1}^k X_k \gt \frac k 2) \\
&= 1 - \mathbb{P}(\sum_{i=1}^k X_k \lt \frac k 2) \\
&\geq 1 - \mathbb{P}(\sum_{i=1}^k X_k \lt \frac k 2(1+\frac 1 {2|x|^c})) \\
&\geq 1 - \exp\Big(- \frac {1} {16|x|^{2c}} (\frac 1 2 + \frac 1 {|x|^c}) k\Big).
\end{aligned}
$$

One can always increase $k$ to fulfill the objection, just by making

$$
\exp\Big(- \frac {1} {16|x|^{2c}} (\frac 1 2 + \frac 1 {|x|^c}) k\Big) \leq \frac 1 {2^{|x|^d}}\Rightarrow k = \Omega(|x|^{2c+d}).
$$

It is still polynomial to the size of input.

{{% /fold %}}


_[Theorem]_: A language $L$ is in $\textbf{BPP}$ if there exists a polynomial-time TM $M$ and a polynomial $p:\mathbb{N}\rightarrow \mathbb{N}$ such that for every $x\in S^*$ 

$$
\Big|\Big\{u\in S^{p(|x|)}: M(x, r) = 1_{x\in L}\Big\}\Big| \geq \frac 2 3 \cdot 2^{p(|x|)}.
$$

The proof is straightforward, just treat $u$ as the successful choice sequence of a PTM, note $2^{p(|x|)} = |S^{p(|x|)}|$ thus the equality actually says the probability of such paths on $S^{p(|x|)}$ is greater than $2/3$ w.r.t. uniformly distributed $u$.

This theorem could be an alternative definition of $\textbf{BPP}$ and avoid using PTM, just like what we do for $\textbf{NP}$ to avoid using NDTM. In this view we know $\textbf{BPP}$ is roughly a working $\textbf{NP}$ machine whose successful paths have a significant share.


## The class: PP


_[Definition]_: (class $\textbf{PP}$) A language $L$ is in $\textbf{PP}$ if there exists a polynomial-time TM $M$ and a polynomial $p:\mathbb{N}\rightarrow \mathbb{N}$ such that for every $x\in S^*$ 

$$
x\in L \Leftrightarrow \Big|\Big\{u\in S^{p(|x|)}: M(x, r) = 1\Big\}\Big| \geq \frac 1 2 \cdot 2^{p(|x|)}.
$$

The difference between $\textbf{PP}$ and $\textbf{BPP}$ is that $\textbf{PP}$ does not require a finite gap between success probability and the fail probability. That is the mean by **bounded-error**. This loose makes $\textbf{PP}$ be a much larger class. 


{{% fold "Note" %}}

Also note $\textbf{PP}$ is asymmetric for $x\in L$ and $x\notin L$ since the above definition induces

$$
x\notin L \Leftrightarrow \Big|\Big\{u\in S^{p(|x|)}: M(x, r) = 1\Big\}\Big| \lt \frac 1 2 \cdot 2^{p(|x|)}.
$$

If we replace this strictly less with less and equal, the class would be a trivial one: one can always build a probabilistic machine output $1$ and $0$ with probability $1/2$ to decide all languages. 

{{% /fold %}}





# References

[1]: https://en.wikipedia.org/wiki/Markov%27s_inequality
[2]: https://en.wikipedia.org/wiki/Chernoff_bound