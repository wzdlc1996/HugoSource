---
title: "Perturbation Theory"
date: 2018-12-03T13:24:17+08:00
lastmod: "2018-12-12T13:38:00+08:00"
draft: false
tags: ["quantum","approximation"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
summary: "The perturbation theory for quantum mechanics. This is a useful method on solve some problems which we cannot handle it analytically"
---
# Time-Independent Perturbation Theory

## Nondegenerate Perturbation Theory: The Goal

Given a Hamiltonian $\hat H_0$ with `nondegenerate` energy eigenvalues $E_n^{(0)}$ and eigenstates $\ket{E_n^{(0)}}$ , where $n=0,1,\cdots$ . Compute the eigenvalues and eigenstates of $\hat H= \hat H_0+\lambda \hat V$ , `in terms of series of the "small parameter"` $\lambda$

Under the basis $\{\ket{E_n^{(0)}}\}$ , $\hat H_0$ is diagonal matrix, and $\hat V$ is a generic one. The diagonal elements of $\hat V$ will cause the shift of energy without changing the eigenstates; off-diagonal elements mixes eigenstates and shift the energy.

Usually we will find that the off-diagonal elements of $\hat V$ cause the `level-repulsion` , that is to say adding the off-diagonal elements tends to increase the energy gap.

_[Assumption]_ : Assume that $\lambda$ is sufficiently small, so that $\ket{n,\lambda}$ of $\hat H$ is adiabatically connected to $\ket{E_n^{(0)}}$ . And we can write the (`asymptotical`) series expansion of the eigenstates and eigenvalues:


$$\begin{aligned}
E_n &= E_n^{(0)} + \lambda E_n^{(1)} + \lambda^2 E_n^{(2)} + \cdots \\
\ket{n,\lambda} &= \ket{E_n^{(0)}} + \lambda \ket{E_n^{(1)}} + \lambda^2 \ket{E_n^{(2)}} + \cdots
\end{aligned}$$


Note the $\ket{n,\lambda}$ here is `NOT` normalized. And $\ket{E_n^{(k\gt 0)}}$ are orthogonal to $\ket{E_n^{(0)}}$ .

## Formal Perturbation Expansion

We define some `projection operators` :


$$\begin{aligned}
\hat P &= \ket{E_n^{(0)}}\bra {E_n^{(0)}} \\
\hat Q &= 1 - \hat P = \sum_{m,m\neq n} \ket{E_m^{(0)}}\bra{E_m^{(0)}} \\
\end{aligned}$$


They have such properties: $[\hat H,\hat P]=[\hat H,\hat Q]=0$ , and $\hat H\hat P = E_n^{(0)}\hat P, \hat P\hat Q=0$ .

Consider the eigenstate of $\hat H=\hat H_0+\lambda \hat V$ : $\hat H\ket{n,\lambda}=E_n\ket{n,\lambda}$ , with $\ket{n,\lambda}=\hat P\ket{n,\lambda}+\hat Q\ket{n,\lambda}$ :


$$(E_n-\hat H_0)\hat Q \ket{n,\lambda} = (E_n^{(0)}-E_n)\hat P \ket{n,\lambda} + \lambda \hat V \ket{n,\lambda} $$


Apply $\hat Q$ on both side we have: $\hat Q (E_n-\hat H_0)\hat Q \ket{n,\lambda}=\lambda \hat Q \hat V\ket{n,\lambda}$. Its eigenvalues are $E_n-E_{m\neq n}^{(0)}$. Assuming they are not zero, we have the "inverse" of it: $\hat G = \hat Q (E_n-\hat H_0)^{-1}\hat Q$ . Then we can solve the perturbation as:


$$\hat Q \ket{n,\lambda} = \lambda \hat G \hat Q \hat V \ket{n,\lambda} = \lambda \hat G \hat V\ket{n,\lambda}$$


Then we have the solution of eigenstate $\ket{n,\lambda}$:


$$\begin{aligned}
\ket{n,\lambda} &= \hat P \ket{n,\lambda} + \lambda \hat G \hat V \ket{n,\lambda} \\
& \Rightarrow \ket{n,\lambda} = (1-\lambda \hat G \hat V)^{-1}\hat P \ket{n,\lambda} = \sum_{k=0}^{\infty} \lambda^k (\hat G \hat V)^k \hat P \ket{n,\lambda} \\
& (E_n-E_n^{(0)}) \bra{n,\lambda}\hat P \ket{n,\lambda} = \bra{n,\lambda} \lambda \hat P \hat V \ket{n,\lambda}
\end{aligned}$$



Where $\hat P \ket{n,\lambda} \propto \ket{E_n^{(0)}}$ , usually we just choose they are `EQUAL`, and the finally normalize it.

And the new eigenvalue can be obtained by apply $\bra{n,\lambda}\hat P$ on both side of the eigen equation, with $\hat P \hat H_0 \hat Q =\hat P \hat Q=0$:

$$(E_n-E_n^{(0)})\bra{n,\lambda}\hat P \ket{n,\lambda} = \lambda \bra{n,\lambda} \hat P \hat V \ket{n,\lambda}$$


## Formal Perturbation Expansion: Summary

We have the following perturbation expansion:


$$\begin{aligned}
\ket{n,\lambda}=(1-\lambda \hat G \hat V)^{-1}\hat P_n \ket{n,\lambda} &= \sum_{k=0}^{\infty} \lambda^k (\hat G_n \hat V)^k \ket{E_n^{(0)}} \\
(E_n-E_n^{(0)})\bra{n,\lambda}\hat P_n \ket{n,\lambda} &= \lambda \bra{n,\lambda} \hat P_n \hat V \ket{n,\lambda}
\end{aligned}$$


Where $\hat G_n=\hat Q_n (E_n-\hat H_0)^{-1}\hat Q_n$ . They do not really solve the eignestates and eigenvalues in terms of known quantities, for $E_n$ is unknown but contained by $\hat G_n$.

1.  First order perturbation:

    
    $$\begin{aligned}
    \ket{n,\lambda} &= \ket{E_n^{(0)}} + \mathcal{O}(\lambda) \\
    E_n &= E_n^{(0)} + \lambda \bra{E_n^{(0)}}\hat V \ket{E_n^{(0)}} + \mathcal{O}(\lambda^2)
    \end{aligned}$$


    Here the energy is up to $\mathcal{O}(\lambda^2)$ but state-vector is up to $\mathcal{O}(\lambda)$ . This is caused by that energy is the quadratic form of state-vector.

2.  Second order perturbation:

    
    $$\begin{aligned}
    \ket{n,\lambda} &= \ket{E_n^{(0)}} + \lambda \sum_{m,m\neq n} \frac {\bra{E_m^{(0)}}\hat V \ket{E_n^{(0)}}} {E_m^{(0)}-E_n^{(0)}} \ket{E_m^{(0)}} + \mathcal{O}(\lambda^2) \\
    E_n &= E_n^{(0)} + \lambda \bra{E_n^{(0)}}\hat V \ket{E_n^{(0)}} + \lambda^2 \sum_{m,m\neq n} \frac {|\bra{E_m^{(0)}}\hat V \ket{E_n^{(0)}}|^2} {E_m^{(0)}-E_n^{(0)}} + \mathcal{O}(\lambda^3)
    \end{aligned}$$


    {{< fold "Proof" >}}

To compute the Second order expansion, we have:


$$\begin{aligned}
\ket{n,\lambda} &= \ket{E_n^{(0)}} + \lambda \hat G_n \hat V \ket{E_n^{(0)}} \\
&= \ket{E_n^{(0)}} + \lambda \sum_m \hat G_n \ket{E_m^{(0)}}\bra{E_m^{(0)}} \hat V \ket{E_n^{(0)}} \\
&= \ket{E_n^{(0)}} + \lambda \sum_{m,m\neq n} \frac {V_{mn}} {E_n-E_m^{(0)}} \ket{E_m^{(0)}} \\
&\approx \ket{E_n^{(0)}} + \lambda \sum_{m,m\neq n} \frac {V_{mn}} {E_n^{(0)}-E_m^{(0)}} \ket{E_m^{(0)}}
\end{aligned}$$


up to the first order of $\lambda$. And the energy:


$$\begin{aligned}
E_n-E_n^{(0)} &= \lambda V_{nn} + \bra{E_n^{(0)}} \lambda \hat V \lambda \sum_{m,m\neq n} \frac {V_{mn}} {E_n^{(0)}-E_m^{(0)}} \ket{E_m^{(0)}} \\
&=\lambda V_{nn} + \lambda^2 \sum_{m,m\neq n} \frac {V_{mn}V_{nm}} {E_n^{(0)}-E_m^{(0)}}
\end{aligned}$$


q.e.d.

    {{</fold>}}

_[Theorem]_ : The normalization factor of $\ket{n,\lambda}=(1-\lambda \hat G_n\hat V)^{-1}\ket{E_n^{0}}$ is that $\bra{n,\lambda} n,\lambda \rangle = (Z_n)^{-1} \geq 1$ , has the property that:


$$Z_n = \frac {\partial} {\partial E_n^{(0)}} E_n$$


{{<fold "Proof">}}

Firstly, we need to compute the partial derivative of $\hat G_n$ :


$$\frac {\partial} {\partial E_n^{(0)}} \hat G_n = \hat Q_n \frac {-1} {(E_n-\hat H_0)^2} \hat Q \frac {\partial E_n} {\partial E_n^{(0)}}=-\hat G_n^2 \frac {\partial E_n} {\partial E_n^{(0)}}$$


With the perturbation expansion of energy is:


$$(E_n-E_n^{(0)}) \bra{n,\lambda}\hat P \ket{n,\lambda} = \lambda \bra{n,\lambda}\hat P \hat V \ket{n,\lambda}$$


With $\bra{n,\lambda}\hat P_n \ket{n,\lambda}=(\bra{n,\lambda}\hat P_n)\hat P_n \ket{n,\lambda}=\bra{E_n^{(0)}}E_n^{(0)}\rangle = 1$, We have:


$$\begin{aligned}
\frac {\partial E_n} {\partial E_n^{(0)}} - 1 &= \lambda \bra{E_n^{(0)}}\hat V \frac 1 {\partial E_n^{(0)}} \sum_{k=0}^{\infty} \lambda^k (\hat G_n \hat V)^k \ket{E_n^{(0)}} \\
&= - \frac {\partial E_n} {\partial E_n^{(0)}} \bra{E_n^{(0)}} \hat V \sum_{k=1}^{\infty} \lambda^{k+1} \sum_{l=0}^{k-1} (\hat G_n \hat V)^l \hat G_n (\hat G_n\hat V)^{k-l} \ket{E_n^{(0)}} \\
\Rightarrow \ \Big(\frac {\partial E_n} {\partial E_n^{(0)}}\Big)^{-1} &= \sum_{k=1}^{\infty} \lambda^{k+1} \sum_{l=0}^{k-1} \bra{E_n^{(0)}} (\hat V \hat G_n)^l (\hat G_n \hat V)^{k-l} \ket{E_n^{(0)}}
\end{aligned}$$


While we have:


$$(Z_n)^{-1} = \sum_{k=0}^{\infty}\sum_{k'=0}^{\infty} \lambda^{k+k'} \bra{E_n} (\hat V \hat G_n)^{k}(\hat G_n\hat V)^{k'}\ket{E_n^{(0)})} $$


For when $k,k'=0$ , the terms vanish because of the projector. we have:


$$\begin{aligned}
(Z_n)^{-1} &= \sum_{k=1}^{\infty}\sum_{k'=1}^{\infty} \lambda^{k+k'} \bra{E_n} (\hat V \hat G_n)^{k}(\hat G_n\hat V)^{k'}\ket{E_n^{(0)})} \\
&=\sum_{k=1}^{\infty} \lambda^{k+1} \sum_{l=0}^{k-1} \bra{E_n^{(0)}} (\hat V \hat G_n)^l (\hat G_n \hat V)^{k-l} \ket{E_n^{(0)}}
=\Big(\frac {\partial E_n} {\partial E_n^{(0)}}\Big)^{-1}
\end{aligned}$$


q.e.d.

{{</fold>}}

## Degenerate Perturbation Theory

If energy level $E_n^{(0)}$ has g-fold degenerate, then we have $g$ orthonormal basis noted as $\ket{E_{n,\alpha}^{(0)}} \ ; \ \alpha=1,\cdots, g$ . The projection operators are defined as:


$$\begin{aligned}
\hat P_n &= \sum_\alpha \ket{E_{n,\alpha}^{(0)}}\bra{E_{n,\alpha}^{(0)}} \\
\hat Q_n &= 1- \hat P_n
\end{aligned}$$


The formal expansion are the same, but $\hat P_n \ket{n,\lambda} = \sum_{\alpha} c_\alpha \ket{E_{n,\alpha}^{(0)}}$ . Where $c_\alpha$ are unknown coefficients. Then we have the result with these unknown coefficients, together with another equation to determine them:


$$\begin{aligned}
\ket{n,\lambda} = (1-\lambda \hat G_n \hat V)^{-1} \hat P_n \ket{n,\lambda} &= \sum_{k=0}^{\infty} \lambda^k (\hat G_n\hat V)^k \sum_{\alpha=1}^g c_\alpha \ket{E_{n,\alpha}^{(0)}} \\
(E_n-E_n^{(0)}) c_\alpha &=  \sum_{k=0}^{\infty} \sum_{\beta=1}^g \bra{E_{n,\alpha}^{(0)}} \hat V\lambda^{k+1}(\hat G_n\hat V)^k \ket{E_{n,\beta}^{(0)}} c_\beta
\end{aligned}$$


The second equation usually is called `secular equation` . It requires that the determinate is zero, which can determine $E_n$ and $c_\alpha$ .

1.  First order perturbation:

    
$$\ket{n,\lambda} = \sum_{\alpha} c_\alpha \ket{E_{n,\alpha}^{(0)}}+\mathcal{O}(\lambda)$$


    And the energy shift and $c_\alpha$ can be obtained by the equation:

    
$$(E_n-E_n^{(0)})c_\alpha = \lambda \sum_{\beta=1}^g V_{n,\alpha;n,\beta} c_\beta+\mathcal{O}(\lambda^2)$$


    up to $\lambda^2$ , where $V_{n,\alpha;m,\beta}=\bra{E_{n,\alpha}^{(0)}}\hat V \ket{E_{m,\beta}^{(0)}}$

2.  Second order perturbation:

    
    $$\ket{n,\lambda} = \sum_{\alpha} c_\alpha\Big( \ket{E_{n,\alpha}^{(0)}} + \sum_{m,m\neq n} \frac {\lambda V_{m,n\alpha}} {E_n-E_m^{(0)}} \ket{E_m^{(0)}} \Big) + \mathcal{O}(\lambda^2)$$


    And $c_\alpha, E_n$ can be obtained by:

    
    $$(E_n-E_n^{(0)})c_\alpha = \sum_{\beta=1}^g \Big(\lambda V_{n,\alpha;n,\beta}+ \sum_{m,m\neq n} \frac {\lambda^2V_{n,\alpha;m}V_{m;n,\beta}} {E_n^{(0)}-E_m^{(0)}} \Big) c_\beta + \mathcal{O}(\lambda^3)$$


_[Theorem]_ : if the first order perturbation has `completely` remove the degeneracy, we can use `normalized` $c_\alpha$, namely $\sum_\alpha |c_\alpha|^2=1$ from 1st perturbation here to compute the energy shift, and:


$$E_n-E_n^{(0)} = \sum_{\alpha,\beta=1}^g \Big(\lambda V_{n,\alpha;n,\beta}+ \sum_{m,m\neq n} \frac {\lambda^2V_{n,\alpha;m}V_{m;n,\beta}} {E_n^{(0)}-E_m^{(0)}} \Big) c_\alpha^* c_\beta + \mathcal{O}(\lambda^3)$$


{{< fold "Proof" >}}

In the 1st perturbation, we actually solve the coefficients by the equation $\bm{V} \bm{c} = \Delta \bm{c}$, where $\bm{c}=(c_\alpha)^T, \bm{V}=\lambda(V_{n,\alpha;n,\beta}) , \Delta = E_n-E_n^{(0)}$.

The 1st perturbation can completely remove the degeneracy means that this equation has $g$ different solution, namely matrix $\bm{V}$ has $g$ different eigenvalues $\Delta$ .

In the following order perturbation we need to solve the equation $\Delta' \bm{c}'=( \bm{V}+\lambda \bm{W}) \bm{c}'$ , or the matrix $\bm{V}+\lambda \bm{W}$ 's eigenvectors and eigenvalues, this is a nondegenerate perturbation question.

Its first order perturbation result is that $\bm{c}'=\bm{c}+\mathcal{O}(\lambda)$ , with $\bm{c}$ normalized, we have:


$$\Delta' = \Delta + \lambda \bm{c}^\dagger \bm{W} \bm{c} + \mathcal{O}(\lambda^2\|\bm{W}\|)$$


That is:


$$E_n-E_n^{(0)} = \bm{c}^\dagger \Big(\lambda V_{n,\alpha;n,\beta}+ \sum_{m,m\neq n} \frac {\lambda^2V_{n,\alpha;m}V_{m;n,\beta}} {E_n^{(0)}-E_m^{(0)}} \Big)\bm{c} + \mathcal{O}(\lambda^3)$$


q.e.d.

{{< /fold >}}

# Perturbation Expansion as Unitary Transformations

Given $\hat H=\hat H_0+\lambda \hat V$ , where $\hat H_0$ has known energy levels $E_n^{(0)}$ (may be degenerate) . Try to find a sequence of unitary transformations to remove the "off-diagonal terms"

Here "off-diagonal terms" means terms connecting eigenstates of $\hat H_0$ with different energy. Therefor the procedure only block-diagonalizes the Hamiltonian. Terms (diagonal and off-diagonal) connecting eigenstates of $\hat H_0$ with the same energy, namely the matrix in the secular equation of degenerate perturbation theory, will be produced.

Define the projector $\hat P_n$ projecting onto $E_n$ subspace. Then $1=\sum_n \hat P_n$ , and define $\hat V_{nm}=\hat P_n\hat V\hat P_m$ . Then we have: $[\hat H_0,\hat V_{nm}]=(E_n^{(0)}-E_m^{(0)})\hat V_{nm}$ , for $\hat H_0\hat P_n=\hat P_n\hat H_0=E_n^{(0)}\hat P_n$ .

Consider $\hat H^{(1)}=e^{\ti\lambda \hat S_0}\hat H e^{-\ti\lambda \hat S_0}$ , by Baker-Hausdorff formula:


$$\hat H^{(1)}=\hat H_0 + \lambda([\ti\hat S_0,\hat H_0]+\hat V)+\lambda^2\Big(\frac 1 2 [\ti\hat S_0,[\ti\hat S_0,\hat H_0]]+[\ti\hat S_0,\hat H_0]\Big)+\cdots$$


we want to cancel $\hat V_{nm}$ terms with $n\neq m$ in $\hat H$ up to the order $\lambda$ , that is to say we need $[\ti\hat S_0,\hat H_0]+\sum_{n\neq m}\hat V_{nm}=0$ . the solution is: $\ti\hat S_0=\sum_{n\neq m} (E_n^{(0)}-E_m^{(0)})^{-1}\hat V_{nm}$ .

Then we have:


$$\begin{aligned}
\hat H^{(1)} &= \hat H_0+\lambda \sum_n \hat V_{nn} +\lambda^2 \Big(-\frac 1 2 [\ti\hat S_0,\sum_{n\neq m}\hat V_{nm}]+\lambda^2[\ti\hat S_0,\hat H_0] \Big)+\mathcal{O}(\lambda^3) \\
&=\hat H_0 + \lambda \sum_n \hat V_{nn} +\lambda^2 \sum_{n\neq m} \frac {\hat V_{nm}\hat V_{mn}} {E_n^{(0)}-E_m^{(0)}}
\end{aligned}$$


Which is the 2nd perturbation result.

And this procedure can also be carried out to arbitrary order of $\lambda$ , using the unitary transformations with generators of different order of $\lambda$ to cancel the off-diagonal elements of the Hamiltonian with the last order.

# Time-Dependent Perturbation Theory

## The Interaction Picture

Given the Schrodinger Picture time-dependent Hamiltonian: $\hat H_S(t)=\hat H_0+\hat V_S(t)$ , where $\hat H_0$ is independent of time, the time evolution is:


$$\ti\hbar \frac {\td} {\td t} \ket{\psi(t)}_S = \Big(\hat H_0+\hat V_S(t)\Big)\ket{\psi(t)}_S$$


_[Definition]_ : `Interaction Picture` is the the Schrodinger Picture with an unitary transformation:


$$\begin{aligned}
\ket{\psi}_I &= e^{\ti\hat H_0 t/\hbar }\ket{\psi}_S \\
\hat O_I(t) &= e^{\ti\hat H_0t/\hbar} \hat O_S(t)e^{-\ti\hat H_0t/\hbar}
\end{aligned}$$


Then the expectation of observable is invariant. And the time evolution is:


$$\ti\hbar \frac {\td} {\td t} \ket{\psi(t)}_I = \hat V_I(t)\ket{\psi(t)}_I$$


Then the time evolution operator in the interaction picture: $\ket{\psi(t)}_I = \hat U_I(t)\ket{\psi(t=0)}_I$ can be write as the Dyson series:


$$\hat U_I(t)=1+\frac {-\ti} {\hbar}\int_{t_1=0}^t \hat V_I(t_1)\td t_1 + \big(\frac {-\ti} {\hbar} \big)^2 \int_{t_1=0}^t \int_{t_2=0}^{t_1}\hat V_I(t_1)\hat V_I(t_2)\td t_1\td t_2+\cdots$$


If the time evolution operator in Schrodinger picture is $\hat U_S(t)$ , we have the relation:


$$\hat U_I(t)=e^{\ti \hat H_0 t/\hbar} \hat U_S(t)$$


{{< fold "Proof" >}}

We have:


$$\ket{\psi(t)}_I = e^{\ti \hat H_0 t/\hbar} \ket{\psi(t)}_S = \hat U_I(t)\ket{\psi(t=0)}_I = \hat U_I(t)\ket{\psi(t=0)}_S$$


That is:


$$\ket{\psi(t)}_S = e^{-\ti \hat H_0 t/\hbar} \hat U_I (t)\ket{\psi(t=0)}_S$$


Then:


$$\hat U_S(t)=e^{-\ti \hat H_0 t/\hbar} \hat U_I(t)$$


q.e.d.

{{< /fold >}}

_[Definition]_ : `transition probability` : let $\ket{i}$ and $\ket{f}$ be normalized eigenstates of $\hat H_0$ respect to energy $E_i,E_f$ . Start at state $\ket{i}$ at $t=0$ , evolve over time $t$ , the prabability of final state $\ket{f}$ is :


$$\mathbb{P}_{i\rightarrow f}(t) = |\bra{f}\hat U_S(t)\ket{i}|^2 = |\bra{f}\hat U_I(t)\ket{i}|^2$$


Here we can compute the transition probability order by order by the order-by-order computation of Dyson series for $\hat U_I$ . The generic expression is:


$$\bra{f}\hat U_I(t)\ket{i} = \bra{f}i\rangle + \frac {-\ti} \hbar \int_{t_1=0}^t e^{\ti(E_f-E_i)t_1/\hbar} V_{fi}(t)\td t_1 +\cdots$$


{{< fold "Proof" >}}

The expression in the definition is caused by the $e^{\ti \hat H_0 t/\hbar}$ will just contribute a phase factor, which will not change the probability.

Firstly we compute the probability amplitude:


$$\bra{f}\hat U_I(t)\ket{i} = \bra{f}i\rangle + \frac {-\ti} \hbar \int_{t_1=0}^t \bra{f}\hat V_I(t)\ket{i}\td t_1 + \Big(\frac {-\ti} {\hbar}\Big)^2 \int_{t_1=0}^t \int_{t_2=0}^{t_1}\bra{f}\hat V_I(t_1)\hat V_I(t_2)\ket{i}\td t_1\td t_2 + \cdots$$


We can re write the function in the integral by $\hat V_I(t)=e^{\ti \hat H_0 t/\hbar}\hat V_S(t)e^{-\ti \hat H_0 t/\hbar}$ :


$$\begin{aligned}
\bra{f}\hat V_I(t)\ket{i} &= (e^{-\ti \hat H_0 t/\hbar} \ket{f},\hat V_S(t)e^{-\ti \hat H_0 t/\hbar}\ket{i}) = e^{\ti(E_f-E_i)t/\hbar} V_{fi}(t) \\
\bra{f}\hat V_I(t_1)\hat V_I(t_2)\ket{i} &= \sum_{E,a}\bra{f}\hat V_I(t_1)\ket{E,a}\bra{E,a}\hat V_I(t_2)\ket{i}=\sum_{E,a}e^{\ti (E_f-E)t_1/\hbar} e^{\ti(E-E_i)t_2/\hbar} V_{f;E,a}(t_1)V_{E,a;i}(t_2) \\
\cdots
\end{aligned}$$


Where the index $a$ note the degeneracy of energy level : $1=\sum_{E,a}\ket{E,a}\bra{E,a}$

Then we can write the integral as:


$$\bra{f}\hat U_I(t)\ket{i} = \bra{f}i\rangle + \frac {-\ti} \hbar \int_{t_1=0}^t e^{\ti(E_f-E_i)t_1/\hbar} V_{fi}(t)\td t_1 +\cdots$$


{{< /fold >}}

## Transition Probability: Constant Perturbation

We consider the constant perturbation first, which means that $\hat V_S(t)=\hat V$ is independent of time. Then up to the first order:


$$\bra{f}\hat U_I(t)\ket{i}=\bra{f}i\rangle - \frac {\ti} {\hbar} \frac {\hbar} {\ti(E_f-E_i)}(e^{\ti(E_f-E_i)t/\hbar}-1)V_{fi}+\mathcal{O}(V^2)$$


And the probability with $\bra{f}i\rangle=0$ :


$$\mathbb{P}_{i\rightarrow f}(t) = \frac {4\sin^2\frac {E_f-E_i} {2\hbar}t} {(E_f-E_i)^2} |V_{fi}|^2$$


And the `transition rate` is defined by the average transition probability over time with long time limit. The result is also called as `Fermi's Golden Rule`:


$$\Gamma_{i\rightarrow f} \equiv \lim_{t\rightarrow +\infty} \frac {\mathbb{P}_{i\rightarrow f}(t)} {t} = \frac {2\pi} \hbar \delta(E_f-E_i)|V_{fi}|^2$$


One can also define the `decay rate` , which is the sum of $\Gamma_{i\rightarrow f}$ over all final state $f$ . And the Fermi's Golden Rule will lead that:


$$\Gamma_i = \sum_f \Gamma_{i\rightarrow f} \approx \int_E \td E \ D(E)\Gamma_{i\rightarrow f(E)} = \frac {2\pi} {\hbar} D(E_i) \big\langle \bra{E_i,a}\hat V \ket{i}\big\rangle_a $$


Where the index $a$ note the degeneracy of energy level, the average is made respecting to $a$

## Transition Probability: Harmonic Perturbation

Let us consider the harmonic perturbation, which is usually appear at the laser lattice. With:


$$\hat V_S(t) = \hat V e^{\ti \omega t} + \hat V^\dagger e^{-\ti \omega t}$$


Where $\omega$ is a nonzero real constant, $\hat V$ may not be hermitian but t-independent.

Keep up to 1st order term in the Dyson series:


$$\bra{f}\hat U_I(t)\ket{i}=\bra{f}i\rangle -\Big\{ \frac {V_{fi}} {E_f-E_i+\hbar \omega} (e^{\ti(E_f-E_i+\hbar\omega)t/\hbar}-1)+\frac {V_{fi}^\dagger} {E_f-E_i-\hbar\omega} (e^{\ti(E_f-E_i-\hbar\omega)t/\hbar}-1) \Big\}+\mathcal{O}(V^2)$$


Where $V_{fi}=\bra{f}\hat V\ket{i} \ ; \ V_{fi}^\dagger = \bra{f}\hat V^\dagger \ket{i}=V_{if}^*$ .

And the transition probability with $\bra{f}i\rangle=0$ :


$$\mathbb{P}_{i\rightarrow f}(t) = \frac {4\sin^2\frac {\Delta E+\hbar\omega} {2\hbar}t} {(\Delta E + \hbar \omega)^2} |V_{fi}|^2 +  \frac {4\sin^2\frac {\Delta E-\hbar\omega} {2\hbar}t} {(\Delta E - \hbar \omega)^2} |V_{if}^*|^2 + \frac {4\sin\frac {\Delta E+\hbar\omega}{2\hbar}t \sin\frac {\Delta E-\hbar\omega}{2\hbar}t} {(\Delta E)^2-(\hbar\omega)^2}\Big(V_{fi}^*V_{if}^*e^{-\ti\omega t}+V_{if}V_{fi}e^{\ti\omega t}\Big)$$


'Fermi's Golden Rule':


$$\Gamma_{i\rightarrow f} \equiv \lim_{t\rightarrow +\infty} \frac {\mathbb{P}_{i\rightarrow f}(t)} {t} = \frac {2\pi} {\hbar} \Big\{\delta(E_f-E_i+\hbar\omega)|V_{fi}|^2 +\delta(E_f-E_i-\hbar\omega)|V_{if}^*|^2\Big\}$$


`Detailed Balance` : note that $\Gamma_{i\rightarrow f}(\omega)=\Gamma_{f\rightarrow i}(-\omega)$ . Roughly speaking, absorption rate = emission rate. In special cases $V_{if}=V_{fi}$ , we will further have $\Gamma_{i\rightarrow f}=\Gamma_{f\rightarrow i}$

## Relation to Time-Independent Theory

Consider a standard time-independent theory question: $\hat H=\hat H_0+\hat V$ where the perturbation term $\hat V$ is independent of time. \
The `normalized` eigenstates of $\hat H_0$ are $\hat H_0\ket{\psi_n^{(0)}}=E_n^{(0)}\ket{\psi_n^{(0)}}$\
The `normalized` eigenstates of $\hat H$ are $\hat H\ket{\psi_n}=E_n\ket{\psi_n}$\
For simplicity denote $\bra{\psi_n^{(0)}}\hat V \ket{\psi_m^{(0)}}=V_{nm}$

Then with the time-independent theory we have:


$$\bra{\psi_n^{(0)}}\hat U_I(t)\ket{\psi_n^{(0)}}=e^{\ti E_n^{(0)}t/\hbar}\bra{\psi_n^{(0)}}\hat U_S(t)\ket{\psi_n^{(0)}}=\sum_m |\bra{\psi_n^{(0)}}\psi_m\rangle|^2 e^{-\ti E_m t/\hbar} e^{\ti E_n^{(0)}t/\hbar}$$


Consider non-degenerate case, $\psi_n$ has large overlap with only $\ket{\psi_n^{(0)}}$ with $Z_n=|\bra{\psi_n^{(0)}}\psi_n\rangle|^2$ :


$$\begin{aligned}
\bra{\psi_n^{(0)}}\hat U_I(t)\ket{\psi_n^{(0)}}&= Z_n e^{-\ti(E_n-E_n^{(0)})t/\hbar}+\sum_{m,m\neq n} |\bra{\psi_n^{(0)}}\psi_m\rangle|^2 e^{-\ti E_m t/\hbar}e^{\ti E_n^{(0)}t/\hbar} \\
&\approx Z_n + Z_n \frac {-\ti} \hbar (E_n-E_n^{(0)}) t + Z_n \frac 1 2 \Big(\frac {-\ti(E_n-E_n^{(0)})t} \hbar \Big)^2 +\sum_{m,m\neq n} |\bra{\psi_n^{(0)}}\psi_m\rangle|^2 e^{-\ti E_m t/\hbar}e^{\ti E_n^{(0)}t/\hbar}
\end{aligned}$$


While compute $\bra{\psi_n^{(0)}}\hat U_I(t)\ket{\psi_n^{(0)}}$ by Dyson series, up to 2nd order this is:


$$\begin{aligned}
\bra{\psi_n^{(0)}}\hat U_I(t)\ket{\psi_n^{(0)}} &= 1+\frac {-\ti} \hbar \int_{t_1=0}^t \td t_1 \ \bra{\psi_n^{(0)}}\hat V_I(t_1)\ket{\psi_n^{(0)}} + (\frac {-\ti}\hbar)^2 \int_{0}^t \td t_1 \int_0^{t_1}\td t_2 \bra{\psi_n^{(0)}}\hat V_I(t_1)\hat V_I(t_2)\ket{\psi_n^{(0)}} \\
&=\Big[1-\sum_{m,m\neq n} \frac {V_{nm}V_{mn}} {(E_n^{(0)}-E_m^{(0)})^2}\Big] + \frac {-\ti} \hbar \big(V_{nn}+\sum_{m\neq n}\frac {V_{nm}V_{mn}} {E_n^{(0)}-E_m^{(0)}}\big)t+\frac 1 2 \big(\frac {-\ti V_{nn}t} \hbar\big)^2  \\
&\indent -  \big(\frac {-\ti} \hbar\big)^2 \sum_{m\neq n} V_{nm} V_{mn} \frac {e^{\ti(E_n^{(0)}-E_m^{(0)})t/\hbar}} {\ti(E_m^{(0)}-E_n^{(0)})/\hbar \cdot \ti(E_n^{(0)}-E_m^{(0)})/\hbar}
\end{aligned}$$


Compare with these two results:


$$\begin{aligned}
E_n-E_n^{(0)} &= V_{nn}+\sum_{m,m\neq n} \frac {V_{nm}V_{mn}} {E_n^{(0)}-E_m^{(0)}} \\
Z_n&=1-\sum_{m,m\neq n} \frac {V_{nm}V_{mn}} {(E_n^{(0)}-E_m^{(0)})^2}
\end{aligned}$$


Consistent with the time-independent perturbation theory.
