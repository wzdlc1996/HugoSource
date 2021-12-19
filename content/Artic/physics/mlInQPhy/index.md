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

In ([Evert. 2017][1]), the authors proposed a method to detect phase transition with the combination of supervised learning and unsupervised learning. 

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

1.  van Nieuwenburg, E., Liu, YH. & Huber, S. Learning phase transitions by confusion. Nature Phys 13, 435–439 (2017)
