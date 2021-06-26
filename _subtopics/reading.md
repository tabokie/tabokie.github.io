---
layout: blog
title: Readings
---
<span class="hidden-text"># Created: 2020-02-07; Modified: 2020-06-24</span>

Buffer pool for daily digest (paper and blog).

## 21-06-17

- Measuring and Optimizing Tail Latency, 2017.

Noise, queueing, work.

## 21-06-14

- K2: Work-Constraining Scheduling of NVMe-Attached Storage, 2019.

Limiting inflight IO requests, the same strategy is also used by ScyllaDB. It has penalty on throughput because the effectiveness of upper-level scheduling is inversely proportional to the amount of requests visible to hardware driver. In the evaluation results, read is more sensitive to concurrency, e.g. 50% bandwidth drop when only allowing 8 inflight requests.

One thing though, I don't think a cross-core queue is a must to implement a strict priority scheduler. It seems the paper didn't research to what extend this global queue contributes to IO latency.

## 21-06-06

- [Warehouse-Scale Computing: Entering the Teenage Decade](https://dl.acm.org/doi/10.1145/2000064.2019527), 2011.

We need interactive intelligence, thus warehouse-scale computer.

Wimpy cores can't support request level parallelism, needs help of multi-threading, which incurs dev and maintain costs.

Flash has longer tail compared to spinning disk, but it's inevitable because spinning disk has volume IOPS upper bound. (Why not RAID? Not very convincing)

PUT(Power Usage Effectiveness) is good already. Now we care more about energy proportionality, it turns out a fully-utilized computer is the most energy-efficient and infra-efficient(power plant etc).

The key to improving utilization is resource disaggregation. At that time, slow disk can already be accessed remotely without sacrificing performance, but not the case for flash or memory. Software stack is optimized for bandwidth not latency, partly motivated by used-to-be slow disks and network. They must be reexamined because tail latency becomes critical at large scale.

An impressive showcase: inter-arrival time of root node and tree node.

- [Google: Taming The Long Latency Tail - When More Machines Equals Worse Results](http://highscalability.com/blog/2012/3/12/google-taming-the-long-latency-tail-when-more-machines-equal.html), 2012.

A text summary of the talk above.

## 21-06-05

- The Tail at Store: A Revelation from Millions of Hours of Disk and SSD Deployments, FAST, 2016. (10 min)

Good example of tail latency amplification in parallel pipeline (RAID).

## 21-05-29

- On the Performance Variation in Modern Storage Stacks, FAST, 2017. (10 min)

The title is quite click-baity. For a non-native speaker such as myself, variation seems pretty equivalent to instability. It is actually about improving the reproducibility of benchmarks on storage stack.

## 21-03-27

- Fast key-value stores: An idea whose time has come and gone, HotOS, 2019. (10 min)

RInK (Remote In-memory Key-value store) serves as buffer (short-lived data) or cache. Main idea is to resurect domain-sepecific cache, quite a boring read.

- Latency Lags Bandwidth, 2004. (20 min)

For CPU, bandwidth refers to MIPS (million instructions per second), latency refers to latency of instructions.

Latency helps BW, while BW hurts latency (queueing and larger chip size), which is the essential reason why this rule of thumb will be applicable in foreseeable future.

Ways to speedup latency: caching, replication(this is brought up in "The tail at scale" too), prefetching.

## 21-03-16

- Understanding Manycore Scalability of File Systems, ATC, 2016. (15 min)

"The main bottleneck can be found in RocksDB itself, synchronizing compactor threads among each other." I didn't see how compaction threads can be the bottleneck for RocksDB overwrite workload above 10 cores.

## 21-03-15

- Disk failures in the real world (What does an MTTF of 1,000,000 hours mean to you?), FAST, 2007. (15 min)

Statistics analysis of disk failures. Unlike previous model (where disk has three different failing periods: early-failure, useful-life, wearout), wearout seems to be the most determining factor in any year of operation.

- The tail at scale, 2013. (20 min)

## 21-03-14

- Causality is Graphically Simple, 2020. (10 min)

Graphical overview of distributed event ordering: vector clocks and etc. Skimmed through.

- C++ and the Perils of Double-Checked Locking, 2004. (20 min)

An old but still interesting read. Its main emphasis is on the C/C++'s specification of `abstract machine` and instruction order guarantee:

> (C++ Standard)
> The observable behavior of the [C++] abstract machine is its sequence of reads and writes to volatile data and calls to library I/O functions.

(smells a lot like pure function concept in functional programming language)

This means, to ensure singleton's allocation completes before modifying the singleton pointer, one must insert `volatile` temporary variable to avoid any possible reorder. And here `volatile Object* volatile ptr` isn't an overkill.

But hey, even this isn't nearly enough. C++ doesn't guarantee the instruction order beyond the single-threaded abstract machine. And `volatile` variables only acquire those benefits when it's properly initialized (which can be worked around by data member casting).

To this date, standard's memory order should be a portable solution to this issue. But last I checked standard didn't mention anything about instruction order guarantee brought by memory barrier. Needs investigating.

- The 5 Minute Rule for Trading Memory for Disc Accesses and the 5 Byte Rule for Trading Memory for CPU Time, 1986. (15 min)

> In all fields, the problem is to find the question.

Love it. How things are differently perceived when high performant server only has 10MB of RAM. Make a good interview question about estimation. I wonder if the modern VM sizing still cater to its target workloads in such economical ways.

One thing that isn't as intuitive though, is they models the disk access price by dividing disk price to IOPS. Say we have certain amount of data, that naturally makes the lowerbound for disk capacity. Indeed, adding disks on this basis (through RAID) will increase cost and IOPS, but baseline cost for storing certain amount of data should be excluded from the calculation. It's basically what cloud vendors are doing now: pricing separately for capacity and performance including IOPS and bandwidth.

> The 80-20 rule implies that about 80% of the accesses go to 20% of the data, and 80% of the 80% goes to 20% of that 20%.

## 21-02-28

- End-To-End Arguments In System Design, 1984. (10 min)

Bottom-up reliability is not ecomonical in distributed system, identify the "end" first.
