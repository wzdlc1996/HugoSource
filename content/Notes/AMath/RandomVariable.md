# Random Variable

## Introduction to Probability Theory

### Probability Space

_[Definition]_ : A `Probability Space` is a triplet $(\Omega, \mathcal{F},\mathbb{P})$ of three elements:

1.  $\Omega$ is a set (called `Sample Space`) .
2.  $\mathcal{F}$ is a `Sigma Algebra` on $\Omega$. $\mathcal{F}$ is a collection of subsets of $\Omega$ and has the following properties:
    -  $\Omega, \varnothing \in \mathcal{F}$
    -  $A\in \mathcal{F} \Rightarrow A^c \equiv \Omega \setminus A \in \mathcal{F}$
    -  A sequence of sets $\{A_i\}_{i=1}^{\infty}$ in which $A_i \in \mathcal{F}$, then $\bigcup_{j=1}^{\infty} A_j \in \mathcal{F}$
3.  $\mathbb{P}$ is a `Probability Measure`: $\mathbb{P}: \mathcal{F}\rightarrow [0,1]$ and has the following properties:
    -  (Normalization)$\mathbb{P}(\Omega) = 1$
    -  (Countably additive)$A_1,A_2,\cdots \in \mathcal{F} \ , \ A_i\bigcap A_j=\varnothing \Rightarrow \mathbb{P}(\bigcup_{j=1}^{\infty} A_j) = \sum_{j=1}^{\infty} \mathbb{P}(A_j)$

_[Definition]_ : A `Measurable (real-valued) Function` on a `Measurable Space` $(\Omega,\mathcal{F})$ is a function $f:\Omega \rightarrow \mathbb{R}$, which has the property:

{{< mathjax >}}
$$\forall B \in \mathcal{B}(\mathbb{R}) \Rightarrow f^{-1}(B) = \{\omega\in\Omega : f(\omega) \in B\} \in \mathcal{F}$$
{{< /mathjax >}}

Where $\mathcal{B}(\mathbb{R})$ is the `natural Borel sigma Algebra` on $\mathbb{R}$.

_[Definition]_ : A `Random Variable` is a measurable function on a Probability Space.

_[Definition]_ : The `Distribution` or `Law` of a random variable is a probability measure $\mu$ on $\mathbb{R}$ defined for any Borel set $B\in \mathcal{B}(\mathbb{R})$ by:

{{< mathjax >}}
$$\mu(B) = \mathbb{P}(X\in B)\equiv \mathbb{P}\{\omega \in \Omega : X(\omega) \in B\}$$
{{< /mathjax >}}

_[Definition]_ : The `Probability Density Function(pdf)` of a random variable is an integrable function $p(x)$ on $\mathbb{R}$ such that for any set $B\in\mathcal{B}(\mathbb{R})$:

{{< mathjax >}}
$$\mu(B) = \int_B p(x)\td x$$
{{< /mathjax >}}

_[Definition]_ : The `Mean` or `Expectation` of a random variable is the `Lebesgue Integral` of it with respect to probability measure $\mathbb{P}$ :

{{< mathjax >}}
$$\mathbb{E} (X) = \int_{\Omega} X(\omega) \mathbb{P}(\td \omega)\equiv \int_{\Omega} X\td \mathbb{P}$$
{{< /mathjax >}}

{{<fold "Notes">}}

Consider the simplest random variable, which is the linear combination of `characteristic function` of sum subsets of $\Omega$ : $I(\omega;A)=\begin{cases} 1 & \omega\in A\\ 0 & \omega \notin A\end{cases}$

{{< mathjax >}}
$$X(\omega) = \sum_{i} x_i I(\omega;A_i)$$
{{< /mathjax >}}

So $X(\omega)$ is $x_i$ if $\omega \in A_i$. Here, $x_i\geq 0$ is required, the reason will be shown below.

Then we define its expectation is:

{{< mathjax >}}
$$\mathbb{E}(X) := \sum_i x_i \mathbb{P}(A_i)$$
{{< /mathjax >}}

For any other **non-negative** random variable $X$, we can always construct a sequence of such "simple" random variables $X_n$ to "get close to" $X$, then we can define the expectation of $X$ is the limit of expectations of this sequence:

{{< mathjax >}}
$$\mathbb{E}(X) = \lim_{n\rightarrow \infty} \mathbb{E}(X_n)$$
{{< /mathjax >}}

The limit in r.h.s. is well-defined only when $x_{i,n}$ s are nonnegative by **Monotonous Convergence Theorem** . In general cases, the function is not non-negative, one can always separates it into positive-part and negative-part and then deals them isolatedly and computes the difference between them at last.

{{</fold>}}

_[Definition]_ : Two random variables $X,Y$ are mutually `Independent`, if for all continuous functions $f,g$ one has:

{{< mathjax >}}
$$\mathbb{E}(f(X)g(Y)) = \mathbb{E}(f(X))\mathbb{E}(g(Y))$$
{{< /mathjax >}}

### Notions of Convergence

In this section, we denote the probability space is $(\Omega, \mathcal{F},\mathbb{P})$ , and $\{X_n\}$ is a sequence of random variables on it. $\mu_n$ is the distribution of $X_n$, while $X$ is another random variable with distribution $\mu$ on the same probability space.

_[Definition]_ : **Almost sure convergence**: $X_n$ converges to $X$ `almost surely` as $n\rightarrow \infty$ (denoted as $X_n \rightarrow X , \text{a.s.}$) if:

{{< mathjax >}}
$$\mathbb{P}\big(\{\omega \in \Omega : \lim_{n\rightarrow \infty} X_n(\omega) = X(\omega)\}\big) = 1$$
{{< /mathjax >}}

_[Definition]_ : **Convergence in probability**: $X_n$ converges to $X$ `in probability` (denoted as $X_n\rightarrow_p X$) if for any $\epsilon \gt 0$ :

{{< mathjax >}}
$$\lim_{n\rightarrow \infty}\mathbb{P}\big(\{\omega \in \Omega : |X_n(\omega) - X(\omega)| \gt \epsilon\}\big)  = 0$$
{{< /mathjax >}}

_[Definition]_ : **Convergence in distribution**: $X_n$ converges to $X$ in distribution (denoted as $X_n \rightarrow_d X$) (i.e. $\mu_n\rightarrow_d \mu$ , weak convergence), if for any bounded continuous function $f$ :

{{< mathjax >}}
$$\lim_{n\rightarrow \infty}\mathbb{E}(f(X_n)) = \mathbb{E}(f(X))$$
{{< /mathjax >}}

_[Definition]_ : **Convergence in $L^p$**: If $X_n, X\in L^p$, i.e., they are $p$-th power integrable. and:

{{< mathjax >}}
$$\lim_{n\rightarrow \infty}\mathbb{E}(|X_n-X|^p) = 0$$
{{< /mathjax >}}

If $p=1$ , that is `convergence in mean`; if $p=2$ that is `convergence in mean square`.

_[Remark]_ : These convergence have the following relations:

1.  If **Almost sure converge** ,then **Converge in probability**
2.  If **Converge in probability** and exists a subsequence is **Almost sure**, then the sequence **Almost sure converge**
3.  If **Converge in probability**, then **Converge in distribution**
4.  If **$L^p$ converge** for all $p$ , then **Converge in probability**

### Conditional Expectation

_[Definition]_ : For any random variable $X$ on probability space $(\Omega, \mathcal{F},\mathbb{P})$ with $\mathbb{E}(|X|)\lt \infty$, the `Conditional Expectation` of $X$ given $\mathcal{G}$, ($\mathcal{G}\subset \mathcal{F}$) (denoted as $\mathbb{E}(X|\mathcal{G})$) is a random variable $Z$, defined as:

1.  $Z$ is a random variable which is measurable with respect to $\mathcal{G}$
2.  For any set $A\in\mathcal{G}$ :

    {{< mathjax >}}
$$\int_A Z\td \mathbb{P} = \int_A X \td \mathbb{P}$$
{{< /mathjax >}}

_[Theorem]_ : **Properties of conditional expectation** . Suppose $X,Y$ are random variables on probability space $(\Omega,\mathcal{F},\mathbb{P})$ , with $\mathbb{E}(|X|),\mathbb{E}(|Y|)\lt \infty, a,b\in \mathbb{R}$ , and $\mathcal{H}\subset \mathcal{G}\subset \mathcal{F}$ then (The following assertion is true in the sense of "almost surely"):

1.  $\mathbb{E}(aX+bY|\mathcal{G}) = a \mathbb{E}(X|\mathcal{G}) + b\mathbb{E}(Y|\mathcal{G})$
2.  $\mathbb{E}(\mathbb{E}(X|\mathcal{G})) = \mathbb{E}(X)$
3.  $X\text{ is }\mathcal{G}\text{-measurable } \Rightarrow\mathbb{E}(X|\mathcal{G}) = X$
4.  $\mathbb{E}(\mathbb{E}(X|\mathcal{H})|\mathcal{G}) = \mathbb{E}(X|\mathcal{H})$
5.  $\mathbb{E}(\mathbb{E}(X|\mathcal{G})|\mathcal{H}) = \mathbb{E}(X|\mathcal{H})$
6.  $X\text{ is independent of }\mathcal{G} \Rightarrow\mathbb{E}(X|\mathcal{G}) = \mathbb{E}(X)$
7.  $Y\text{ is }\mathcal{G}\text{-measurable }\Rightarrow \mathbb{E}(XY|\mathcal{G})=Y\mathbb{E}(X|\mathcal{G})$

{{<fold "Proof">}}

1.  Linearity, it can be easy to find by the linearity of integral.
2.  With the fact that $\Omega \in\mathcal{G}$ , one has $\mathbb{E}(\mathbb{E}(X|\mathcal{G}))=\int_{\Omega} \mathbb{E}(X|\mathcal{G})\td \mathbb{P} = \int_{\Omega} X\td \mathbb{P} = \mathbb{E}(X)$

3.  According to the definition of the conditional expectation, $Z = \mathbb{E}(X|\mathcal{G})$ should be a $\mathcal{G}$-measurable random variable such that $\forall A\in\mathcal{G}\Rightarrow \int_A Z\td \mathbb{P} = \int_A X\td \mathbb{P}$ . Obviously if we choose $Z = X$ these two requirements above are automatically satisfied.

4.  For $\mathbb{E}(X|\mathcal{H})$ is $\mathcal{H}$-measurable, and $\mathcal{H}\subset \mathcal{G}$ , so obviously $\mathbb{E}(X|\mathcal{H})$ is $\mathcal{G}$ measurable. Then according to 3 the property has been proved.

5.  Denote $Y = \mathbb{E}(X|\mathcal{G})$ , then by the definition, $\forall A\in\mathcal{G}\Rightarrow \int_A Y\td \mathbb{P} = \int_A X\td \mathbb{P}$ , then let $Z=\mathbb{E}(Y|\mathcal{H})$ , then $\forall B\in \mathcal{H}\Rightarrow \int_B Z\td \mathbb{P} = \int_B Y\td \mathbb{P}$. For $\mathcal{H}\subset \mathcal{G}$ , so $B\in \mathcal{H}\Rightarrow B\in\mathcal{G}$ , then we have $\forall B\in \mathcal{H}\Rightarrow \int_B Y\td \mathbb{P} = \int_B X\td \mathbb{P}$ . That is to say, $\forall B\in\mathcal{H}\Rightarrow \int_B Z\td \mathbb{P} = \int_B X\td \mathbb{P}$ . Meanwhile, $Z$ is $\mathcal{H}$-measurable, so we can say $Z = \mathbb{E}(\mathbb{E}(X|\mathcal{G})|\mathcal{H}) = \mathbb{E}(X|\mathcal{H})$

6.  With random variable $X$ we can define a sigma algebra $\sigma(X)$ by subsets of $\Omega$: $\{A\ : \ \{X(\omega) : \omega \in A\}\in \mathcal{B}(\mathbb{R})\}$ , $\sigma(X)$ should be the smallest sigma algebra respect to which $X$ is measurable. Then $X$ is independent of $\mathcal{G}$ means that $\sigma(X)$ is independent of $\mathcal{G}$ :

    {{< mathjax >}}
$$\forall A\in\sigma(X) \ , \ B\in\mathcal{G} \Rightarrow \mathbb{P}(A\cap B) = \mathbb{P}(A)\mathbb{P}(B)$$
{{< /mathjax >}}

    So, $\forall B\in\mathcal{G}$ , we choose the characteristic function on $B$: $1_B$ , it is a $\mathcal{H}$-measurable random variable, then:

    {{< mathjax >}}
$$\int_B X \td \mathbb{P} = \mathbb{E}(X1_B) = \mathbb{E}(X)\mathbb{E}(1_B) = \mathbb{E}(X)\int_B \td \mathbb{P} = \int_B \mathbb{E}(X)\td \mathbb{P}$$
{{< /mathjax >}}

    So $\mathbb{E}(X|\mathcal{H})$ should be a constant function, it equals to $\mathbb{E}(X)$. i.e. $\mathbb{E}(X|\mathcal{H}) = \mathbb{E}(X)$

7.  It is not a simple theorem. Technically it is called "Pulling out known factor" property of conditional expectation. Here, we show a brief(hand-waving proof). For detail see: [Properties of conditional_expectation](https://web.ma.utexas.edu/users/gordanz/notes/conditional_expectation.pdf) .

    Consider the simplest case of $Y = 1_B$ where $B\in\mathcal{G}$ . So $Y$ is $\mathcal{G}$-measurable. Then we have: $1_B\mathbb{E}(Y|\mathcal{G})$ is $\mathcal{G}$-measurable, and for arbitrary $A\in\mathcal{G}$ we have:

    {{< mathjax >}}
$$\int_A 1_B\mathbb{E}(Y|\mathcal{G})\td \mathbb{P} = \mathbb{E}\big(1_B \mathbb{E}(Y|\mathcal{G})1_A\big) = \mathbb{E}(\mathbb{E}(Y|\mathcal{G})1_{A\cap B}) = \mathbb{E}(Y 1_{A\cap B}) = \mathbb{E}(1_B Y 1_A) = \int_A 1_B Y\td \mathbb{P}$$
{{< /mathjax >}}

    Where we used the property that $A\cap B \in \mathcal{G}$. Then $\mathbb{E}(\mathbb{E}(Y|\mathcal{G}) 1_{A\cap B}) = \int_{A\cap B}\mathbb{E}(Y|\mathcal{G})\td \mathbb{P} = \int_{A\cap B} Y\td \mathbb{P} = \mathbb{E}(Y1_{A\cap B})$ . So $\mathbb{E}(1_B Y |\mathcal{G}) = 1_B \mathbb{E}(Y|\mathcal{G})$. For the simplest case the theorem hold.

    Then with the linearity, for the simple random variable: $Y = \sum_{i} y_i 1_{B_i}$ the theorem hold too. So there exists a sequence $\{X_n\}$ of simple random variables such that $X_n \rightarrow X -0^+$ . Then with the monotone convergence we can prove the theorem works for arbitrary positive random variables. The general case can always be proven by the method of decomposing random variable into positive part and negative part together with linearity.

{{</fold>}}

_[Theorem]_ : **Conditional Jensen's inequality** . Let $X$ be a random variable such that $\mathbb{E}(|X|) \lt \infty$ and $\phi : \mathbb{R}\rightarrow \mathbb{R}$ is a **convex function** ($\phi(\lambda x_1 + (1-\lambda) x_2) \leq \lambda \phi(x_1)+(1-\lambda)\phi(x_2) \ ; \ \lambda \in(0,1)$) . And $\mathbb{E}(|\phi(X)|)\lt \infty$ , then:

{{< mathjax >}}
$$\mathbb{E}\Big(\phi(X)|\mathcal{G}\Big) \geq \phi\Big(\mathbb{E}(X|\mathcal{G})\Big)$$
{{< /mathjax >}}

{{< fold "Proof">}}

The convex function can be write as the form of:

{{< mathjax >}}
$$\phi(x) = \sup \{a_n + b_n x\}$$
{{< /mathjax >}}

Which can be understood in the way that convex function are always located at the region above its tangent line. So we need only to prove:

{{< mathjax >}}
$$\mathbb{E}\big(\sup\{a_n + b_n X\}|\mathcal{G}\big) \geq \sup\{a_n + b_n \mathbb{E}(X|\mathcal{G})\} = \sup\{\mathbb{E}(a_n + b_n X|\mathcal{G})\}$$
{{< /mathjax >}}

Which can be seen by the monotonicity of conditional expectation: $X \geq Y\Rightarrow \mathbb{E}(X|\mathcal{G}) \geq \mathbb{E}(Y|\mathcal{G})$ . So:

{{< mathjax >}}
$$\mathbb{E}(\sup\{a_n + b_n X\}|\mathcal{G})\geq \mathbb{E}(a_n+b_n X|\mathcal{G})$$
{{< /mathjax >}}

for arbitrary $a_n, b_n$ . So:

{{< mathjax >}}
$$\mathbb{E}(\sup(a_n + b_n X)|\mathcal{G}) \geq \sup \{\mathbb{E}(a_n + b_n X|\mathcal{G})\}$$
{{< /mathjax >}}

with the definition of supremum.

{{< /fold >}}

_[Definition]_ : The **Conditional expectation of $X$ with respect of random variable $Y$** is defined as:

{{< mathjax >}}
$$\mathbb{E}(X|Y) = \mathbb{E}(X|\sigma(Y))$$
{{< /mathjax >}}

Where $\sigma(Y)$ is the sub-sigma algebra generated by $Y$ : $\sigma(Y) = \{Y^{-1}(B) : B \in\mathcal{B}(\mathbb{R})\}$

{{< fold "Discrete valued condition">}}

We can check this definition is equivalent to the definition of conditional expectation in junior textbook with discrete valued $Y$ .

In this case, the sample space can be decomposed as :

{{< mathjax >}}
$$\Omega = \bigcup_j \Omega_j$$
{{< /mathjax >}}

Where $\Omega_j = \{\omega : Y(\omega) = Y_j\}$ . And the $\sigma(Y)$ is simply all possible union of $\{\Omega_j\}$ . Then:

{{< mathjax >}}
$$\int_{\Omega_j}\mathbb{E}(X|Y)\td \mathbb{P} = \int_{\Omega_j}X\td \mathbb{P}$$
{{< /mathjax >}}

The measurability of $\mathbb{E}(X|Y)$ with respect to $\sigma(Y)$ ($\mathbb{E}(X|Y)$ has the same "structure" as $Y$, i.e., discrete valued.) means $\mathbb{E}(X|Y)$ takes constant on each $\Omega_j$ . So:

{{< mathjax >}}
$$\mathbb{E}(X|Y=Y_j) = \frac 1 {\mathbb{P}(\Omega_j)} \int_{\Omega_j} X\td \mathbb{P}$$
{{< /mathjax >}}

Which is what we learned in junior textbook.

{{< /fold >}}

_[Theorem]_ : Let $g(Y)$ be any measurable function of $Y$, then:

{{< mathjax >}}
$$\mathbb{E}\big((X-\mathbb{E}(X|Y))^2\big) \leq \mathbb{E}\big((X-g(Y))^2\big)$$
{{< /mathjax >}}

{{< fold "Proof">}}

We have:

{{< mathjax >}}
$$\mathbb{E}\big((X-g(Y))^2\big) = \mathbb{E}\big((X-\mathbb{E}(X|Y))^2\big)+\mathbb{E}\big((\mathbb{E}(X|Y)-g(Y))^2\big)+2\mathbb{E}\big\{(X-\mathbb{E}(X|Y))(\mathbb{E}(X|Y)-g(Y))\big\}$$
{{< /mathjax >}}

And:

{{< mathjax >}}
$$\begin{aligned}
\mathbb{E}\big\{(X-\mathbb{E}(X|Y))(\mathbb{E}(X|Y)-g(Y))\big\} &= \mathbb{E}\Big\{\mathbb{E}\big\{(X-\mathbb{E}(X|Y))(\mathbb{E}(X|Y)-g(Y))\big\}\Big|Y\Big\} \\
&=\mathbb{E}\Big\{(\mathbb{E}(X|Y)-g(Y))\mathbb{E}\big\{X-\mathbb{E}(X|Y)\big\}\Big|Y\Big\} \\
&=\mathbb{E}\Big\{(\mathbb{E}(X|Y)-g(Y))\big(\mathbb{E}(X|Y)-\mathbb{E}(X|Y)\big)\Big\} \\
&=0
\end{aligned}$$
{{< /mathjax >}}

q.e.d.

{{< /fold >}}

This theorem means that the conditional expectation is the optimal approximation of $X$ in $L^2$ norm among all of the $Y$-measurable functions. i.e. , if one needs to find a $Y$-measurable function as the approximation of $X$ , the conditional expectation $\mathbb{E}(X|Y)$ is the optimal choice. Where $Y$-measurable means $\sigma(Y)$-measurable.

## Generation of Random Variables

The core of widely application of stochastic algorithms is the efficient method to generate random variables of given distribution. In this part we will show a classical way to generate uniformly distributed random variable, and how to generate other distribution from the uniform one.

### Linear Congruential Generator(LCG)

LCG is the most commonly used **Pseudo-Random Number Generator(PRNG)** for uniformly distribution : $\mathcal{U}([0,1])$ . It has the following simple form:

{{< mathjax >}}
$$X_{n+1} = (aX_n + b) \mod m$$
{{< /mathjax >}}

Where $a,b,m$ are chosen natural numbers beforehand and $X_0$ is the seed. The obtained sequence $X_n/m$ is the desired pseudo-random number satisfies $\mathcal{U}([0,1])$ .

The `period` for a typical sequence produced by this recursion formula is controlled by the following theorem:

_[Theorem]_ : The period of a LCG is $m$ if and only if:

1.  $b$ and $m$ are relatively prime.
2.  every prime factor of $m$ divides $a-1$
3.  if $m|4$ then $(a-1)|4$

For detail see: [D.E. Knuth. The Art of Computer Programming, vol 2](https://www.amazon.com/Art-Computer-Programming-Seminumerical-Algorithms/dp/0201896842)

There is also a so-called **Minimal Standard Generator** which is a special case of LCG of $b=0$ , which is discussed in 1969 by Lewis, Goodman and Miller. Where $a=7^5=16807 , m=2^{31}-1$.

More general LCG takes the following form:

{{< mathjax >}}
$$X_{n+1}=(a_0 X_n + a_1 X_{n-1}+\cdots + a_j X_{n-j} + b) \mod m$$
{{< /mathjax >}}

Whose period can not proceed $m^{j+1}-1$.

One important fact about the LCG is that it shows very poor distributions of $s$-tuples:

_[Theorem]_ : The $s$-tuples $(X_n,X_{n+1},\cdots,X_{n+s-1})$ obtained via simple LCG(a,b,m) lie on a maximum of $(s!m)^{1/s}$ equidistant parallel hyperplanes within the $s$-dimensional hypercube $(0,1)^{\otimes s}$

Which is proven by Marsaglia in [Marsaglia 1968](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC285899/). One can see when $s$ is large, the deviation with respect to the uniform distribution is apparent.

### Inverse Transformation Method

The general random variables $Y\in \mathbb{R}$ can be generated from $\mathcal{U}([0,1])$ in principle based on the following theorem:

_[Theorem]_ : (Inverse Transformation Method) . Suppose the distribution function of $Y$ is $F(y)$ , i.e. $\mathbb{P}(Y\leq y) = F(y)$ , which is strictly increasing. $X \sim \mathcal{U}([0,1])$ then: $F^{-1}(X)$ is the desired random variable.

{{< fold "Proof">}}

If $F(y)$ is strictly increasing, consider the $\hat Y = F^{-1}(X)$ we have:

{{< mathjax >}}
$$\mathbb{P}(\hat Y\leq y) = \mathbb{P}(F^{-1}(X)\leq y) = \mathbb{P}(X\leq F(y)) = F(y)$$
{{< /mathjax >}}

So $\hat Y$ and $Y$ have the same distribution.

When $F(y)$ is only non-decreasing, like there are some parts on $\mathbb{R}$ have zero probability. Then we can define the generalized inverse $F^{-1}$ as:

{{< mathjax >}}
$$F^{-1}(u) = \inf \{x: F(x)\geq u\}$$
{{< /mathjax >}}

Then we have:

{{< mathjax >}}
$$F(F^{-1}(u)) \geq u \ ; \ F^{-1}(F(x)) \leq x$$
{{< /mathjax >}}

So: $\{(u,x) : F^{-1}(u)\leq x\} = \{(u,x) : F(x)\geq u\}$. And:

{{< mathjax >}}
$$\mathbb{P}(F^{-1}(X) \leq y) = \mathbb{P}(X \leq F(y)) = F(y)$$
{{< /mathjax >}}

q.e.d.

{{< /fold>}}

### Box-Muller method for Gaussian Random Variables

The core is the identity of the variable substitution:

{{< mathjax >}}
$$\frac 1 {2\pi} e^{-\frac {x_1^2+x_2^2} 2} \td x_1 \td x_2 = \frac {\td \theta} {2\pi} \cdot e^{-r^2/r} r\td r$$
{{< /mathjax >}}

So , $\td \theta/2\pi$ is the unit of $\mathcal{U}([0,2\pi])$ , and $e^{-r^2/2}r\td r$ corresponds to the distribution of $F(r) = 1-e^{-r^2/2}$ . So the Gaussian Random Variable can be generated with the following manner:

{{< mathjax >}}
$$Z = R \cos \Theta \ ; \ R=\sqrt{-2\log X} , \Theta = 2\pi Y \ X,Y\sim \mathcal{U}([0,1])$$
{{< /mathjax >}}

### Acceptance-Rejection Method

This is another general methodology to sample arbitrary Random Variables. To generate random variables with density $0\leq p(x)\leq d$ and $a\leq x\leq b$, the algorithm is:

_[Algorithm]_ : To generate $X$ of density $p(x)$:
1.  Generate $X_i \sim \mathcal{U}([a,b])$
2.  Generate a decision-making $Y_i \sim \mathcal{U}([0,d])$
3.  If $0\leq Y_i\leq p(X_i)$ , accept $X_i$; otherwise, reject
4.  Back to step 1.

{{< fold "Proof">}}

The procedure generates a uniformly distribution on $A=\{(x,y):x\in[a,b], y\in[0,p(x)]\}$ . So the $X$-marginal distribution

{{< mathjax >}}
$$\hat p(x) = \int_0^{p(x)}1 \td y = p(x)$$
{{< /mathjax >}}

q.e.d.

{{</fold>}}

For the unbounded random variables, we should introduce more comparison functions. The algorithm is:

_[Algorithm]_ : Generate the unbounded $X\sim p(x)$:

1.  Generate $X_i = F^{-1}(A Z_i)$ where $Z_i \sim \mathcal{U}([0,1])$
2.  Generate decision-making $Y_i \sim\mathcal{U}([0,f(X_i)])$
3.  If $0\leq Y_i \leq p (X_i)$ , accept $X_i$; otherwise reject.
4.  Back to Step 1.

Where $f(x)$ is a curve which lies everywhere above the density $p(x)$, and $A = \int_{-\infty}^{\infty} f(x)\td x$ , $F(x) = \int_{-\infty}^x f(x)\td x$

{{< fold "Proof">}}

The probability of $X_i$ lies in interval $[x,x+\td x]$ is:

{{< mathjax >}}
$$\mathbb{P}(X_i\in[x,x+\td x]) = \mathbb{P}(Z_i \in [\frac {F(x)} A , \frac {F(x+\td x)} {A}])\mathbb{P}(\text{accept}) = \frac 1 A f(x)\td x \cdot \frac {p(x)} {f(x)} = \frac 1 A  p(x)\td x$$
{{< /mathjax >}}

q.e.d.

{{< /fold >}}
