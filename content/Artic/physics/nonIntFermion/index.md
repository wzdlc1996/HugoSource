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

# Quantum Statistical Mechanics

# Quantum Entanglement

# Some Properties of Fermionic Thermal States

# Fermionic Fields

