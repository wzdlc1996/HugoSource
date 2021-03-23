---
title: "Quantum Machine Learning"
date: 2020-12-19T14:16:00+08:00
lastmod: 2020-02-10T18:00:00+08:00
draft: true
tags: ["quantum"]
categories: ["Reviews"]
toc: true
summary: "Quantum machine learning is the integration of quantum algorithms within machine learning programs. Generally, we have four different approaches for this purpose, by the type of data (quantum state/data or classical data) and type of algorithm or platform (quantum algorithm/computer or classical algorithm/computer). In this report, we will discuss the current state of quantum machine learning, and the potential application and further development in the NISQ(Noisy Intermediate-Scale Quantum) era."
---

# Data Science and Machine Learning

Formally, **Data science** is an **inter-disciplinary** field that uses scientific methods, processes, algorithms and systems to extract **knowledge** and insights from many structural and unstructured data[Wikipedia/Data_science](1). The core object of research in this field is data for the goal of knowledge. This approach is different from research of theoretical study like geometry by deductive reasoning. A nice example is [Kepler's Law](2), here we list two approaches to it in the following to show the difference between two paradigm.

1.  **Kepler type**
    -  Analyze the data from Tycho
    -  Summarize the pattern of data in simple way(the first and second law, Occam's razor)
    -  Fit the data and generalize the quantitative rule(the third law)
2.  **Newton type**(also used in the modern textbook)
    -  Admit some axioms of the system(Newton's law)
    -  With mathematical approach write the equation and solve it
    -  Discuss the properties of the solution

We call the Kepler type **data-driven**, and this paradigm is the core of data science.

Roughly speaking, there are three parts for data science: data collection, data storage, and learn from data. Though the other two are also important, our main goal here is the last one. The algorithm for this purpose is **Machine Learning**. Most machine learning tasks can be classified into the following three frameworks.

1.  **Supervised learning**
    
    -  Data: a set of input $x$ and its label $y$ $\{x_i, y_i\}_{i=1}^N$
    -  Goal: find a model for the map from $x$ to $y$ of $y = f(x;\theta)$

    There are two main applications to supervised learning: regression (continuous $y$) and classification (discretized $y$)

2.  **Unsupervised learning**

    -  Data: a set of input $x$, without labels. $\{x_i\}_{i=1}^N$
    -  Goal: find the hidden patterns or grouping data.

    Dimensionality reduction, clustering, generative modeling. 

3.  **Reinforcement learning**

    -  Data: delayed feedback signal(reward) after action. Like the win/lose in a chess game
    -  Goal: learning an optimal policy(i.e. how to act). Like learn how to play a chess game

Though we list these classes of machine learning, the modern development are not distinct in this level. To solve the complex problems in the real-world we need the cooperation of different technologies for their own parts. To classify such the mixed projects are difficult and meaningless. As a popular and growing technology, there will be many new contents enter the field of machine learning. Just open your mind and be prepared.

# Quantum Tech to Data Science

Quantum technology has been one of the most important concepts in the world now. Some people call the control and application of the quantum systems [the Second Quantum Revolution](3), to distinguish against the establishment of quantum mechanics in the early 20th century. To data science, the impact of quantum tech is well described by the following figure from [wiki/Quantum-machine-learning](4).

{{< center >}}<img name="preview" src="./Figs/img01.png"/>{{< /center >}}

As quantum tech comes into our sight, a new type of data now is needed to be considering. Classical data is encoded by classical physical systems and its values are deterministic at each stage of processing. The information we touch in the daily life are all classical data, like this report, logical variables by whether voltage in the wire of computer is greater than a threshold or not, and much other analog data. Quantum data is encoded by quantum systems. Like the entities in the Hilbert space(the state of qubit), such data is quiet different from the classical one especially in the read/write rule. By the high representability of digits, we can still simulate the quantum data on classical computer. But since the dimension of Hilbert space (amounts of quantum variables) are exponential to the number of classical variables, this approach is incapably expensive. 

Another aspect of the figure above is the type of algorithm. It is not only means the software we handle the data, but also the hardware we used to implement the program. This part contains the storage and processing. The former is qubits and quantum gates, which has been proved to be universal to simulate any quantum system and their evolution, just like the classical bits and classical gates. However, the quantum nature of qubits makes it possible to handle quantum data with polynomial scaling cost(if we can prepare and hold the qubits as easy as we do for classical bits in the sense of scaling). The latter concept (processing), i.e. algorithm or software, is the analog of the classical algorithm and programs running on the classical computer. There are two paradigms for quantum algorithm, one can be represented as the combination of a set of quantum gates,  while the other way is based on the adiabatic theorem ([wiki/Adiabatic-quantum-computation](5)). These two approaches has been proved to be equivalent ([D.Aharonov 2005](6), [H.Yu 2018](7)). 

# Quantum Speedup for Classical Machine Learning

Quantum computing has been proven significantly more powerful than classical machine on certain problems. In the past decades, the theory about hardware (architecture) of quantum processor and software (algorithm) on quantum computer have been rapidly developed. Though currently, there are still experimental issues as barriers between us and large scale quantum computer, the theoretical preparation for applying quantum technology on machine learning has been sort of made. In this section, we focus on the quantum speedup for classical machine learning, i.e., the outperformance of quantum algorithm in the field of classical machine learning.

## Essential Techs for Applied Quantum Computing

There are two essential technologies required in quantum machine learning. One is the **quantum Random Accessible Memory**, which is usually mentioned as the hardware, and the other is the **quantum linear algebra algorithms** in software level. The former might be suspected to be essential, since there are actually many quantum machine learning algorithms that is free from qRAM. Recently, some new approaches have been studied for handling classical data in a quantum machine like quantum embedding ([S. Lloyd 2020](8)) and quantum feature map ([V. Havlicek 2018](9)). However, as a generic I/O layer of quantum machine learning, it is still valuable to discuss it mathematical here.

### Quantum I/O: qRAM

In classical machine learning, we store the dataset as $N$ $d$-vectors of $\{x_i\}_{i=1}^N$ where $x_i = (x_i^1,\cdots,x_i^d) \in\mathbb{R}^d$. The **quantum Random Accessible Memory(qRAM)** allow us to handle the data on a quantum computer just like we do on classical computer with RAM. Mathematically, qRAM implements the map of ([C. Ciliberto 2017](10))

$$
\{x_i\}_ {i=1}^N \mapsto \ket{x} = \frac 1 {\mathcal{A}}\sum_{i,d} x_i^d \ket{i, d}.
$$

i.e., encodes the $N\times d$ dataset on $\log Nd$ qubits. Then the left hand side coherent superposition state can be used in the unitary evolution along the circuit in quantum computer or other quantum devices. 

### Quantum Linear Algebra

## Quantum Machine Learning Algorithms

### Quantum SVM

**Support Vector Machine(SVM)** is one of the most important classical learning algorithm mainly for data classification. One of its advantages is that we understand how it works better than most black-box algorithms. 

The training set has $M$ data points as $D=\{(x_j; y_j), x_j\in \mathbb{R}^d, y_j =\pm 1\}$. SVM tries to find a maximum-margin hyperplane with normal vector $w\in \mathbb{R}^d$ that divides these points into two classes. Formally, the point $x$ should be separated by the value of $w\cdot x + b$. If $w\cdot x + b \geq 1$, then this point is of class $y = 1$. While $w\cdot x + b \leq -1$ it should be of $y=-1$. Samples on the margin (i.e. $w\cdot x+b=\pm 1$ are usually called **support vectors**) The SVM training is to find parameters $w, b$ such that

$$
\forall (x_j; y_j) \in D : y_j(w\cdot x_j + b) \geq 1 .
$$

and makes the distance between these two classes distant largely enough, i.e., maximize $2/\|w\|$. Thus, the optimization form of SVM training reads

$$
\min_{w, b} \frac 1 2 \|w\|^2 \ \textrm{ s.t. } y_i(w\cdot x_i+b)\geq 1, i=1,\cdots,N 
$$

{{< center >}}<img name="preview" src="./Figs/img_svm.png"/>{{< /center >}}

{{< fold "Note: Solution of SVM and time complexity" >}}

With $y_i(w\cdot x_i+b) \geq 1$ being linear constraint for $w$ and $b$, the training of SVM is actually a convex optimization problem. The Slater's condition for convex optimization problem reads ([Stephen Boyd's textbook](https://web.stanford.edu/~boyd/cvxbook/bv_cvxbook.pdf))

> Given convex optimization problem:
$$
\begin{aligned}
\textrm{minimize}\indent & f(x)\\
\textrm{subject to }\indent & u_i(x) \leq 0 \ , \ i=1,\cdots,m \\
&v_i(x) = 0 \ , \ i=1,\cdots, p
\end{aligned}
$$
in which $f, u_i$ are **convex function**, equality constraint functions $v_i(x) = a_i\cdot x + b_i$ are **affine**. 
**Slater's condition** holds iff there exists an $x$ such that:
$$
u_i(x) \lt 0 \ , \ i=1,\cdots,m \ ; \ v_i(x) = 0 \ , \ i=1,\cdots,p
$$
**Slater's theorem** states that 
$$
\textrm{Slater's condition holds} \Rightarrow \textrm{Strong duality holds}
$$
i.e., the minimization of origin problem (primal problem) equals to the maximization of (Lagrangian) dual problem, which reads
$$
\begin{aligned}
\textrm{maximize}\indent & g(\lambda, \nu) = \inf_x L(x,\lambda,\nu)\\
\textrm{subject to} \indent & \lambda_i \leq 0 \ , \ i = 1,\cdots,m\\
\end{aligned}
$$
(note that the infimum does not constrain $x$) in which
$$
L(x,\lambda,\nu) = f(x) - \sum_{i=1}^m\lambda_i u_i(x) - \sum_{i=1}^p\nu_i v_i(x)
$$
is the Lagrangian of primal problem. 

An important relation between the optimal of primal problem and dual problem is that: if strong duality holds and a dual optimal solution $(\lambda^*,\nu^ *)$ exists, then $\forall x \in F=\{x:u_i(x) \leq 0, v_i(x)=0\}: \lambda_i u_i(x) \geq 0, \nu_i v_i(x)=0$. Thus

$$
\inf_x L(x,\lambda^ *, \nu^ *) = \min_{x\in F} f(x)\Rightarrow x^ * = \argmin_ {x\in F} f(x) = \argmin_ {x} L(x,\lambda^ *,\mu^ *)
$$

That is, solving the dual problem freely gives us the optimal of primal problem. 

Now let us consider the optimization problem of SVM training. The objective function $\|w\|^2/2$ is convex, while the inequality constraints $1-y_i(w\cdot x_i+b)\leq 0$ are all convex. Thus, we can use Slater's theorem to demonstrate the training has strong duality (Only few support vectors are at the boundary of constraints). The Lagrangian:

$$
\begin{aligned}
L(w,b,\lambda) &= \frac 1 2 \|w\|^2 - \sum_{i=1}^N\lambda_i (1-y_i(w\cdot x_i+b)) \\
\Rightarrow g(\lambda) &= \inf_{w\in \mathbb{R}^d, b\in \mathbb{R}}L(w,b,\lambda) = -\sum_{i=1}^N \lambda_i - \frac 1 2 \sum_{i,j=1}^N \lambda_i\lambda_j y_iy_j (x_i\cdot x_j)
\end{aligned}
$$

in which we optimize of quadratic from of $L(w,b,\lambda)$ with respect to $w,b$ by

$$
\begin{aligned}
\frac {\partial L} {\partial w}\Bigg|_{w=w^*} = 0 &\Rightarrow w^ * = -\sum_{i=1}^N \lambda_i y_i x_i \\
\frac {\partial L} {\partial b}\Bigg|_{b=b^*} = 0 &\Rightarrow 0 = \sum_i \lambda_i y_i
\end{aligned}
$$

Then, primal optimization problem now transforms as dual problem:

$$
\begin{aligned}
\textrm{maximize} \indent & -\frac 1 2 \lambda^T \bm{K} \lambda - 1^T \lambda \\
\textrm{subject to} \indent & \lambda_i \leq 0 \ , \ i=1,\cdots,N \\
& y \cdot \lambda = 0
\end{aligned}
$$

in which, $(\bm{K})_{i,j} = y_i y_j (x_i\cdot x_j)$, $y=(y_1,\cdots,y_N)^T$, and $1=(1,\cdots,1)^T$

The time complexity of classical training is made up with the following three steps:

1.  $\mathcal{O}(N^2d)$. Construction of the dual problem: $\mathcal{O}(N^2)$ times inner product for $d$-vectors
2.  $\mathcal{O}(N^3)$. For the convex quadratic programming. It can be accordingly faster with ([D. Coppersmith 1990](13))
3.  $\mathcal{O}(Nd)$. For the recovery of $w,b$ from dual optimal.

Thus, the total time complexity is of $\mathcal{O}(N^2(d+ N^\delta))$. The reason why use dual form but not primal form is to be capable to kernel tricks: replace $x_i\cdot x_j$ into $k(x_i,x_j)$ for nonlinear support.

{{< /fold >}}

In ([P. Rebentrost 2014](14)), the quantum speedup of SVM for big data classification is introduced. 


### Quantum PCA

### Quantum Neural Networks

# Quantum Machine Learning for Quantum Data

[1]: https://en.wikipedia.org/wiki/Data_science
[2]: https://www.sciencedirect.com/topics/engineering/keplers-law
[3]: https://www.nist.gov/topics/physics/introduction-new-quantum-revolution/second-quantum-revolution
[4]: https://en.wikipedia.org/wiki/Quantum_machine_learning
[5]: https://en.wikipedia.org/wiki/Adiabatic_quantum_computation
[6]: https://arxiv.org/abs/quant-ph/0405098
[7]: https://arxiv.org/abs/1706.07646
[8]: https://arxiv.org/abs/2001.03622
[9]: https://arxiv.org/abs/1804.11326
[10]: https://royalsocietypublishing.org/doi/pdf/10.1098/rspa.2017.0551
[11]: https://arxiv.org/abs/1307.0411
[12]: https://web.stanford.edu/~boyd/cvxbook/bv_cvxbook.pdf
[13]: https://www.sciencedirect.com/science/article/pii/S0747717108800132?via%3Dihub
[14]: https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.113.130503