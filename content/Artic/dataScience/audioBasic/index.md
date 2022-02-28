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

The systematical research of sounds got rapidly developed after the establishment of mechanics by Galilei and Newton. The classical mechanics treats the sound phenomena as the propagation of mechanical waves and gives birth to the field **acoustics**. In 19th century, **electrical engineering** bring us new technology to handle the sound. The ``electronization'' of sound reached its peak when the computer appeared. 

Nowadays, processing audio data on the computer has been necessary to modern researchers. Understanding how to record, store, and analyze sound signals is the main purpose of this note. The content is only the junior aspects of modern acoustics, but would be good for beginners. 

# Basic Physics of Sound

In physics, sounds, or mechanical waves, is a pattern of the motion in a continuum media. **Acoustics** is a branch of physics to quantitatively study such wave motion. In our daily life, the media for sound is usually the air. In this case, the mechanical wave can only be the longitudinal wave([quora/Why-isnt-the-transverse-wave-produced-in-liquid-and-gases][3]). We could describe this motion by a space-time dependent scalar field called **Sound pressure** or **Acoustic pressure**, which represents the density variation of the air. Mathematically, it is

$$
p = p(\bm{x}, t).
$$

In the ideal situation, the equation of motion for $p$ could be reduced to a linear partial differential equation as ([wikipedia/Wave_equation][4])

$$
\nabla^2 p = \frac 1 {v^2} \frac {\partial^2 p} {\partial t^2}.
$$

The value of $v$ is the speed of sound in this media. 

To the **receiver** of sound, like our ears, the sound signal is a time-dependent function (for example, the sound pressure at a fixed position). In the rest of this note, we will use symbol $Z(t)$ as this precepted signal to distinguish to the real sound pressure field. 

## Quantities to Describe the Sound

Though in principle the function $Z(t)$ has all information we need to know about the signal, it could be convenient to define some quantities to describe the signal. (One reason is that we human actually cannot precept infinity fine details about things.) In this section, we will see how our intuitive impressions connect to function $Z(t)$ mathematically ([musicandcomputersbook][5]).

# Encoding the Sound Data: Digital Audio

# Storing Digital Audio in Computer

# Formats of Audio File

# References

[1]: https://en.wikipedia.org/wiki/Acoustics#Early_research_in_acoustics
[2]: https://en.wikipedia.org/wiki/Bianzhong
[3]: https://www.quora.com/Why-isnt-the-transverse-wave-produced-in-liquid-and-gases
[4]: https://en.wikipedia.org/wiki/Wave_equation
[5]: http://musicandcomputersbook.com/