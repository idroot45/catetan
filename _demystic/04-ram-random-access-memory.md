---
title: "Demystifying Computers: RAM (Random Access Memory)"
excerpt: "This post is part of a series where I try to dissect computers in just enough detail so you can understand the **magic** that goes on behind the curtains when you write a **hello world** program or open up a browser."
header:
 image: "https://cdn.statically.io/img/dev-to-uploads.s3.amazonaws.com/i/jlur0iz7wppqugnrr0i3.jpg?w=720px"
 teaser: "https://cdn.statically.io/img/dev-to-uploads.s3.amazonaws.com/i/jlur0iz7wppqugnrr0i3.jpg?w=460px"
 caption: "RAM"
---
> {{ page.excerpt }}

We've talked about CPUs and how they get data from memory and compute things with it and then write to memory. But how exactly do reads and writes occur from the memory's perspective? Let's start with the most important question.

## What is Memory?
When I say memory I'm referring to memory as defined in Von Neumann's Architecture. For most recent computers, this is called the RAM, or Random Access Memory.

The RAM is the memory your computer uses to do all the major tasks. Every running process loads its information into the RAM and, while running, that's where that information lives. Once the process is done, the data is erased from the RAM.

## Random-access memory?
When I was first learning about RAM I thought the **random** meant you actually couldn't control which part of the memory would be accessed, and that you had to get a random position of the memory over and over again until you got what you wanted (much like [bogosort](https://www.youtube.com/watch?v=DaPJkYo2quc)).

That's not how it works. Random in RAM means you can access any position of the memory with the same time cost, unlike Hard Drives in which you have to wait until the disk has spun to where you want to read and then read it (meaning if you're lucky to already be where you want to read then you don't have to wait).

## RAM vs Hard Drives
RAM is what we call a **volatile** memory, meaning every time you turn off or restart your computer it gets completely erased. The way we currently keep information between restarts are Hard Disk Drives (HDDs or HDs) and Solid-State Dives (SSDs). Theses devices can store information for far longer than the RAM, so every time you open your browser (or any other installed software for that matter) for the first time after a restart, its information gets loaded from the HDD to the RAM, then the data is used and altered in RAM, and once you're done that new data gets updated on the HDD.

Now the question is:

> Why bother? Why don't we only have HDDs (or SSDs) and use them directly?
> Why do we have to use this weird RAM in the middle of things?

The answer is, just like cache vs RAM in CPUs, RAM is roughly 100 times faster than HDD to access. But you know what? I've always heard that, but how about we actually test it? I did a [quick code](https://gist.github.com/gmelodie/bcdb30455812301d69d2e3d9e9971488) to measure the access times of RAM vs HDD. To access the RAM we simply write to an array and read from it:
```
def get_ram_time():
    arr = [i for i in range(1000)] # Create array
    start = time.time() # Start counting time
    a = arr[2]          # Access the array
    end = time.time()   # Stop counting time

    return end - start
```
For the HDD access I created a file hello.txt (every file lives on the HDD) with some text inside and tried reading from it:
```
def get_hdd_time():
    start = time.time()    # Start counting time
    fp = open('hello.txt') # Open file for reading
    fp.read()              # Read file
    end = time.time()      # Stop counting time

    return end - start
```
Finally I call these functions 100 times and get the average access times:
```
samples = 100
total_hdd_time = 0
total_ram_time = 0

for i in range(samples):
    total_hdd_time += get_hdd_time()
    total_ram_time += get_ram_time()

print(f"Average HDD time:{format(total_hdd_time/samples, '.9f')}s")
print(f"Average RAM time:{format(total_ram_time/samples, '.9f')}s")
```
Here's the result for 100 samples:
```
Average HDD time: 0.000018055s
Average RAM time: 0.000000298s
```
So it turns out that accessing the RAM is indeed about 100 times slower than RAM on average.

## Types of RAM
Just like humans, not all RAM chips are made equal. DRAM (Dynamic RAM) uses capacitors to store the data, which are cheaper but slower because they need to be refreshed from time to time. SRAM (Static RAM), however, does not need to be constantly refreshed. But, because DRAM is considerably cheaper, it's the prevalent type of RAM today for personal computers.

**SDRAM (Synchronous Dynamic RAM)** synchronizes the RAM with the computer's clock so that the RAM controller can predict at which cycle the requested data will be ready and so the CPU can optimize tasks better. I like to think of this as having lunch at my grandma's. At my grandma's, lunch is always served at 12pm. This means that I can prepare for it better instead of interrupting some extremely important chess game with grandpa just because we started it 2 minutes before lunch was ready.

**DDR (Double Data Rate)** is a technique in which the amount of data transferred in one clock cycle is doubled. I'll not go into detail about this, but it's important to know what it stands for as most RAMs today are DDR3 and DDR4.

Finally, **VRAM (Video RAM)** is a dedicated RAM for the GPU. It holds all the data that the GPU is operating over.

## Swapping
What if you computer runs out of RAM? What then?

Swapping is a technique where you set a partition of your Hard Drive to act like RAM when the actual RAM is full. So let's say you have 4GB of RAM and you need to load 5GB of data into the RAM. If you have swap set up the extra 1GB would get loaded to the Hard Drive.

Now this is no magical solution. Just because you set up 50GB of swap space that doesn't mean you actually have extra 50GB of RAM. You can't expect the swap to perform as fast at the RAM (because it's not RAM). Ideally, you want to have enough RAM so you don't even need swapping (because the RAM is never full).

## More RAM or Faster RAM?
In general, more RAM is better than faster RAM. RAM is supposed to be a fast memory, but not even the oldest RAM technologies in the market are close to being as slow as a Hard Drive or an SSD. So your first goal when assembling a computer is not buying the fastest RAM possible, but rather making sure you'll almost never need to swap out because of lack of space on your RAM (because that means downgrading to Hard Dive speed, which is way worse than a slower RAM).

As we've touched in Hard Drives and SSDs, I think some further explanation on I/O devices is in order. In the next post we'll talk about how this "external" devices interact and why are they treated differently as well as the hacks we've created to make them as efficient as possible.

[Demystifying Computers Series](/demystifying-computers/)

## References
- RAM Access Time vs HDD Access Time [link](https://www.webopedia.com/TERM/A/access_time.html)
- Different Types of RAM (Random Access Memory) Explained [link](https://www.guru99.com/different-types-ram-random-access-memory.html)
- How Much RAM Do You ACTUALLY Need? (2020) [video](https://www.youtube.com/watch?v=OT-qAQLGkGo)
- A Quick and Dirty Guide to RAM: - What You Need to Know [link](https://www.makeuseof.com/tag/quick-dirty-guide-ram-need-know/)
- Understanding RAM and DRAM Computer Memory Types [link](https://www.atpinc.com/blog/computer-memory-types-dram-ram-module)
