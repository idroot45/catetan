---
title: "Demystifying Computers: GPU (Graphics Processing Unit)"
excerpt: "This post is part of a series where I try to dissect computers in just enough detail so you can understand the **magic** that goes on behind the curtains when you write a **hello world** program or open up a browser."
header:
 image: "https://cdn.statically.io/img/dev-to-uploads.s3.amazonaws.com/i/s92st4vwrlxb0bo6xw0n.jpg?w=720px"
 caption: "Graphic Card"
 teaser: "https://cdn.statically.io/img/dev-to-uploads.s3.amazonaws.com/i/s92st4vwrlxb0bo6xw0n.jpg?w=460px"
---
Last post we saw that CPUs today have more than one core, which is roughly a part of the chip that calculates things. With multiple cores, we can now calculate multiple things at once.

We also saw that simply adding a bunch of cores onto a CPU wouldn't necessarily improve its speed because tasks might be dependent on one another (blocking).

So right now you might be thinking:

> Hey Gabe, so we're good the way we are right? I mean, we don't need nor does it make sense to have a machine that can compute thousands of threads simulta--

## Introducing GPUs
GPUs are exactly that. They are processing chips that have lots and lots of little cores capable of processing thousands of threads simultaneously. But the question remains:

> If most tasks can't be broken down to a lot of smaller ones, why would we need a computer that's capable of calculating a lot of smaller tasks in the first place?

The answer is here:

{% include video provider="youtube" id="-P28LKWTzrI" %}

I really like the analogy on this video as it shows why GPUs were invented: to calculate graphical stuff (although today they're used to other things as well, more on that later). As it turns out, graphical stuff is a type of task that has very few dependencies and so can be heavily parallelized. Just think about calculating colors and other things for millions of individual pixels, none of which depend on one another.

However, I still think the video lacks the other side of the analogy: cooking. Imagine you were to make a machine that automatically makes you breakfast (including doing the dishes). It can't fry your eggs at the same time as it cracks them open and it can't do the dishes if the breakfast is not done (and eaten) yet!

What I mean is this: GPUs are great for calculating the colors of millions of pixels in a screen, but they do not perform well when doing heavy, tightly coupled tasks (because a GPU core are not as powerful as a CPU core).

## The calculations a GPU _really_ does
So I gave you an intuition behind what a GPU does when it's computing graphical stuff, but I think something more realistic is in order.

An image in a screen is just a rectangle with lots and lots of pixels, each of which has a color and combined they form an image. The more pixels you have on your screen (pixel density), the more realistic the image looks because the squares are tinier and it's harder to notice them with the naked eye.

To represent the physical pixels of a screen programmers had the idea of representing their colors as numbers on a matrix. Each number represents the intensity of the light in that pixel.

Let's imagine we have a gray scale display (no colors), here's how you'd create and plot a square gray scale image in Python:
```
from PIL import Image # for image plotting
import numpy as np # to build the array

# Create empty 512x512 matrix
mat = np.zeros((512, 512))

# Fill matrix with a pattern
for i in range(0, 512):
    for j in range(0, 512):
        mat[i][j] = i*j

# Print matrix in grayscale
im = Image.fromarray(mat, 'L')
im.show()
```
![Plotted matrix](https://cdn statically.io/img/dev-to-uploads.s3.amazonaws.com/i/m7rw94x6uymxrpiu3azy.png)

## Other uses
Now originally GPUs were really "Graphics Processing Units", but actually they were just hardware that was good to do matrix operations. As it turns out, a lot of newer fields need hardware that does that, notably machine learning and bruteforcing such as bitcoin mining.

## Parallelism vs Concurrency
I've been using the term "parallelism" for quite a while now and I think it's time we clear this out.

As every discussion involving definitions, there's a lot of discussion around this. Here's how I'll define these two:

> **Parallelism**: Performing multiple tasks at the same time.
> **Concurrency**: Decoupling tasks in a bigger task.

This means that a program can be concurrent (be divided on different threads, for example) and not run in parallel.

The best example I can think of is fetching data on a Hard Drive. This is one of the slowest tasks your computer does and, compared to other operations like adding two numbers, it's extremely slow. I mean 1000x slower.

When the CPU asks the Hard Drive for some data, it doesn't wait around until it receives the data. Instead, a concurrent program could context switch out of the CPU while the data isn't retrieved, allowing it to make 1000 other operations and, when the data is finally ready, it resumes execution of the original task. In this case, the Hard Drive data fetching and the other calculations are decoupled, making the execution concurrent.

## References
What’s the Difference Between a CPU and a GPU? (Nvidia Blog) [link](https://blogs.nvidia.com/blog/2009/12/16/whats-the-difference-between-a-cpu-and-a-gpu/)

Concurrency is not Parallelism by Rob Pike [video](https://www.youtube.com/watch?v=oV9rvDllKEg
