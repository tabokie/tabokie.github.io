---
layout: blog
title: Tail Latency
---

<span class="hidden-text"># Created: 2021-06-27; Modified: 2022-08-14</span>

> This page started out as a transcript of the internal sharing I gave at PingCAP titled "Tail, Walk with Me" ([Google slides](https://docs.google.com/presentation/d/1UinEMajK7qfHb7XwLGtd57ySU1g1x43bQ0L7aW7xXhg)).

## Measuring Tail

It is important to measure (and optimize) tail latency:
- Tail

- [How NOT to Measure Latency [video]](https://www.infoq.com/presentations/latency-response-time/) - Jil Tene, 2016
- [Throughput vs Latency and Lock-Free vs Wait-Free](http://concurrencyfreaks.blogspot.com/2016/08/throughput-vs-latency-and-lock-free-vs.html) - Concurrency Freaks, 2016

Common measurements, they are often enlisted in QoS requirements:
- p95, p99, ...
- p99/avg
- standard deviation
- [norm](https://en.wikipedia.org/wiki/Norm_(mathematics))

## Tails in Service Time

Service time refers to the time spent in the actual processing of the request.

- Uneven request size

Different requests require different amount of work, which is correlated with service time.

- Environmental causes

The software/hardware environment can sometimes be *interrupted or paused*. It usually happens when some remote data is requested (cache miss, NUMA [1]), or during garbage collection (JVM, SSD).

The hardware environment, in particular, can be *slowed down* thanks to variable clock rate. The clock-down can be traced down to power management, thermal throttling, or even changes of physical condition ([2]).

The low-level infrastracture is mostly likely *shared* to execute other tasks. Each sharable unit has a queue inside that amplifies the service time. E.g. CPU (threads, registers), external devices (disk, network switch), OS locks.

\[\_\]: [Utilization is Virtually Useless as a Metric [pdf]](www.hpts.ws/papers/2007/Cockcroft_CMG06-utilization.pdf) - Netflix, 2015<br/>
\[1\]: [Latency implications of virtual memory](https://rigtorp.se/virtual-memory/) - Erik Rigtorp, 2020<br/>
\[2\]: [Shouting in the Datacenter [youtube]](https://www.youtube.com/watch?v=tDacjrSCeq4) - Brendon Gregg, 2009<br/>

## Tails in Queueing

## Tails in System

Here "System" refers to a composite service built on top of several black box service units. Like Lego system, there are limited ways to combine several units, even though they can sum up quite differently.

### Pipeline

Each task is processed by multiple units in sequence.

### Parallel

Each task is divided into multiple sub-tasks which gets processed in parallel.

<!-- On tail latency:

If a request is too slow:
- Cancel it
- Re-issue it
- Defer it

Pipelined queueing

Parallel queueing
 -->