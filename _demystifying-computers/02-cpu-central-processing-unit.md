---
title: "Demystifying Computers: CPU (Central Processing Unit)"
excerpt: "This post is part of a series where I try to dissect computers in just enough detail so you can understand the __magic__ that goes on behind the curtains when you write a **hello world** program or open up a browser."
header:
 image: "https://cdn.statically.io/img/dev-to-uploads.s3.amazonaws.com/i/c0weqnjbb9b4xm2s0uik.jpg?w=720px"
teaser: "https://cdn.statically.io/img/dev-to-uploads.s3.amazonaws.com/i/c0weqnjbb9b4xm2s0uik.jpg?w=460px"
---
> {{ page.excerpt }}

Let's say you love playing games and finally have the money to assemble the definitive gaming PC. You start by (what seems like) the most important part of the computer: the CPU, or the processor.

> Obs: There is a discussion about [whether CPUs and processors are the same thing or not](https://superuser.com/questions/1041370/definition-of-a-processor-vs-core-multiprocessor-vs-multicore), but for the sake of this post I'll just use these terms interchangeably

You go to [Amazon.com](https://www.amazon.com/) and type in "CPU" on the search bar. What pops up makes you feel like a total moron -- or at least that's how I feel being a CS bachelor and not understanding even half of that gibberish.

Here are the first results I get when searching for "CPU" at Amazon:

> AMD Ryzen 7 3700X 8-Core, 16-Thread Unlocked Desktop Processor with Wraith Prism LED Cooler
> 
> Intel Core i7-9700K Desktop Processor 8 Cores up to 4.9 GHz Turbo unlocked LGA1151 300 Series 95W
> 
> AMD Ryzen 5 3600 6-Core, 12-Thread Unlocked Desktop Processor with Wraith Stealth Cooler

## A much more powerful calculator
The way I see it, a CPU can be reduced to the ALU, the Arithmetic Logic Unit. Most of the other mechanisms a processor has serve to support the ALU do its job as quickly and efficiently as possible. Sure, this is a simplification of what a CPU does (it also performs a bunch of I/O operations and all), but I think looking at it this way helps us understand the basics.

The tasks a standard ALU performs are Integer Arithmetic and Bitwise Logic. **Integer Arithmetic** is simple math operations like adding, subtracting, multiplying and dividing using integer numbers.

**Bitwise Logic** is the type of operations done in singular bits rather than integer numbers. For example, a bitwise AND operation works like so:

First bit|Second bit|AND result
---|---|---
0|0|0
0|1|0
1|0|0
1|1|1

So for exmple
```0011 AND 0101 = 0001```
Other examples of bitwise operations are OR, NOT and XOR (exclusive OR).

> Note: CPUs often also have an FPU, or Floating-Point Unit, which does similar tasks as the ALU, but with floating-point (non-integer) numbers.

## Power is never enough
Imagine you work in a bakery and you bake bread all day long. On your first day you manage to bake two batches. On your second day, you bake 5 batches. On your third day, you bake 7 batches.

Although in the beginning you used to bake almost double the batches of the previous day, at some point you'll reach a limit, right? I mean you can't bake double the bread forever.

Moore's """law""" is exactly like that:

> [Moore's Law](https://en.wikipedia.org/wiki/Moore%27s_law) is the observation that the number of transistors in a dense integrated circuit (IC) doubles about every two years.

This means that, according to Moore's law, the computing power of a processor should double once two years because transistors, the basic component of integrated circuits, would get twice as smaller and we'd be able to fit double the number of transistors in the same space.

But, as we quickly saw, there is a physical barrier: at some point we simply won't be able to produce tinier transistors. The solution? Instead of trying to make a single processor faster, we can also double the number of "processors" (cores).

## Cores
A **core** is a part of a processor that basically contains an ALU and other supporting pieces around it, but which shares some resources with other cores in the same processor.

Putting an extra core in a processor enables, theoretically, double the processing power (now you can do 2 operations at once). However, some operations might be dependent in one another. Let's say you have to add a number in the memory with another number in the memory. Retrieving the numbers from memory can be done in parallel, but adding them is dependent on the numbers to be retrieved in the first place.

> **Note**: An interesting discussion here is **parallelism** vs **concurrency**. Don't worry too much about this right now though, we'll dive deeper into that when we talk about GPUs on the next post.

So, quickly coming back to one of our CPU examples:

> AMD Ryzen 7 3700X 8-Core, 16-Thread Unlocked Desktop Processor with Wraith Prism LED Cooler

This one has 8 cores, meaning it can, in theory, execute 8 little independent tasks at once.

Great! Now we have multiple cores and can run stuff muuuuch faster than we did before.

But how does the processor know which tasks can be run before others or in parallel to others?

It doesn't, you have to tell it to. And you do so by spawning multiple threads on your programs to do different tasks.

## Threads
If cores are the fundamental processing unit of a processor, threads are the fundamental tasks that run in a core.

Whenever you open up a terminal or fire up League of Legends, a **process** is being created and ran. **Threads** are a way to subdivide a process so that it performs better in multi-core processors, that is, processors that have more than one core.

> **Note**: You might have stumbled upon the word Hyperthreading. **Hyperthreading** is a technique to enhance thread scheduling by increasing the amount of independent tasks on the processor so that there's the least amount of idle time possible on the cores. This could give the end user the impression that there are more (virtual) cores than there actually (physically) are. This is why you might see a processor that has 6 virtual cores but only 4 physical ones.

## Clock
The number of cores a processor has is not the only characteristic that impacts its speed. The **clock** is the number of cycles the CPU processes per second (e.g. 4.9 GHz means 49 000 000 000 cycles/second).

You can think of a CPU cycle as the period of time in which your CPU can accomplish a small task. So if a thread has three operations, it'll take roughly three cycles to accomplish them.

In general, the more cycles a processor can accomplish per second, the more operations it can do (the faster the CPU).

## Cache
Last but not least we have cache. **Cache** is a type of memory that is very physically close to the processor and, because of that, is very fast to access. Whenever the processor needs some information, instead of looking at the main memory of the computer (which takes a lot of time in terms of super fast machines), it first looks at the cache and, if it doesn't find the information it's looking for, then it goes all the way to the main memory and retrieves it.

Think of it this way: imagine the memory of your computer is like a supermarket and the cache is your fridge. Whenever you want something to eat, you go to the fridge and see if it's there (because it's faster and we're super lazy). If you don't find it, you go to the supermarket, buy a bunch of it and keep some in your fridge so you don't have to go to the supermarket for a while.

That's what happens with the cache. It's a way to reduce the number of times the processor needs to access the main memory of the computer by keeping more relevant data closer to the processor.

This is not an extensive list of the features and components of CPUs. CPUs are different, specific and have a lot of little details that make them very different from one another and complex overall. The aim of this post was to shed some light into what happens inside them in a general way.

In the next post we'll discuss perhaps the most obscure and yet widely used piece of hardware: GPUs

[Demystifying Computers Series](/demystifying-computers/)

## Further readings
**General explanations**
- Computer Processors Explained (Official Dell Tech Support) [video](https://www.youtube.com/watch?v=lxnlyJYZ6Vw)
- Definition of a processor vs core (multiprocessor vs multicore) [link](https://superuser.com/questions/1041370/definition-of-a-processor-vs-core-multiprocessor-vs-multicore)
- Central Processing Unit [Wikipedia](https://en.wikipedia.org/wiki/Central_processing_unit)
**Arithmetic Logic Unit (ALU)**
- Arithmetic Logic Unit (Wikipedia) [link](https://en.wikipedia.org/wiki/Arithmetic_logic_unit)
**Hyper Threading**
- What is Hyper Threading Technology as Fast As Possible [video](https://www.youtube.com/watch?v=wnS50lJicXc)
- Hyper Threading Explained [video](https://www.youtube.com/watch?v=lrT9Bl0MCXQ)
