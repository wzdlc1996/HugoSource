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

Another aspect of the figure above is the type of algorithm. It is not only means the software we handle the data, but also the hardware we used to realize the program. This part contains the storage and processing. The former is qubits and quantum gates, which has been proved to be universal to simulate any quantum system and their evolution, just like the classical bits and classical gates. However, the quantum nature of qubits makes it possible to handle quantum data with polynomial scaling cost(if we can prepare and hold the qubits as easy as we do for classical bits in the sense of scaling). The algorithm or software is the analog of the classical algorithm and programs running on the classical computer. There are two paradigms for quantum algorithm, one can be represented as the combination of a set of quantum gates,  while the other way is based on the adiabatic theorem ([wiki/Adiabatic-quantum-computation](5)). These two approaches has been proved to be equivalent ([D.Aharonov 2005](6), [H.Yu 2018](7)). 

# Classical Ml

[1]: https://en.wikipedia.org/wiki/Data_science
[2]: https://www.sciencedirect.com/topics/engineering/keplers-law
[3]: https://www.nist.gov/topics/physics/introduction-new-quantum-revolution/second-quantum-revolution
[4]: https://en.wikipedia.org/wiki/Quantum_machine_learning
[5]: https://en.wikipedia.org/wiki/Adiabatic_quantum_computation
[6]: https://arxiv.org/abs/quant-ph/0405098
[7]: https://arxiv.org/abs/1706.07646