---
title: "Demystifying Computers: Intro to Computer Architecture"
excerpt: "This post is the first in a series where I try to dissect the inners of computers in just enough detail so you can understand the _magic_ that goes on behind the curtains when you write a _hello world_ program or open up your browser."
header:
 caption: "Architecture"
 image: "https://cdn.statically.io/img/dev-to-uploads.s3.amazonaws.com/i/ad6xwyk6nsy8zrnqqgt6.jpg?w=740px"
 teaser: "https://cdn.statically.io/img/dev-to-uploads.s3.amazonaws.com/i/ad6xwyk6nsy8zrnqqgt6.jpg?w=460px"
---
This post is the first in a series where I try to dissect the inners of computers in just enough detail so you can understand the "magic" that goes on behind the curtains when you write a "hello world" program or open up your browser.

## Introduction
A while back I visited the [Palace of Versailles](http://en.chateauversailles.fr/) and boy was it big. I thought "How could something this big have been someone's house?". One thing's for sure: houses can be very, very different.

The architecture of a computer is much like the architecture of a house. Some houses, like the Palace of Versailles, are unbelievably big; others, however, can be incredibly small. Similarly, some computers, like [mainframes](https://en.wikipedia.org/wiki/Mainframe_computer), are huge. They use a lot of energy and do tons of heavy work. Other computers however, like the [Raspberry Pi](https://raspberrypi.org/) are small, compact and often can only do very specific tasks.

![Comparison raspberry pi and old computer](https://c1.staticflickr.com/1/613/23316947311_d3f751f800_o.png)

## So what is a computer?
Computers are very different from one another and serve different purposes in different ways. So, defining what we're calling a "computer" is super important.

Don't get me wrong though. I think that having a definition is important, but trying to get to a "perfect" definition is impossible, time-consuming and yields some purist discussions that I just can't stand.

So, for the purpose of this post and the next ones, here's the definition I'll use:

> Computers are electronic machines that take inputs, perform operations with those inputs, and produce outputs.

Now that we have a rough definition of what a computer is, let's move on to a more meaty and practical question.

## What are computers made of?
Computers come in a lot of different shapes and sizes, simply because they serve different purposes and are used in different situations. Some computers serve one, and only one, human being, others are used by a lot of people, often at the same time.

So computers will have different architectures depending on the type tasks they were designed to do. But most of today's computers still follow one basic, hella old architecture: [Von Neumann](https://en.wikipedia.org/wiki/John_von_Neumann)'s architecture.

## Von Neumann's Architecture
In 1945 John Von Neumann and his team were trying to create an architecture that would allow people to build computers that were both (1) **general purpose** and (2) **electronic**. At the time, general purpose computers, as well as electronic computers, already existed, but there was not a computer that were both general purpose and electronic at the same time.

A Von Neumann's computer has 4 main components:

- A **processing** unit (that computes operations)
- A **control unit** (which basically tells the processing unit what operation to compute next)
- **Memory**
- **Input/output** devices such as keyboards, mouses (input) and monitors (output).
> **Obs:** Input/output devices are often called "I/O devices"

![Von Neumman's Architecure](https://i0.wp.com/semiengineering.com/wp-content/uploads/2018/09/Screen-Shot-2017-04-26-at-1.08.57-PM.png)

We can now answer our question of what computers are made of:

1. A processing unit
2. A control unit
3. Memory
4. I/O devices

That's it. That's what computers are made of.

## What is your computer made of?
So right now you might be asking yourself:

> What does all this have to do with demystifying computers? I mean, this Von Neumann guy might be important for historical reasons, but my computer doesn't look like that. I have a graphics card, network connection, multiple monitors, SSD,...

Well, computers nowadays are a bit different than what they were in Von Neumann's time, that's for sure. But their architecture is basically still the same.

Let's dissect my laptop real quick, I have an [Acer Aspire E 14](https://www.acer.com/ac/en/MY/content/model/NX.GWTSM.002):

Component|Model
---|---
Processor|(CPU)	Intel i3-8130U
Graphics Card|	Intel UHD Graphics 620
RAM Memory	|4GB DDR4 SDRAM
Storage|1TB Serial ATA
Input Devices|	TouchPad & Keyboard
Display/Monitor	|14" LCD CineCrystal HD

How does that fit into Von Neumann's architecture?

1. Processing and control unit: CPU and Graphics Card
2. Memory: RAM Memory
3. I/O devices: Storage, TouchPad, Keyboard, Display

You see, that's the magic of Von Neumann's architecture. Even though he had no idea that GPUs would be a thing, his architecture still holds up until this day and we build computers based on his architecture.

In the next posts of the series we'll answer questions like "why isn't storage classified as memory but as an I/O device?" or "what are the differences between CPUs and GPUs?" and "how do CPUs add and subtract numbers?".

[Demystifying Computers Series](/demystifying-computers/]
