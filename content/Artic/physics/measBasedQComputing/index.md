---
title: "Introduction to Measurement Based Quantum Computing"
date: 2022-05-19T22:16:06+08:00
draft: true
tags: ["measurement", "quantum-computing"]
categories: ["Reviews"]
summary: ""
---


# Introduction

**Measurement Based Quantum Computing (MBQC)**, or **One-way quantum computing** ( **QCc** in short with `c` denoting the term cluster state) is a
1.  Universal, all circuit can be simulated by it
2.  Operation-friendly, only single-qubit measurement.
quantum computation model. 

# Main Model

The most generic formalism for MBQC has the following procedure:

1.  **Platform** $\mathcal{C}$ has multiple qubits.
    -  I/O qubits can be parts of the platform. 
    -  Redundant qubits in principle is not necessary.
2.  **Clusterize** the platform means a standard unitary evolution to prepare the initial state:

    $$
    \ket{\psi_{\mathcal{C}}} = \hat U_{\mathcal{C}} \ket{+}^{\otimes |\mathcal{C}|}.
    $$

    The evolution generates the entanglement but can be independent of the algorithm. 
3.  **Measurement** for single qubit is applied on the platform. This outputs a set of classical data for the result of measurements $x$:

    $$
    \ket{\psi} \rightarrow \prod_j \hat P_j(x)  \ket{\psi_\mathcal{C}}.
    $$

4.  **Post-process** applies some (usually single-qubit) unitary gates on the platform according to measurement results $x$. 

    $$
    \ket{\psi} \rightarrow \hat U(x)\prod_j \hat P_j(x)  \ket{\psi_\mathcal{C}}.
    $$

There are some notes on the above procedure:

-  Step 3, 4 can be repeated adaptively in the practice. One can even introduce additional entanglement unit in the mid way (not recommended in original version). This actually enlarges the ability of MBQC by deepen it.
-  To readout the final state of I/O qubits safely, we can measure all redundant qubits making them to product state. This leads various post-processing in MBQC.
-  The clusterization allows $\hat U$ independent to the problem. This makes it can be efficiently prepared statically and friendly to some near-term system like ion-trap, cold atom, and optical array.
-  In step 3, we can implement compatible measurements parallelly. This accelerates the MBQC procedure and make it shallow. 

However, the cons of MBQC is obvious:
-  It is hard to design a MBQC algorithm. First, to design a deterministic MBQC algorithm, we need the policy $\hat U(x)$ covers all possible measurement results, which exponentially depends on the number of measured qubit
-  MBQC consume much more qubits than the circuit model. This is caused by the monotonous of entanglment (decrease) during measurement. In Ref. ([R. Raussendorf 2003][1]), the authors demonstrates that the scaling of resource is at worst polynomial as compared to the circuit model.


# Compare to Circuit Model

# Applications

# Outlook

# Reference

[1]: https://doi.org/10.1103/PhysRevA.68.022312

1.  [Robert Raussendorf, Daniel E. Browne, and Hans J. Briegel, Measurement-based quantum computation on cluster states, Phys. Rev. A 68, 022312](https://doi.org/10.1103/PhysRevA.68.022312)
1.  [Gottesman, D., Chuang, I. Demonstrating the viability of universal quantum computation using teleportation and single-qubit operations. Nature 402, 390–393 (1999). https://doi.org/10.1038/46503](https://www.nature.com/articles/46503?__hstc=13887208.d9c6f9c40e1956d463f0af8da73a29a7.1475020800048.1475020800050.1475020800051.2&__hssc=13887208.1.1475020800051&__hsfp=1773666937)
2.  [Robert Raussendorf and Hans J. Briegel, A One-Way Quantum Computer, Phys. Rev. Lett. 86, 5188](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.86.5188)
3.  [Michael A.Nielsen, Quantum computation by measurement and quantum memory, Physics Letters A, Volume 308, Issues 2–3, 24 February 2003, Pages 96-100](https://www.sciencedirect.com/science/article/pii/S0375960102018030)
4.  [Raussendorf, Robert, and Hans J. Briegel. "Computational model underlying the one-way quantum computer." Quantum Information & Computation 2.6 (2002): 443-486.](https://dl.acm.org/doi/abs/10.5555/2011492.2011495)
5.  [Briegel, H., Browne, D., Dür, W. et al. Measurement-based quantum computation. Nature Phys 5, 19–26 (2009). https://doi.org/10.1038/nphys1157](https://www.nature.com/articles/nphys1157)
6.  [Panos Aliferis and Debbie W. Leung, Computation by measurements: A unifying picture, Phys. Rev. A 70, 062314](https://journals.aps.org/pra/abstract/10.1103/PhysRevA.70.062314)
7.  [Dan E. Browne, Hans J. Briegel, One-way Quantum Computation - a tutorial introduction, arXiv:quant-ph/0603226](https://arxiv.org/abs/quant-ph/0603226)
8.  [qml.baidu: MBQC-tutorial](https://qml.baidu.com/tutorials/measurement-based-quantum-computation/mbqc-quick-start-guide.html)
9.  [Tzu-Chieh Wei, Measurement-Based Quantum Computation, arXiv:2109.10111](https://arxiv.org/abs/2109.10111)