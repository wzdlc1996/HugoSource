---
title: "对一般刚体的定点转动的统计力学分析"
date: 2022-07-15T22:00:00+08:00
lastmod: 2022-07-15T22:00:00+08:00
draft: false
tags: ["classical-theory"]
categories: ["Reviews"]
toc: true
summary: "在统计力学中, 我们通常会关注正则动量与坐标. 因为由它们确定的相空间体积元在正则变换下不变. 但在我们实际进行计算时, 却并非总是正则动量与坐标的表达最为方便. 一个例子就是刚体力学中, 我们会偏爱使用转动惯量和惯量主轴的方法来讨论问题. 然而作为角动量, 它们彼此之间并不对易, 因而在处理统计力学积分时往往带来困惑: 我们能使用它们作为被积变量吗? 进一步的, 用刚体转动模型理解多原子分子热容时同样会遇到这个问题. 本文旨在对这个问题给出解答: 在讨论不依赖转动构型的力学量时, 使用主轴角动量作为动力学变量是完全可行的. 变量替换的 Jacobian 只是转动构型的函数."
---

# 对一般刚体的定点转动的统计力学分析

## 如何阅读这篇文章

本文正文分为 4 个部分:

1.  刚体定点运动的描述
    -  提供了刚体运动学的一般性介绍: 刚体构型, 角速度
    -  提供了 Euler 角参数化下的角速度表达式
2.  刚体定点自由运动的动力学: Lagrange 视角
    -  提供了刚体定点自由运动的 Lagrangian: 事实上就是动能
    -  为转动惯量张量的分析性质做了简要描述
    -  给出了惯量主轴的概念
3.  刚体定点自由运动的动力学: Hamilton 视角
    -  提供了刚体定点自由运动的 Hamiltonian: 非显式
    -  指出了在合理的参数化下, Hamiltonian 仍然是广义动量的二次型
    -  指出了在极端情况(某个主轴上转动惯量消失)下, 刚体动力学上自由度的降低
4.  刚体定点自由运动的统计力学分析
    -  提供了正则系综相空间积分变量替换的推导
    -  给出了一般情况相空间体积元的形式
    -  指出当处理的函数只依赖于主轴角动量时, $\td L_1 \td L_2 \td L_3$ 作为体积元的合理性

其中2, 4是主要内容和结论所在, 1, 3则提供了一些背景和简单讨论. 读者需要对线性代数(对角化, 正交矩阵)和多元微积分尤其是变量替换技巧有所了解. 

## 刚体定点运动的描述

### 角速度

**刚体** 是一类特殊的经典物理模型, 是一种受到约束的质点系统. 当研究刚体的定点运动时, 我们通常会引入转动矩阵来作为它所处位置 (或者严谨的, **构型(configuration)**) 的描述. 而刚体上初始一点 $\bm{r}(0)$ (相对定点) 在时刻 $t$ 的位置即为

$$
\bm{r}(t) = \bm{A}(t) \bm{r}(0).
$$

其中 $\bm{A}(t)$ 是一个 $3\times 3$ 的矩阵. 直观地, 我们可以想像存在一个固连在刚体上的坐标系, $\bm{r}(0)$ 就是在这个坐标系中的一点的位置坐标. 而在另一个原点重合的, 同观察者静止的坐标系中, 同一点的坐标就是 $\bm{r}(t)$. 刚体的约束则直接导致了矩阵 $\bm{A}(t)$ 是一个描述空间转动的矩阵, 数学地, 我们称它是一个正交矩阵, 具有性质 $\bm{A}(t)^T = \bm{A}(t)^{-1}$ 而行列式 $\det \bm{A}(t) = 1$ 是必须的, 因为我们的刚体无法作中心反射.

从而我们可以给出某个点的速度:

$$
\bm{v}(t) = \frac {\td \bm{r}(t)} {\td t} = \frac {\td \bm{A}(t)} {\td t} \bm{r}(0) = \frac {\td \bm{A}(t)} {\td t} \bm{A}(t)^{T} \bm{r}(t).
$$

注意我们使用了 $\bm{A}^{-1} = \bm{A}^T$ 这个正交矩阵的性质. 从这个形式我们立刻可以看到:

$$
0 = \frac{\td \bm{I}} {\td t}= \frac{\td \bm{A}(t)\bm{A}(t)^T} {\td t} = \frac {\td \bm{A}(t)} {\td t} \bm{A}(t)^{T} + \bm{A}(t) \frac {\td \bm{A}(t)^T} {\td t} = \frac {\td \bm{A}(t)} {\td t} \bm{A}(t)^{T} + \Big(\frac {\td \bm{A}(t)} {\td t} \bm{A}(t)^{T}\Big)^T.
$$

这告诉我们矩阵 $\frac {\td \bm{A}(t)} {\td t} \bm{A}(t)^{T}$ 总是一个反对称矩阵. 普遍的我们可以将它写为

$$
\frac {\td \bm{A}(t)} {\td t} \bm{A}(t)^{T} = \begin{bmatrix}
0 & -\omega_z & \omega_y \\
\omega_z & 0 & -\omega_x \\
-\omega_y & \omega_x & 0
\end{bmatrix}.
$$

可以验证这样的定义下, 矩阵运算

$$
\begin{bmatrix}
0 & -\omega_z & \omega_y \\
\omega_z & 0 & -\omega_x \\
-\omega_y & \omega_x & 0
\end{bmatrix} \begin{bmatrix}
r_x \\ r_y \\ r_z
\end{bmatrix} = \begin{bmatrix}
\omega_y r_z - \omega_z r_y \\
\omega_z r_x - \omega_x r_z \\
\omega_x r_y - \omega_y r_x
\end{bmatrix} = \bm{\omega} \times \bm{r}.
$$

其中向量 $\bm{\omega} = (\omega_x, \omega_y, \omega_z), \bm{r} = (r_x, r_y, r_z)$ (严格的应当写为列向量的形式). 向量 $\bm{\omega}$ 称为角速度, 而一般的刚体的运动学描述也就被写为

$$
\frac {\td\bm{r}(t)} {\td t} = \bm{\omega} \times \bm{r}(t).
$$

注意一般来说, $\bm{\omega}$ 可以依赖于时间. 这个方程只能给我们运动学的信息, $\bm{\omega}$ 随时间的变化以及具体的运动 $\bm{r}(t)$ 将依赖于动力学规律.

### Euler 角

对刚体构型的描述尽管被简化为矩阵 $\bm{A}$, 但事实上我们并不需要 $3\times 3$ 个实数来描述它. 作为正交矩阵, 事实上只需要 $3$ 个独立参数就能够达成完整描述. 直观地, 任何转动都等同于对某个轴的一次转动, 因此两个参数确定轴的方向, 一个参数确定角度即可给出结果. 但更常用的我们会选择 Euler 角参数. 其几何定义可以参看 [wikipedia/Euler_angles](https://en.wikipedia.org/wiki/Euler_angles), 我们这里相对分析地给出它们. 对于任意的正交矩阵, 都能够分解为逐次的 $z-y-z$ 转动

$$
\bm{A}(t) = \bm{R}_z(\alpha) \bm{R}_y(\beta) \bm{R}_z(\gamma) = 
\begin{bmatrix}
\cos \alpha & -\sin \alpha & 0 \\
\sin \alpha & \cos \alpha & 0 \\
0 & 0 & 1
\end{bmatrix}
\begin{bmatrix}
\cos \beta & 0 & \sin \beta  \\
0 & 1 & 0 \\
-\sin \beta & 0 & \cos \beta 
\end{bmatrix}
\begin{bmatrix}
\cos \gamma & -\sin \gamma & 0 \\
\sin \gamma & \cos \gamma & 0 \\
0 & 0 & 1
\end{bmatrix}.
$$

注意在实际的 Euler 角定义的转动中, 第二个 y 转动和第三个 z 转动的轴是固连刚体的轴. 因此应当是:

$$
\bm{R}_{z''}(\gamma)\bm{R}_{y'}(\beta)\bm{R}_z(\alpha) = \bm{R}_z(\alpha)\bm{R}_{y}(\beta)\bm{R}_{z}(\gamma)\bm{R}_{y}(\beta)^T\bm{R}_z(\alpha)^T\bm{R}_z(\alpha)\bm{R}_{y}(\beta)\bm{R}_z(\alpha)^T\bm{R}_z(\alpha) = \bm{R}_z(\alpha) \bm{R}_y(\beta) \bm{R}_z(\gamma).
$$

其中我们使用转动复合的如下性质:

$$
\bm{R}\bm{R}_{\bm{n}}(\theta) \bm{R}^T = \bm{R}_{\bm{R}\bm{n}}(\theta).
$$

它不难从 $\bm{R}_{\bm{n}}(\theta)$ 的谱分解: $\bm{R}_{\bm{n}}(\theta) = \bm{n}\bm{n}^T + ...$ 得到: $\bm{R}\bm{R}_{\bm{n}}(\theta) \bm{R}^T$ 对应于本征值为 $1$ 的方向(转动轴)是 $\bm{R}\bm{n}$, 因此有 $\bm{R}_{y'}(\beta) = \bm{R}_z(\alpha)\bm{R}_{y}(\beta)\bm{R}_z(\alpha)^T$ 和 $\bm{R}_{z''}(\gamma) = \bm{R}_z(\alpha)\bm{R}_{y}(\beta)\bm{R}_{z}(\gamma)\bm{R}_{y}(\beta)^T\bm{R}_z(\alpha)^T$ 我们关心角速度的三个分量是如何和 Euler 角的时间导数联系起来的, 按照角速度的定义, 我们计算

$$
\begin{aligned}
\frac {\td \bm{A}(t)} {\td t} \bm{A}(t)^T &= \frac {\td \bm{R}_z(\alpha) \bm{R}_y(\beta) \bm{R}_z(\gamma)} {\td t} \bm{R}_z(-\gamma) \bm{R}_y(-\beta) \bm{R}_z(-\alpha) \\
&=\frac {\td \bm{R}_z(\alpha)} {\td t} \bm{R}_z(-\alpha) + \bm{R}_z(\alpha) \frac {\td \bm{R}_y(\beta)} {\td t} \bm{R}_y(-\beta) \bm{R}_z(-\alpha) \\
&\indent + \bm{R}_z(\alpha) \bm{R}_y(\beta) \frac {\td \bm{R}_z(\gamma)} {\td t} \bm{R}_z(-\gamma)\bm{R}_y(-\beta) \bm{R}_z(-\alpha) \\
&= \dot{\alpha}
\begin{bmatrix}
0 & -1 & 0\\ 
1 & 0 & 0 \\
0 & 0 & 0
\end{bmatrix}
+\dot{\beta} \bm{R}_z(\alpha)\begin{bmatrix}
0 & 0 & 1\\ 
0 & 0 & 0 \\
-1 & 0 & 0
\end{bmatrix} \bm{R}_z(-\alpha) \\
&\indent + \dot{\gamma }\bm{R}_z(\alpha) \bm{R}_y(\beta) 
\begin{bmatrix}
0 & -1 & 0\\ 
1 & 0 & 0 \\
0 & 0 & 0
\end{bmatrix}
\bm{R}_y(-\beta) \bm{R}_z(-\alpha) \\
&= \begin{bmatrix}
0 & -\dot{\alpha} - \dot{\gamma} \cos\beta & \dot{\beta} \cos\alpha +\dot{\gamma}\sin\beta \sin\alpha \\
\dot{\alpha} + \dot{\gamma}\cos\beta & 0 & \dot{\beta}\sin\alpha - \dot{\gamma}\cos\alpha \sin \beta \\
-\dot{\beta} \cos\alpha -\dot{\gamma}\sin\beta \sin\alpha & -\dot{\beta}\sin\alpha + \dot{\gamma}\cos\alpha \sin \beta & 0
\end{bmatrix}
\end{aligned}
$$

从而我们给出了:

$$
\begin{bmatrix}
\omega_x \\ \omega_y \\ \omega_z
\end{bmatrix} = 
\begin{bmatrix}
\cos\alpha \sin \beta & -\sin\alpha & 0 \\
\sin\alpha \sin \beta & \cos\alpha & 0 \\
\cos\beta & 0 & 1
\end{bmatrix}
\begin{bmatrix}
\dot{\gamma} \\ \dot{\beta} \\ \dot{\alpha}
\end{bmatrix}.
$$

不难检查

$$
\det \begin{bmatrix}
\cos\alpha \sin \beta & -\sin\alpha & 0 \\
\sin\alpha \sin \beta & \cos\alpha & 0 \\
\cos\beta & 0 & 1
\end{bmatrix} = \sin \beta.
$$

即这个矩阵不总是可逆的. 这来自于 Euler 角在 $\beta = 0, \pi$ 时的坐标奇异性. 但这种奇异性总是可以通过选择合适的广义坐标规避掉. 在我们之后的讨论里这个奇异性不会带来重大影响. 


## 刚体定点自由运动的动力学: Lagrange 视角

为了分析刚体的动力学, 我们需要写出它的 Lagrangian. 对于自由运动的刚体, 它的 Lagrangian 就是刚体的动能. 从刚体的运动方程(参看角速度章节)我们很容易写出:

$$
\begin{aligned}
L &= \int \td m \ \frac 1 2 \bm{v}^2 \\
&= \frac 1 2 \int \td m \ (\bm{\omega} \times \bm{r})^2 \\
&= \frac 1 2 \int \td m \ \sum_{i \in \{x,y,z\}} \sum_{jkpq}\epsilon_{ijk} \epsilon_{ipq} r_j \omega_k r_p \omega_q \\
&= \frac 1 2 \int \td m \ \sum \Big(\delta_{jp}\delta_{kp} - \delta_{jq}\delta_{kp}\Big) r_j r_p \omega_k \omega_q \\
&= \frac 1 2 \sum_{i, j} \Big(\delta_{ij} \int \td m \ \bm{r}^2 - \int \td m \ r_i r_j \Big)\omega_i \omega_j \\
&= \frac 1 2 \sum_{i, j=1}^3 J_{ij} \omega_i\omega_j
\end{aligned}
$$

其中矩阵 $J_{ij}$ 被称作 **转动惯量张量**, 下标的取值范围为 $x,y,z$ 三个空间分量, 我们这里用数字 $1,2,3$ 代替. 注意一般的, $J_{ij}$ 会依赖于刚体的构型, 即依赖于转动 $\bm{A}(t)$, 或者说依赖于广义坐标 (如如果我们选择 Euler 角作为广义坐标, 那么它就会显含 $\alpha, \beta, \gamma$ 三个角度). 但普遍的, 由于 $J_{ij}$ 是一个对称矩阵, 我们总能够找到一个正交矩阵将之对角化, 而且对角化的转动惯量(称为 **主轴惯量**, 有时也会被记作 $J_1, J_2, J_3$)只和刚体的形状有关, 和构型无关. 由这个正交矩阵确定的空间转动定义了刚体的 **惯量主轴** 的方向. 因此, 我们也会写:

$$
L = \frac 1 2 \sum_{i=1}^3 J_i (R\omega)_i^2.
$$

其中 $R\omega$ 代表将角速度在主轴方向进行投影的三个分量:

$$
(R\omega)_i = (\bm{R}\bm{\omega})_i = \sum_{j=1}^3 R_{ij}\omega_j.
$$

注意矩阵 $\bm{R}$ 事实上就是对角化惯量张量的矩阵, 令

$$
\sum_{k=1}^3 J_k R_{ki} R_{kj} = J_{ij}.
$$

注意矩阵 $\bm{R}$ 同样依赖于刚体的构型.

关于 $J_{1,2,3}$ 不依赖于刚体的构型可以直观地理解: $J_{1,2,3}$ 是转动惯量张量 $J_{ij}$ 的本征值. 其中

$$
J_{ij} = \delta_{ij} \int \td m \ \bm{r}^2 - \int \td m \ r_i r_j.
$$

当我们对坐标系进行转动(相当于对刚体进行转动)时, 第一项 $\bm{r}^2$ 总是不变的, 从而积分结果也不变. 第二项则会按照一个正交矩阵进行变换: $r_i \rightarrow \sum_k Q_{ik} r_k$, 使得矩阵 $\bm{J}$ 发生变换:

$$
\bm{J} \rightarrow \bm{Q}\bm{J} \bm{Q}^T.
$$

而在正交矩阵这样的变换下, 矩阵的本征值是不变的. 因此刚体的主轴惯量在转动下不变, 换言之, 这样的主轴惯量应当只依赖于刚体形状, 而和刚体的构型无关.

## 刚体定点自由运动的动力学: Hamilton 视角

当给定了刚体转动的一种参数化之后, 如 Euler 角, 我们就有了一组广义坐标: $(\theta_1,\theta_2,\theta_3)$. 我们不加证明地指出, 总能够选出这样的广义坐标, 使得刚体的角速度同广义速度之间只相差一个仅依赖广义坐标的线性变换 (事实上 Euler 角就是满足这个条件的一组广义坐标), 即:

$$
\omega_i = \sum_{j=1}^3 K_{ij}(\theta) \dot{\theta}_j.
$$

从而刚体的 Lagrangian 总能写为

$$
L = \frac 1 2 \sum_{i=1}^3 J_i \Big(\sum_{j,k=1}^3 R_{ij}(\theta) K_{jk}(\theta) \dot{\theta}_k\Big)^2.
$$

而广义坐标所对应的广义动量不难给出:

$$
p_i = \frac {\partial L} {\partial \dot{\theta}_i} = \sum J_l R_{lj}(\theta)K_{jk}(\theta) R_{lj'}(\theta)K_{j'i}(\theta)\dot{\theta}_k.
$$

尽管复杂, 但我们仍然能够看到 $p_i$ 总是线性依赖于广义速度, 而且系数矩阵只和广义坐标有关. 而且如果刚体失去某个方向的线度, 令某个主轴惯量为0, 我们立即可以发现系统的自由度会降低. 一般的, 我们将广义动量简写为

$$
p_i = U_{ij}(\theta) \dot{\theta}_j.
$$

而这样导致的系统的 Hamiltonian 就写为:

$$
H = \frac 1 2 \sum_{l=1}^3 J_l \Big(\sum_{j,k,l=1}^3 R_{ij}(\theta) K_{jk}(\theta) (\bm{U}(\theta))^{-1}_{kl} p_l\Big)^2.
$$

同样是广义动量的二次型.

## 刚体定点自由运动的统计力学分析

在正则系综下, 刚体某个力学函数的期待值可以计算为

$$
\braket{F} = \frac 1 {Z} \int \td \theta \td p \ F(\theta, p) e^{-\beta H}.
$$

我们总可以进行变量替换, 选择 $\theta, \dot{\theta}$ 广义速度作为积分变量. 由于前面的假设, 我们有变量替换的 Jacobian

$$
\Bigg|\frac {\partial (\theta, p)} {\partial(\theta, \dot{\theta})}\Bigg| = \Bigg|\frac {\partial p} {\partial\dot{\theta}}\Bigg| = \Big|\frac {\partial} {\partial \dot{\theta}}\frac {\partial L} {\partial \dot{\theta}} \Big| = \det \bm{K}(\theta)^{T} \bm{J}\bm{K}(\theta) = \det \bm{J} \Big(\det \bm{K}(\theta)\Big)^2.
$$

对于第一个等号我们可以直接地进行验证:

$$
\begin{aligned}
\Bigg|\frac {\partial (\theta, p)} {\partial(\theta, \dot{\theta})}\Bigg| &= \det 
\begin{vmatrix}
\partial_{\theta_1} \theta_1 & \partial_{\theta_1} \theta_2 & \partial_{\theta_1} \theta_3 & \partial_{\theta_1} p_1 & \partial_{\theta_1} p_2 & \partial_{\theta_1} p_3 \\
\partial_{\theta_2} \theta_1 & \partial_{\theta_2} \theta_2 & \partial_{\theta_2} \theta_3 & \partial_{\theta_2} p_1 & \partial_{\theta_2} p_2 & \partial_{\theta_2} p_3 \\
\partial_{\theta_3} \theta_1 & \partial_{\theta_3} \theta_2 & \partial_{\theta_3} \theta_3 & \partial_{\theta_3} p_1 & \partial_{\theta_3} p_2 & \partial_{\theta_3} p_3 \\
\partial_{\dot \theta_1} \theta_1 & \partial_{\dot \theta_1} \theta_2 & \partial_{\dot \theta_1} \theta_3 & \partial_{\dot \theta_1} p_1 & \partial_{\dot \theta_1} p_2 & \partial_{\dot \theta_1} p_3 \\
\partial_{\dot \theta_2} \theta_1 & \partial_{\dot \theta_2} \theta_2 & \partial_{\dot \theta_2} \theta_3 & \partial_{\dot \theta_2} p_1 & \partial_{\dot \theta_2} p_2 & \partial_{\dot \theta_2} p_3 \\
\partial_{\dot \theta_3} \theta_1 & \partial_{\dot \theta_3} \theta_2 & \partial_{\dot \theta_3} \theta_3 & \partial_{\dot \theta_3} p_1 & \partial_{\dot \theta_3} p_2 & \partial_{\dot \theta_3} p_3 \\
\end{vmatrix} \\
&= \det 
\begin{vmatrix}
1 & 0 & 0 & \partial_{\theta_1} p_1 & \partial_{\theta_1} p_2 & \partial_{\theta_1} p_3 \\
0 & 1 & 0 & \partial_{\theta_2} p_1 & \partial_{\theta_2} p_2 & \partial_{\theta_2} p_3 \\
0 & 0 & 1 & \partial_{\theta_3} p_1 & \partial_{\theta_3} p_2 & \partial_{\theta_3} p_3 \\
0 & 0 & 0 & \partial_{\dot \theta_1} p_1 & \partial_{\dot \theta_1} p_2 & \partial_{\dot \theta_1} p_3 \\
0 & 0 & 0 & \partial_{\dot \theta_2} p_1 & \partial_{\dot \theta_2} p_2 & \partial_{\dot \theta_2} p_3 \\
0 & 0 & 0 & \partial_{\dot \theta_3} p_1 & \partial_{\dot \theta_3} p_2 & \partial_{\dot \theta_3} p_3 \\
\end{vmatrix} \\
&= \det 
\begin{vmatrix}
\partial_{\dot \theta_1} p_1 & \partial_{\dot \theta_1} p_2 & \partial_{\dot \theta_1} p_3 \\
\partial_{\dot \theta_2} p_1 & \partial_{\dot \theta_2} p_2 & \partial_{\dot \theta_2} p_3 \\
\partial_{\dot \theta_3} p_1 & \partial_{\dot \theta_3} p_2 & \partial_{\dot \theta_3} p_3
\end{vmatrix} \\
&= \Bigg|\frac {\partial p} {\partial\dot{\theta}}\Bigg|
\end{aligned}
$$

原式中 $\bm{J}$ 是由转动惯量张量 $J_{ij}$ 确定的矩阵, 而 $\bm{K}(\theta)$ 则来自角速度和广义速度之间的线性变换 $\omega_i =\sum_j K_{ij}(\theta)\dot{\theta}_j$ 的系数矩阵. 注意到 $\det \bm{J} = J_1J_2J_3$ 是一个只依赖于刚体形状的常数(正交变换的行列式为 $1$), 而 $\det \bm{K}(\theta)$ 则只依赖于广义坐标, 因此我们总能写出:

$$
\braket{F} = \frac 1 {Z} \int \td \theta \td \dot{\theta}  \ F(\theta, \dot{\theta}) (\det K)^2 e^{-\beta L}.
$$

注意现在广义速度 $\dot{\theta}$ 应当被认为是一个整体符号被积分掉, 而不再考虑它作为 $\theta$ 的时间导数, 同时我们修改了函数 $F$ 的自变量为 $\theta, \dot{\theta}$, 这可能会引起误解, 但出于符号的简洁性考虑我们仅在此指出这一点且在今后不做进一步说明. 此外, 由于是自由运动, 我们有 $H = L$. 我们可以继续进行坐标变换, 采用 $\theta, \omega$ 作为积分变量, 同样需要计算 Jacobian

$$
\Bigg|\frac {\partial(\theta,\dot{\theta})} {\partial(\theta, \omega)}\Bigg| = \Bigg|\frac {\partial\dot{\theta}} {\partial\omega}\Bigg| = 1 / \Bigg|\frac {\partial\omega} {\partial\dot{\theta}}\Bigg| = \frac 1 {\det K}. 
$$

从而正则系综的期待值成为

$$
\braket{F} = \frac 1 {Z} \int \td \theta \td \omega  \ F(\theta, \omega) (\det K) \exp\Big(-\frac {\beta} 2 \sum_{ij} J_{ij} \omega_i \omega_j\Big).
$$

当然, 有时候我们也会喜欢使用主轴角动量 $L_i = J_i (R\omega)_i$ 作为积分变量, 注意到 $\bm{R}$ 是正交矩阵从而 Jacobian 为 $1$, 而 $J_i$ 又是只和刚体形状有关的常数, 我们容易写下:

$$
\braket{F} = \frac 1 {Z} \int (\det K) \td \theta \td L_1 \td L_2 \td L_3  \ F(\theta, L) \exp\Big(-\beta \sum_{i=1}^3 \frac {L_i^2} {2J_i}\Big).
$$

从而这个表达式给出了如何计算刚体定点自由运动在正则系综下的各种力学量期待值的计算方法. 我们总可以简记相空间体积元为

$$
\td \Gamma = (\det K(\theta)) \td \theta_1 \td\theta_2\td\theta_3 \ \td L_1 \td L_2 \td L_3 = \td\theta_1 \td \theta_2 \td \theta_3 \td p_1\td p_2\td p_3.
$$

在 Euler 角参数下, $\det K(\theta) = \sin \beta$. 而普遍的构型空间权重可能并非如此, 但角动量总是独立且均匀的. 注意主轴角动量 $L_{1,2,3}$ 并非正则变量, 而且变量替换 $\theta,p \rightarrow \theta, L$ 也确实令相空间体积元发生了变化: 多了 $\det K$ 的系数. 但 $\det K$ 只依赖于构型 $\theta$, 因此它并不影响我们对无关于刚体转动构型的任何动力学变量的讨论. 当我们关心的函数只是主轴角动量的函数, 而和广义坐标无关时, 对 $\theta$ 的积分连带权重 $\det K(\theta)$ 被配分函数 $Z$ 消去, 我们就有

$$
\Big\langle F(L)\Big\rangle = \frac {\displaystyle \int\td L_1 \td L_2 \td L_3 \ F(L_1, L_2,L_3)\exp\Big(-\beta \sum_{i=1}^3 \frac {L_i^2} {2J_i}\Big)} {\displaystyle \int\td L_1 \td L_2 \td L_3 \exp\Big(-\beta \sum_{i=1}^3 \frac {L_i^2} {2J_i}\Big)}.
$$

利用这个结果我们不难讨论能均分定理等一系列结果, 也不难验证对一般刚体的每个转动自由度的内能贡献均为 $k_BT / 2$.