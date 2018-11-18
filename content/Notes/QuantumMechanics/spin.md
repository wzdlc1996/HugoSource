---
title: "Angular Momentum and Spin"
date: 2018-11-14T11:42:20+08:00
draft: false
tags: ["Physics"]
series: ["Quantum-Mechanics"]
categories: ["Physics"]
toc: true
---

# SU(2) and SO(3) Groups

## Defining SO(3) Group

<em>[Definition]</em> : `SO(3) Group` is the group of `proper rotations` in 3-dimensional space. With \(\bm{r}=(x,y,z)^T\) , it is the set of 3x3 matrices \(\bm{R}\) which satisfy:

$$\bm{R}^T \bm{R}= \bm{1} , \ \ \det \bm{R}=1$$

SO(3) together with spatial inversion form the O(3) group: \(\text{SO}(3) \bigcup I \text{SO}(3) = \text{O}(3)\)

## Parameterizing SO(3) Group

There are two ways to parameterize the SO(3) group:

1.  Any SO(3) rotation can be descriped by angle \(\theta\) and axis \(\bm{n}\) . It can be denoted by: \(\bm{R}_{\bm{n}}(\theta)\) , and according to the definition, we have following properties:
    1.  \(\bm{R}_{\bm{n}}(\theta)^{-1}=\bm{R}_{\bm{n}}(-\theta)\)
    2.  \(\bm{R}_{\bm{n}}(\theta) = \bm{R}_{-\bm{n}}(-\theta)\)
    3.  \(\bm{R}'\bm{R}_n(\theta)(\bm{R}')^{-1} = \bm{R}_{\bm{R}'\bm{n}}(\theta)\)
2.  One can also parameterize the SO(3) group by `Euler angles`:
    Any SO(3) rotation can be represented as:

    $$\bm{R}=\bm{R}_{\bm{e}_z}(\alpha)\bm{R}_{\bm{e}_y}(\beta)\bm{R}_{\bm{e}_z}(\gamma)$$

    Where \(\alpha\in[0,\pi), \beta\in[0,\pi), \gamma\in[0,2\pi)\) .
    {{%fold "Matrix form"%}}
    Rotations around \(z\) and \(y\) axis are explicitly:

    $$\bm{R}_{\bm{e}_z}(\theta) = \begin{bmatrix} \cos \theta & -\sin \theta & 0 \\ \sin\theta & \cos \theta & 0 \\ 0 & 0 & 1 \end{bmatrix} \ ; \ \bm{R}_{\bm{e}_y}(\theta) = \begin{bmatrix} \cos \theta & 0 & \sin\theta \\ 0 & 1 & 0 \\ -\sin\theta & 0 & \cos \theta \end{bmatrix}$$
    {{%/fold%}}
