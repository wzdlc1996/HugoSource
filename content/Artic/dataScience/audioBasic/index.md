---
title: "Manipulating Audio Data on Computer"
date: 2021-06-24T00:21:44+08:00
draft: true
tags: ["data-science", "python"]
categories: ["Techs"]
toc: true
summary: "The basic knowledge about audio data in computer. Including audio data representation, main audio file format, and simple audio processing. We will use python to illustrate these technologies. The hardware aspects will not be covered in this essay."
---

# Introduction

**Sound** is an important media of us to interact with the environment. With sound, people could communicate and transfer information. In ancient Greek, philosopher Pythagoras(毕达哥拉斯) discussed music sounds with the string and Aristotle(亚里士多德) made the naive understanding of the sound as a wave motion in the air ([wikipedia/early-research-in-acoustics][1]). In ancient China, music had been used and studied in the Neolithic age and developed in the Shang(商) Dynasty (see ([wikipedia/Bianzhong][2])). The research of sound generation and propagation appeared in the Han(汉) Dynasty at the latest.

> 生人所以言语吁呼者, 气括口喉之中, 动摇其舌, 张歙其口. ... 箫笙之管, 犹人之口喉也，手弄其孔，犹人之动舌也. --论衡 (王充, 东汉)

The systematical research of sounds got rapidly developed after the establishment of mechanics by Galilei and Newton. The classical mechanics treats the sound phenomena as the propagation of mechanical waves and gives birth to the field **acoustics**. In 19th century, **electrical engineering** bring us new technology to handle the sound. The "electronization" of sound reached its peak when the computer appeared. 

Nowadays, processing audio data on the computer has been necessary to modern researchers. Understanding how to record, store, and analyze sound signals is the main purpose of this note. The content is only the junior aspects of modern acoustics, but would be good for beginners. 

# Basic Physics of Sound

In physics, sounds, or mechanical waves, is a pattern of the motion in a continuum medium. **Acoustics** is a branch of physics to quantitatively study such wave motion. In our daily life, the medium for sound is usually the air. In this case, the mechanical wave can only be the longitudinal wave([quora/Why-isnt-the-transverse-wave-produced-in-liquid-and-gases][3]). We could describe this motion by a space-time dependent scalar field called **Sound pressure** or **Acoustic pressure**, which represents the density variation of the air. In the ideal situation:
1.  The medium is ideal gas. Thus there is no loss during propagation.
2.  The medium is homogeneous. The stationary pressure, density are both independent of the position.
3.  The vibration by sound wave is sufficiently small such that the medium is linear. 
4.  The medium is adiabatic during the wave propagation.

With these assumption, the equation of motion by the sound pressure field $p(\bm{x}, t)$ would be reduced to a linear partial differential equation as ([wikipedia/Wave_equation][4])

$$
\nabla^2 p - \frac 1 {v^2} \frac {\partial^2 p} {\partial t^2} = 0.
$$

The value of $v$ is the velocity of sound in the medium. To the **receiver** of sound, like our ears, the sound signal is a time-dependent function (for example, the sound pressure at a fixed position). In the rest of this note, we will use symbol $Z(t)$ as this wave-like signal to distinguish to the real sound pressure field. 

## Quantities to Describe the Sound

Though in principle the function $Z(t)$ has all information we need to know about the signal, it could be convenient to define some quantities to describe the signal. (One reason is that we human actually cannot precept infinity fine details about things.) In this section, we will see how our intuitive impressions connect to function $Z(t)$ mathematically ([musicandcomputersbook][5]).

### Amplitude and Strength

To measure the strength of the sound, people defined many quantities. Almost all of them are related to the **energy intensity** in the physical view of sound. Generally, it should be some time average of the square of signal, e.g.:

$$
I(t) \propto \int_t^{t+\Delta} |Z(t)|^2 \td t.
$$

Thus, the intensity is controlled by the amplitude of the sound (actually the frequency also contributes). However, our perception to the loudness is quite different to this energy intensity([wikipedia/Weber-Fechner_law][6]). The sensitivity of us to relative difference makes our perception of loudness is actually the logarithm to the intensity instead of itself. 

The most common used quantity to measure the strength of sound is **Sound Pressure Level** with unit dB ([wikipedia/Sound_pressure][7]):

$$
L_p \propto \log \sqrt{\int_t^{t+\Delta} |Z(t)|^2 \td t} \equiv \frac 1 2 \log I(t).
$$

### Frequency and Pitch

The **frequency** of the wave signal is sometimes "ill-defined" since there could be more than one component. To analysis the frequency one need to use Fourier transformation to the signal. The commonly used form in signal processing is

$$
\begin{aligned}
\tilde{Z}(f) &= \int_{-\infty}^{\infty} Z(t) e^{-\ti 2\pi f t}\td t \\
Z(t) &= \int_{-\infty}^{\infty} \tilde{Z}(f) e^{\ti 2\pi f t} \td t
\end{aligned}
$$

Also, our perception to the frequency also should be the logarithm to the physical value. Actually, the concept **pitch** itself satisfies some multiple relationship ([wikipedia/C_(musical_note)][8]):

|Pitch|Frequency(Hz)|
|:--|:--|
|$C_4$ (Middle-C)|261.626|
|$C_5$|523.251|

By **Equal Temperament** ([wikipedia/Equal_temperament][9]), each octave is divided into $12$ steps (semitone):

$$
\textrm{Freq}(X\sharp) = \textrm{Freq}(X) \times 2^{1/12}.
$$

### Timbre 

How to quantify the **timbre** is still an open question. Different from frequency and amplitude, our perception to the timbre is related to the shape of sound wave, both in time domain and the frequency domain. In recent years, people have used deep learning technology for timbre analysis and made much progress. See ([Timbre Analysis of Music Audio Signals with Convolutional Neural Networks, arXiv:1703.06697][10])

# Encoding the Sound Data: Digital Audio

Since the computer can not direct handle the continuous signal, one needs to discretize the signal first. One of the most used way in audio processing is by **sampling**.  The sampler is a system mapping the continuous signal (as the function of real numbers) into the function of integers by some sampling interval. Generally, sampler implement a frequency cutoff of the signal. Since human can only recognize the sound within a finite frequency window, such cutoff is acceptable in practice. To fully digitalize the audio signal, one also need to encode the amplitude information into the finite precision representation. These two procedure are usually called **discretization** and **quantization**. ([wikipedia/Digital_signal_processing][11], [LeeAndVaraiya11.pdf][12]).

This section we will first discuss the sampling procedure and how to reconstruct the signal by discretized value, which relies on the Nyquist-Shannon sampling theorem. Then we will discuss the mainly used amplitude encoding methods and their precision.

## Sampling and Reconstruction

Given the continuous signal as $Z(t)$, a **sampler** maps it into the discretized signal defined on integers. Formally:

$$
\{(t, Z(t)): t\in\mathbb{R}\} \xrightarrow{\textrm{sampling}} \{(n, \mathcal{S}(Z)(n) \equiv \hat Z(n) = Z(nT)) : n \in\mathbb{Z}\}.
$$

The value of $T$ is **sampling interval**, and its reciprocal $f_s = 1/ T$ is **sampling frequency**. In this note, we will denote $\hat Z$ as the sampled signal $\mathcal{S}(Z)$ for simplicity. 

Sampling is not a revertible mapping in the signal space. **Aliasing** denotes the phenomenon that two different signals could have the same sampled signal. One example is the sinusoidal signal:

$$
Z_f(t) = \cos 2\pi f t \Rightarrow \hat Z_f(n) = \cos 2\pi n \frac f {f_s}.
$$

One has $\hat Z_{f+k f_s} = \hat Z_{f}$. This also leads to the information loss for high frequency components when $f_s$ is fixed. In practice, people may need to avoid aliasing. And such **anti-aliasing** usually requires some priori-assumptions to the signal, such as the frequency range.

The **reconstruction** is the mapping from sampled signal to a continuous signal. Note that general the reconstruction could be different from the original one. Mainly reconstruction processes are the interpolation by discretized data, i.e.:

$$
\mathcal{R}(\hat Z)(t) = \sum_{n\in\mathbb{Z}} \phi_n(t) \hat Z(n).
$$

The functions $\{\phi_n(t)\}$ are interpolation basis. For example:

1.  _zero-order hold_: $\mathcal{R}(\hat Z)(t) = \hat Z(n) \textrm{ if } nT \leq t \lt (n+1)T$. In this case, $\phi_n(t) = 1_{nT \leq t \lt (n+1)T}$ is the characteristic function.
2.  _linear interpolation_: $\mathcal{R}(\hat Z)(t) = \hat Z(n) + (\hat Z(n+1) - \hat Z(n))( t - nT) \textrm{ if } nT\leq t \lt (n+1)T$. This is the interpolation by connect neighbor points by line.

_[Theorem]_: (Nyquist-Shannon Sampling Theorem): If the signal $Z(t)$ contains no frequencies higher than $f_s / 2$, then it is completely determined by the sampling $\hat Z(n)$ with sampling frequency $f_s$. The reconstruction is achieved by **sinc interpolation**:

$$
Z(t) = \mathcal{R}(\hat Z)(t) = \sum_{n\in\mathbb{Z}} \hat Z(n) \textrm{sinc} \Big(\frac {t - nT} T\Big).
$$

The sinc function is $\textrm{sinc} x = \sin \pi x / (\pi x)$.

{{% fold "Proof" %}}

Since the signal $Z(t)$ has no frequency components than $2f_s$, thus we have the Fourier analysis

$$
Z(t) = \int_{-\infty}^{\infty} \td f \ \tilde{Z}(f) e^{\ti 2\pi f t} = \int_{-f_s/2}^{f_s/2} \td f \ \tilde{Z}(f) e^{\ti 2\pi f t} .
$$

Then consider the sampling with frequency $f_s$, one has

$$
\hat Z(n) = Z(nT) =Z(n / f_s) = \int_{-f_s/2}^{f_s/2} \td f \ \tilde{Z}(f) e^{\ti 2\pi f n / f_s} = \int_{-1/2}^{1/2} \td f \ f_s\tilde{Z}(f f_s) e^{\ti 2 \pi n f}.
$$

With the periodic extension of $u(f) = f_s\tilde{Z}(f f_s) \textrm{ if } f \in [n-1/2, n+1/2)$ by period $1$, one has Fourier series

$$
u(f) = \sum_{n\in\mathbb{Z}} c_n e^{-\ti 2\pi n f} \Rightarrow c_n = \int_{-1/2}^{1/2} u(f) e^{\ti 2\pi n f}.
$$

This means that

$$
u(f) = \sum_{n\in\mathbb{Z}} \hat Z(n) e^{-\ti 2\pi n f} \Rightarrow \tilde{Z}(f) = 1_{|f|\leq f_s/2}\times\sum_{n\in\mathbb{Z}} \frac 1 {f_s} \hat Z(n) e^{-\ti 2\pi n f /f_s}.
$$

Thus, we have

$$
\begin{aligned}
Z(t) &= \int_{-f_s/2}^{f_s/2} \td f \ e^{\ti 2\pi ft}\sum_{n\in\mathbb{Z}} \frac 1 {f_s} \hat Z(n) e^{-\ti 2\pi n f/ f_s}\\
&= \sum_{n\in\mathbb{Z}} \hat Z(n) \int_{-1/2}^{1/2} \td f \ e^{\ti 2\pi f (f_s t - n)} \\
&= \sum_{n\in\mathbb{Z}}\hat Z(n) \frac {\sin \pi (f_s t - n)} {\pi (f_s t -n)} \\
&= \sum_{n\in \mathbb{Z}} \hat Z(n) \textrm{sinc} \Big(\frac {t - nT} {T}\Big)
\end{aligned}
$$

{{% /fold %}}

By Nyquist theorem, people could use a finite sampling rate to sample the continuous signal and reconstruct it ideally if we admit there is a frequency upper bound for the signal. For audio, this upper bound is the limit of human ear: (20Hz ~ 20 kHz). The digital audio commonly used the sampling frequency of $44.1\textrm{kHz}$, which was originally used by Sony in 1979. ([wikipedia/44,100_Hz][13]).

## Quantize Amplitude

Technically speaking, the **quantization** has two aspects. First, one need to discretized the amplitude information (usually the voltage signal). Similar to what we did in the time domain, this procedure maps a continuous range quantity into a discretized and finite quantity. Thus the amplitude is possible to be stored and handled in the computer. Second, we need to design a encoding system to represent the physical information into the bits. In this part, we need to standardize the amplitude such that all sounds can be quantized universally.



# Formats of Audio File

# References

[1]: https://en.wikipedia.org/wiki/Acoustics#Early_research_in_acoustics
[2]: https://en.wikipedia.org/wiki/Bianzhong
[3]: https://www.quora.com/Why-isnt-the-transverse-wave-produced-in-liquid-and-gases
[4]: https://en.wikipedia.org/wiki/Wave_equation
[5]: http://musicandcomputersbook.com/
[6]: https://en.wikipedia.org/wiki/Weber%E2%80%93Fechner_law
[7]: https://en.wikipedia.org/wiki/Sound_pressure
[8]: https://en.wikipedia.org/wiki/C_(musical_note)
[9]: https://en.wikipedia.org/wiki/Equal_temperament
[10]: https://arxiv.org/abs/1703.06697
[11]: https://en.wikipedia.org/wiki/Digital_signal_processing
[12]: https://ptolemy.berkeley.edu/projects/chess/eecs124/reading/LeeAndVaraiya11.pdf
[13]: https://en.wikipedia.org/wiki/44,100_Hz
[14]: https://cmtext.indiana.edu/digital_audio/chapter5_quantize.php