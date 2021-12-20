---
title: "Machine Learning in Quantum Mechanics, Up to 2021"
date: 2021-12-12T22:50:00+08:00
lastmod: 2021-12-12T22:50:00+08:00
draft: false
tags: ["quantum"]
categories: ["Reviews"]
toc: true
summary: "In the recent(at 2021) decades, machine learning algorithms have been popular in almost all disciplines of science and even art. People have found out that a huge share of research and production problems can be viewed as instances of basic tasks that could get well solved with the modern powerful hardware and algorithms. In physics, there has been already plenty of applications covering data manipulation and model/theory discovering. However, just like those famous algorithms in the past, machine learning has its own caveats. Researchers should get well understanding about the boundary of algorithms' ability. Being a well-trained user instead of package importer would be the new requirements of people in related fields. In this review, we will discuss the success applications of machine learning in quantum physics in recent years and the potential limitation. Then the reader could get a clearer picture on the development of machine learning and quantum physics frontier."
---

# Supervised Learning: Extend Our Knowledge

**Supervised Learning** has the task of learning a function mapping inputs to outputs while preserve the latent pattern of dataset. The main workflow of it is
1.  Select a proper model $f(x;\theta)$ by the requirement of task
2.  Optimize the loss function to fit the model on training set
3.  Check the trained model on test set

One of the most popular model is **Artificial Neural Network(ANN)** and its variants like **Convolution Neural Network(CNN)** for vision tasks and **Recurrent Neural Network(RNN)** for time series.

## Learning Phase Transition

### Main Results

In ([Evert. 2017][1]), the authors proposed a method to detect phase transition with the combination of supervised learning and unsupervised learning. Generally, the algorithm reads
1.  Given the physical model, extract the features with various method as the function of control parameter $x(\xi)$, where $\xi\in (0,\Xi)$.
2.  Training the classifier $F$ by labeling the dataset $\{([x(\xi)]_i, C_i)\}$ by $C_i = \Theta(\xi - \xi')$. The trial critical point $\xi'$ is assigned without any knowledge about critical point $\xi_c$.
3.  Testing the classifier (on entire dataset in this paper), obtain the performance as the function $P(\xi')$

The function $P(\xi')$ has a universal W-shape with the middle peak at the exact critical value $\xi_c$.

This W-shape is explained by the following arguments. 

-  Assumption
   1.  The features $x(\xi)$ have two different structures with different range of control parameter.
   2.  The NN (classifier) can find and distinguish these two structures.

-  Reasoning
   1.  At the boundary, i.e., $\xi' = 0 \textrm{ or } \Xi$, there are only one class in the training set. Thus the performance of NN could reach $100\%$ by predicting them as the same.
   2.  If $\xi'=\xi_c$, since NN can distinguish the hidden structure of dataset, the performance should be also perfect.
   3.  If $\xi'\in(0, \xi_c)$, the dataset has the confusion in those data in $(\xi',\xi_c)$ by incorrect labeling. The NN will choose to learn the label of the majority data.
       Assuming the size of dataset is only depend on the length of parameter range:
       -  If $|\xi_c-\xi'| \gt |\xi'-0|$, then the error labeling data dominant. This makes NN choose learn wrong classification, i.e., predict $|\xi'-0|$ as class $1$. The data in $(0, \xi')$ would be incorrectly classified.
       -  If $|\xi_c-\xi'| \lt |\xi'-0|$, then the correct labeling data dominant, and NN could learn the correct classification. Then the performance get loss by error labeling range $(\xi', \xi_c)$

       Thus, the performance has the behavior of

       $$
       \begin{aligned}
       P(\xi') &= 
       \begin{cases}
       1 - \frac {|\xi' - 0|} {\Xi} & |\xi_c-\xi'| \gt |\xi'-0| \\
       1 - \frac {|\xi_c - \xi'|} {\Xi} & |\xi_c-\xi'| \lt |\xi'-0|
       \end{cases}\\
       &= 1 - \frac {\min(\xi_c - \xi', \xi')} {\Xi}.
       \end{aligned}
       $$

       This function has the V-shape on $\xi' \in (0, \xi_c)$
   4.  Similar analysis applies to $\xi' \in (\xi_c, \Xi)$. Another V-shape will be on this interval. Then on the entire range, the performance function $P(\xi')$ has a W-shape.

### Details

There are three models and three different phase transition are studied in this paper.

1.  **The Kitaev Chain**
    There is a quantum phase transition in the ground state of
    
    $$
    \hat H = - \sum_{l=1}^L \Big(\hat c_{l+1}^\dagger\hat c_l + \textrm{h.c.}\Big) - \frac {\mu} t \sum_{l=1}^L \hat c_l^\dagger \hat c_l.
    $$

    With $t\gt 0$, the controlling parameter is $|\mu/t|$ and the critical point is: $|\mu/t| \gt 2$ as topological trivial state and $|\mu/t|\lt 2$ to topological non-trivial.

    The feature is the PCA componants of entanglement spectrum of $\{-\log \lambda: \lambda \in \textrm{eig} \textrm{ Tr}_{L/2}\ket{g.s.}\bra{g.s.}\}$. Authors just consider the range of $\mu/t \in (-4,0)$ such that there are only one critical point.

    The performance is

    {{< center >}}
    <img name="preview" src="./figs/img_supv_01.png"/>
    {{< /center >}}

    Note that the dataset can be easily classified in the feature space. This problem is simple to NN.

2.  **Classical 2D Ising Model**
    The feature is the classical spin configuration by $L\times L$ matrix. The dataset is obtained by sampling from Monte-Carlo simulation.

    The performance is 

    {{< center >}}
    <img name="preview" src="./figs/img_supv_02.png"/>
    {{< /center >}}

3.  **Manybody Localization**
    The XXX-model with disorder local field has the Hamiltonian of

    $$
    \hat H = J \sum_{i=1}^L \hat S_i\cdot \hat S_{i+1} + \sum_{\alpha=x,y,z} \sum_{i=1}^L h_i^\alpha \hat S_i^\alpha.
    $$

    $\hat S$ are spin-1/2 operators and $h_i^\alpha$ are stochastic field of uniform distribution with zero mean and width $h_{\textrm{max}}^x = h_{\textrm{max}}^z = h_{\textrm{max}}, h_{\textrm{max}}^y = 0$. In the supplementary of paper ([N. Regnault 2016][2]), the transition of spectrum shape from GOE to Poisson is clarified at $h_{\textrm{max}}/J \sim 3$.

    The feature is the full entanglement spectrum of the ground state. The performance is

    {{< center >}}
    <img name="preview" src="./figs/img_supv_03.png"/>
    {{< /center >}}


## Quantum Constraint for Ground State

# Unsupervised Learning: Encoding and Defeat Ignorance

## Restricted Boltzmann Machine and Variational Monte Carlo

## Generative Model

# Reinforcement Learning: Can AI Understand the Nature?

## Quantum State Preparation

## Quantum CartPole

# Differential Programming: Something Else.

## Quantum Tomography

## Hamiltonian Reconstruction

# References

[1]: https://www.nature.com/articles/nphys4037
[2]: https://journals.aps.org/prb/supplemental/10.1103/PhysRevB.93.104203/supplmat.pdf

1.  van Nieuwenburg, E., Liu, YH. & Huber, S. Learning phase transitions by confusion. Nature Phys 13, 435–439 (2017)
2.  Nicolas Regnault and Rahul Nandkishore Floquet thermalization: Symmetries and random matrix ensembles. Phys. Rev. B 93, 104203
