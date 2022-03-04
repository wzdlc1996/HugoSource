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

## Sampling and Reconstruction

# Storing Digital Audio in Computer

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