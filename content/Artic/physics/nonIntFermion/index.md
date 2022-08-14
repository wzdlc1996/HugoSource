---
title: "All about Non-interacting Fermions"
date: 2022-06-27T10:41:14+08:00
lastmod: 2022-06-27T10:41:14+08:00
draft: true
tags: ["quantum","statistical-phys"]
categories: ["Reviews"]
toc: true
summary: "This is a note for commonly used conclusions about non-interacting, including partition functions, correlations, and entanglements. The note aims to offer an all-in-one references and proofs for quantum manybody physics about non-interacting fermions especially for lattice model."
---

# Non-interacting Fermions on a Lattice

In this note, we focus on the model of **non-interacting fermions** on a lattice. Generally, the Hamiltonian reads

$$
\hat H = \sum_{i, j = 1}^N K_{ij} \hat c_i^\dagger \hat c_j.
$$

The fermion operators obeys the anti-commutation relations of $\{\hat c_i, \hat c_j\} = 0 \ ; \ \{\hat c_i, \hat c_j^\dagger\} = \delta_{ij}$. By the Hermitian requirement of Hamiltonian, we have

$$
K_{ij}^* = K_{ji} \Leftrightarrow \bm{K}^\dagger = \bm{K}.
$$

The quasi-particle modes are defined by the diagonalization of matrix $\bm{K} = \bm{P}^\dagger\bm{D}\bm{P}$ and $\hat x_k = \sum_{i=1}^N \hat c_i P_{ik}$, this allows us rewrite the Hamiltonian as diagonal form

$$
\hat H = \sum_{k=1}^N \epsilon_{k} \hat x_k^\dagger \hat x_k .
$$

Note that since $\bm{K}$ is a hermitian matrix, the unitarity of $\bm{P}$ preserves the fermionic anti-commutation as $\{\hat x_i, \hat x_j^\dagger\} = \delta_{ij}$ .

{{% fold "Proof: anti-commutation rule" %}}

We check the anti-commutation rule is not broken by the unitary diagonalization matrix $\bm{P}$. We note that the anti-commutation rule for $\{\hat x_i, \hat x_j\}$ and their conjugation transpose is automatically preserved by any linear transformations that do not mix the annihilation and creation operators. 

$$
\begin{aligned}
\{\hat x_i, \hat x_j^\dagger\} &= \sum_{l, m}\{\hat c_l P_{li}, \hat c_m^\dagger P_{mj}^*\} \\
&= \sum_{l, m} \{\hat c_l, \hat c_m^\dagger\} P_{li} P_{mj}^* \\
&=\sum_{l,m} \delta_{lm} P_{li} P_{mj}^* \\
&=(\bm{P}\bm{P}^\dagger)_{ji} \\
&= \delta_{ij}.
\end{aligned}
$$

q.e.d.

{{% /fold %}}

# Quantum Statistical Mechanics

In quantum statistical mechanics, we usually focus on the expectation value of various operators on the thermal state. Usually, we care about the mixed state of free fermions with density operator

$$
\hat \rho = \frac 1 {Z} e^{-\beta \hat H} = \frac 1 Z \exp\Big(-\beta \sum_{i,j=1}^N K_{ij} \hat c_i^\dagger \hat c_j\Big).
$$

## Partition Function

The partition function of such fermionic thermal state reads

$$
\begin{aligned}
Z &= \textrm{Tr } e^{-\beta \hat H} \\
&= \prod_{k=1}^N \Big(1 + e^{-\beta \epsilon_k}\Big) \\
&= \det \Big(1 + e^{-\beta \bm{K}}\Big),
\end{aligned}
$$

where $\epsilon_k$ are spectrum of matrix $K_{ij}$.

{{% fold "Proof" %}}

With the diagonalization of Hamiltonian, the partition function reads

$$
\begin{aligned}
Z &= \textrm{Tr } e^{-\beta \hat H} \\
&= \textrm{Tr } \exp\Big(\sum_{k=1}^N -\beta \epsilon_k \hat x_k^\dagger \hat x_k\Big) \\
&= \sum_{n \in \{0, 1\}^{\otimes N}} \braket{n|\exp\Big(\sum_{k=1}^N -\beta \epsilon_k \hat n_k\Big)|n} \\
&= \sum_{n\in \{0, 1\}^{\otimes N}} \prod_{k=1}^N e^{-\beta \epsilon_k n_k} \\
&= \prod_{k=1}^N \Big(1 + e^{-\beta \epsilon_k}\Big).
\end{aligned}
$$

With the determinant of matrix, we can rewrite this result with a neater form. This can also be directly obtained with Grassmann numbers and calculus:

$$
Z = \det \Big(\bm{I}_N + \exp\Big(-\beta \textrm{diag}\{\epsilon_1, \cdots, \epsilon_N\}\Big)\Big) = \det (1 + e^{-\beta \bm{K}}).
$$

{{% /fold %}}

## Correlations and Fermi-Dirac Distribution

The simplest correlation function reads

$$
C_{ij} = \textrm{Tr} \hat c_i^\dagger \hat c_j \hat \rho.
$$

Note that the correlations of $\hat c_i \hat c_j$ or $\hat c_i^\dagger \hat c_j^\dagger$ vanish since creation/annihilation are not paired. 

The easiest two-point correlation is the number of particle at each $x$ mode. Formally, 

$$
\begin{aligned}
\braket{\hat n_k} &= \textrm{Tr} \hat x_k^\dagger \hat x_k \hat \rho \\
&= \frac 1 {1 + e^{\beta \epsilon_k}}.
\end{aligned}
$$

It generally has a diagonal form of

$$
X_{kl} = \textrm{Tr } \hat x_k^\dagger \hat x_l \hat \rho = \frac {\delta_{kl}} {1 + e^{\beta \epsilon_k}}.
$$

{{% fold "Proof" %}}

We note the partition function in particle occupation basis has the form (see proof in the last section) of

$$
Z = \textrm{Tr } e^{-\beta \hat H} = \sum_{n\in \{0, 1\}^{\otimes N}} \prod_{k=1}^N e^{-\beta \epsilon_k n_k}.
$$

Thus, we have the particle number expectation

$$
\begin{aligned}
\braket{\hat n_k} &= \frac 1 Z \textrm{Tr } \hat x_k^\dagger \hat x_k e^{-\beta \sum_l \epsilon_l \hat x_l^\dagger \hat x_l} \\
&= \frac 1 Z \frac {\partial} {\partial (-\beta \epsilon_k)} Z \\
&= -\frac 1 {\beta} \partial_{\epsilon_k} \log Z \\
&= -\frac 1 {\beta} \partial_{\epsilon_k}\sum_{l=1}^N \log \Big(1 + e^{-\beta \epsilon_l}\Big) \\
&= -\frac 1 {\beta} \frac {-\beta e^{-\beta \epsilon_k}} {1+e^{-\beta \epsilon_k}} \\
&= \frac 1 {1 + e^{\beta \epsilon_k}}.
\end{aligned}
$$

For off-diagonal terms, we note that with occupation basis:

$$
\braket{n| \hat x_k^\dagger \hat x_l e^{-\beta \sum_m \epsilon_m \hat x_m^\dagger \hat x_m}|n} = e^{-\beta \sum_m \epsilon_m n_m} \braket{n|\hat x_k^\dagger \hat x_l|n} = 0 \textrm{ if } k \neq l.
$$

It relies on that $\hat \rho$ is diagonalized with occupation basis of $x$ modes.

q.e.d.

{{% /fold %}}

With this result, we can express general two-point correlation with the matrix $\bm{P}$:

$$
C_{ij} = 
$$

{{% fold "Proof" %}}

With the transformation between $x$ and $c$:

$$
\hat x_k = \sum_i \hat c_i P_{ik}.
$$

Note $\bm{P}$ is unitary, we have

$$
\hat c_i = \sum_{k} \hat x_k (\bm{P}^{-1})_{ki} = \sum_k P^*_{ik}\hat x_k.
$$

Then substitute this into the correlation matrix:

$$
\begin{aligned}
C_{ij} &= \textrm{Tr } \hat c_i^\dagger \hat c_j \hat \rho \\
&= \textrm{Tr }
\end{aligned}
$$

{{% /fold %}}



# Quantum Entanglement

# Some Properties of Fermionic Thermal States

# Fermionic Fields

