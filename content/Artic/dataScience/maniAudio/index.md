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

**Sound** is an important media of us, humans, to interact with the environment. People used sound to encode information and implement communication even in the early age of humans. The ancient research of sound was widely spread among various civilizations. In ancient Greek, philosopher Pythagoras(毕达哥拉斯) discussed music sounds with the string and Aristotle(亚里士多德) made the naive understanding of the sound as a wave motion in the air ([wikipedia/early-research-in-acoustics][1]). In ancient China, music had been used and studied in the Neolithic age and developed in the Shang(商) Dynasty (see ([wikipedia/Bianzhong][2])). The research of sound generation and propagation appeared in the Han(汉) Dynasty at the latest.

> 生人所以言语吁呼者, 气括口喉之中, 动摇其舌, 张歙其口. ... 箫笙之管, 犹人之口喉也，手弄其孔，犹人之动舌也. --论衡 (王充, 东汉)

The systematical research of sounds got rapidly developed after the establishment of mechanics by Galilei and Newton. The physical understanding of sound gave birth to the research of acoustics by dealing with mechanical waves. Nowadays, acoustics has been one of the most important fields of the applied science. It covers many aspects of our life and military like noise control, sonar, and ultrasound.

Processing audio data on the computer has been necessary for modern researchers. Understanding how to record, store, and analyze sound signals is the main purpose of this note. The content is only the junior aspects of modern acoustics, but would be good for beginners. 

# Knowledge of Sound

## Sound in Human's View

Sound can be roughly separated into two classes as **music** and **noise** in the psychological perception. The research of the former leads to the establishment of music theory, with the language of notes and other concepts. Generally speaking, the music is viewed as multiple sequences of the notes with various duration, colors, and amplitudes. The study of noise is seldom included in this framework, but is easy to discuss in the next section, the physics of sound. 

People think the notes in music theory have different height. Now we have known that the height means the frequency of the acoustic wave. Thus, in this view, the sound is the collection of temporal sequences of single frequency simple wave. Apart from the frequency, we can also recognize the strength of the tone. This is another quantitative aspect of the music sound. There are also many unquantitative parameters in the music like the timbre, type of instrument, emotion, and so on. In the expert software for audio processing, these aspects would be totally considered. Mathematically, we can write the description of the sound in human's view as

$$
f_i : T_n \rightarrow (d, A, f, \theta), \ ; \ i=1,\cdots.
$$

The set $T_n$ is the discretized time domain by the **meter** of music, like $T_n = \{0, dt, 2 dt ,\cdots\}$. At each time, there is a unit sound described by `duration` of $d$, `amplitude` $A$, and `frequency` $f$ with other aspects by $\theta$. Playing these channels $f_1,\cdots$ parallelly forms the music we hear.

## Basic Physics of Sound

# Sound in Our Computer

## Storing Audio Data

## Analyzing Audio Data

# Manipulating Audio Data with Python

# References

[1]: https://en.wikipedia.org/wiki/Acoustics#Early_research_in_acoustics
[2]: https://en.wikipedia.org/wiki/Bianzhong