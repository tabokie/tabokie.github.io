---
layout: blog
title: Readings
---
<span class="hidden-text"># Created: 2020-02-07; Modified: 2023-12-27</span>

<!-- It has become difficult for me (and my browser) to keep up with all the information coming from various feeds. My naive solution is to capture some of those information in written words (summary and after thoughts). I hope those post-processed words can decay slower than sitting around as bookmarks. For that to happen, I set one groud rule: Put more efforts into "capture" than "read", Feynman can probably back me up on this. Keywords or well-thought titles is not mandotory, for I have no intention to build a reverse index over this page.
<p align="right">-- 2021/10/05</p> -->

I don't know how to put it into words yet, but there must be some kind of differences between the objects we lovingly place beside our bed, into our dream, and the ones we put in a workroom. Still, love them or not, one need his tools to realize a vision. And this is my internet corner for tools.
<p align="right">-- 2023/12/24</p>


## 24-01-21

- [They Write the Right Stuff](https://www.fastcompany.com/28121/they-write-right-stuff) (FastCompany, 1996)

> This software is bug-free. It is perfect, as perfect as human beings have achieved. Consider these stats : the last three versions of the program — each 420,000 lines long-had just one error each. The last 11 versions of this software had a total of 17 errors. Commercial programs of equivalent complexity would have 5,000 errors.
>
> John Munson, a software engineer and professor of computer science at the University of Idaho, is not quite so generous. “Cave art,” he says. “It’s primitive. We supposedly teach computer science. There’s no science here at all.”
>
> The two outfits report to separate bosses and function under opposing marching orders. The development group is supposed to deliver completely error-free code, so perfect that the testers find no flaws at all. The testing group is supposed to pummel away at the code with flight scenarios and simulations that reveal as many flaws as possible. The result is what Tom Peterson calls “a friendly adversarial relationship.”
>
> Here is recorded every single error ever made while writing or working on the software, going back almost 20 years. For every one of those errors, the database records when the error was discovered; what set of commands revealed the error; who discovered it; what activity was going on when it was discovered — testing, training, or flight. It tracks how the error was introduced into the program; how the error managed to slip past the filters set up at every stage to catch errors — why wasn’t it caught during design? during development inspections? during verification? Finally, the database records how the error was corrected, and whether similar errors might have slipped through the same holes.
>
> Don’t just fix the mistakes — fix whatever permitted the mistake in the first place.
>
> The process is so pervasive, it gets the blame for any error — if there is a flaw in the software, there must be something wrong with the way its being written, something that can be corrected. Any error not found at the planning stage has slipped through at least some checks. Why? Is there something wrong with the inspection process? Does a question need to be added to a checklist?

- [Ask HN: How did NASA make reliable software if they didn't invent unit tests?](https://news.ycombinator.com/item?id=12121739) (2016)

> Unit testing is not a method of achieving reliability, but of accelerating development. They do not prove that a system functions correctly, which is more in the domain of systems and integration testing. (abtinf)

- [John Hughes - Don't Write Tests [video]](https://www.youtube.com/watch?v=hXnS_Xjwk2Y) (2017) / [John Hughes: Race Conditions, Distribution, Interactions—Testing the Hard Stuff and Staying Sane [video]](https://vimeo.com/68383317) / [John Hughes - How to specify it! A guide to writing properties of pure functions [video]](https://www.youtube.com/watch?v=zvRAyq5wj38) (2019)

Common properties: state invariants (remember to test generated input is valid, or filter invalid input), postcondition, metamorphic properties (multiple inputs with a relationship), inductive properties (sometimes implies completeness), model-based properties (convert to another abstract data structure, "Proof of Correctness of Data Representations")

- [All Your Tests are Terrible... [video]](https://www.youtube.com/watch?v=u5senBJUkPc) (T. Winters & H. Wright, CppCon 2015)

Readability: lean, on point, no boilerplate, everything is pertinent; correct by inspection.

Demonstrability: exemplifying the uses of public APIs and invariants.

Resilience: do not depend on implicit implementation details.

- [Back to Basics: Test-driven Development [video]](https://www.youtube.com/watch?v=RoYljVOj2H8) (Fedor Pikus, CppCon 2019)

The re-creation of input states is an important concern when choosing test type. Unit test is easy to test boundary values. For integration test, only the intersection of input space of all involved modules can be tested. On the other hand, using integration test to create a particular interesting state is often more readable and reviewable.

- On deterministic randomized testing

[Testing Distributed Systems w/ Deterministic Simulation [video]](https://www.youtube.com/watch?v=4fFDFbi3toc) (Will Wilson, 2014)

[Autonomous Testing and the Future of Software Development [video]](https://www.youtube.com/watch?v=fFSPwJFXVlw) (Will Wilson, 2018)

## 23-12-27

- 清五郎, 中药注射口述, Jandan

> 03非典，卫健委推广中药注射治非典，说效果如何如何好，结果我正好发烧去打了这个药物，打的过程当场反应休克，抢救了一天一夜，引发的后遗症叫“特发性震颤”，当时这个症状也没能确诊，因为没有类似案例，为了治这个症状，走上了漫长的求医路，从军区医院看到省会，从省会到北京，中间内外科神经疼痛耳鼻喉全看了，一度确诊为美尼尔氏综合症，差点休学，最终在301神内确诊的，因为正好有类似的确诊案例，而且大夫是个学科带头人博士，从事脑神经相关研究，碰巧了挂到他，要不然换个人也无法确诊，但看完结果也不好，这种药物反应是因为中药液化技术（物理）引起的，损伤不可逆，而且会越来越严重，到老了可能就会并发出更严重的问题，所有的治疗方式都是只能缓解这个过程，然后这个中药注射液只搞了三个月就停了，因为三个月的输液过程当中，全国重度休克反应6000+，我只是其中一例，然后还有死亡数十例，更搞笑的是随着科技发展，后面宣布这个中药注射液是伪命题，完全不适宜注射，然后近年更是全面取消了中药体内注射。但是对我来说，这又有什么意义，我20年受困于此，如今我四十开外，在不远的未来面临的是特发性震颤最终的结局：我会抖的连筷子都拿不住，尿尿都不需要抖小🐔，因为我会一直抖，24小时不间断的抖，至于用手机打字的功能，也早晚会丧失掉。所以你要问我中医如何，我只能说去*****

## 23-12-24

- 理查·伯德的地心探险故事, Zhihu

> 据说安第斯山脉的地下长廊就是其中的一条通道，这个地下长廊长达一千公里，是1960年7月秘鲁考察队在利马以东600公里的安第斯山脉的地下发现的，通向智利和哥伦比亚。这个长廊被联合国教科文组织列为世界文化遗产。另一个出现在联合国教科文组织的世界文化遗产列表中的是厄瓜多尔的塔幽洞群，这个洞群是1976年正式出土的，现在只探索到5公里左右。

## 21-10-08

- [RocksDB in Microsoft Bing](https://blogs.bing.com/Engineering-Blog/october-2021/RocksDB-in-Microsoft-Bing)

> SSD technologies have evolved rapidly in the past decade. It provides cheaper IOPS/dollar compared with HDD, however for workload does not require substantial amounts of random accesses, HDD is still the more economical solution considering the volume/dollar.

> JBOD (stands for Just-a-Bunch-Of-Disks) is one of the fundamental technologies we picked for Web Data table. Compared with RAID0, it gives the ability for software stack to access all disks independently. While RAID0 has lower development costs, throughput and IOPS capacity are much less than JBOD.

Not quite convinced here, RAID0 should also be able to merge IOs on volume basis.

## 21-10-07

- Several posts on global warming

[paper] [An earth system model shows self-sustained thawing of permafrost even if all man-made GHG emissions stop in 2020](https://www.nature.com/articles/s41598-020-75481-z), 2020

[Few realistic scenarios left to limit global warming to 1.5°C](https://phys.org/news/2021-05-realistic-scenarios-left-limit-global.html)

[The Intergovernmental Panel on Climate Change](https://www.ipcc.ch/)

[Global Greenhouse Gas Emissions Data](https://www.epa.gov/ghgemissions/global-greenhouse-gas-emissions-data)

[Sea Level Rise Viewer](https://coast.noaa.gov/slr/)

Some of the most tangible consequences of global warming: drought and extreme weather, decreasing food production, large scale migration (refugee and infectious mosquito), rising sea level.

Self-reinforcing loop of greenhouse gas emission: ocean water warms up and releases CO2, permafrost melts and releases CO2, forest fires.

Counter-measures:

[Wiki: Solar geoengineering](https://en.m.wikipedia.org/wiki/Solar_geoengineering)

[HERE’S HOW WE COULD BRIGHTEN CLOUDS TO COOL THE EARTH](https://spectrum.ieee.org/climate-change)

> Chaos: When the present determines the future, but the approximate present does not approximately determine the future.

## 21-10-06

- [Why do drum sets have ascending toms?](https://www.lowvolumedrumming.org/descending-toms/)

When drum faces are equally tensioned, Larger Diameter = Lower Pitch.

Larger Depth = More Air, Higher Volume, More Resistance, Less Drum Vibration, Less Sustain.

Floor tom transfers vibrations to the groud, thus reducing the sustain.

- [Evolution of random number generators](https://www.johndcook.com/blog/2021/04/29/reinventing-rng/)

[Prospecting for Hash Functions](https://nullprogram.com/blog/2018/07/31/), 2018

[History of the PCG paper](https://www.pcg-random.org/posts/history-of-the-pcg-paper.html), 2017

- [How management by metrics leads us astray](https://jakobgreenfeld.com/metrics)

This post slightly echos with the observability series I read months back: most metrics erases the internal complexity of large system. Good management is really about how to divide and conquer the information contained in such complexity. To some extents, modern management is not that different from governing an empire. Even the book "Soulstealers: The Chinese Sorcery Scare of 1768" is relevant here.

The author proposed "talking to people" as an alternative, that doesn't sound very constructive to me. That ideal leader cherry-picking advice from vast number of subordinates isn't any more realistic than a Philosopher King. Is the solution to observability useful here? Information cardinality might partly maps to how large organization subdivides itself.

Or it's simply a matter of inefficient evaluation system. What if there are a hundred times more metrics, and they all function in parallel, instead of completely submit to priority.

A reminder, I vividly remember reading the same argument (and similar examples) in another article.

- [The most counterintuitive facts in all of mathematics, computer science, and physics](https://axisofordinary.substack.com/p/the-most-counterintuitive-facts-in)

[Wu experiment](https://en.wikipedia.org/wiki/Wu_experiment)

- [How to replace estimations and guesses with a Monte Carlo simulation](https://lucasfcosta.com/2021/09/20/monte-carlo-forecasts.html)

The real use of monte carlo is to calculate approximation when there isn't mathematical tool for the task, e.g. realistic rendering, calculating PI. The examples in this post clearly doesn't qualify.

## 21-10-05

- [Superpack: Pushing the limits of compression in Facebook’s mobile apps](https://engineering.fb.com/2021/09/13/core-data/superpack/)

A few techniques: separately compress instructions and immediates, instructions without immediates have a better chance of repeating themselves; use opcodes as an additional context to entropy code immediates; syntactic sugar.

[paper] [Three approaches to the quantitative definition of information](https://www.tandfonline.com/doi/abs/10.1080/00207166808803030), 1968: information content of a piece of data as the length of the shortest program that can generate that data.

[paper] [Superoptimizer: a look at the smallest program](https://dl.acm.org/doi/abs/10.1145/36177.36194), 1987

[paper] [Code compression](https://dl.acm.org/doi/abs/10.1145/258916.258947), 1997

[paper] [Asymmetric numeral systems](https://arxiv.org/abs/0902.0271), 2009

- [Linux block devices: hints for debugging and new developments](https://www.redhat.com/en/blog/linux-block-devices-hints-debugging-and-new-developments)

How to spawn block devices for testing, how to do integrity checks.

nbdkit: [Better loop mounts with NBD](https://archive.fosdem.org/2019/schedule/event/nbdkit/).

## 21-08-29

- [So You Want To Build An Observability Tool](https://www.honeycomb.io/blog/so-you-want-to-build-an-observability-tool/), 2019; [Observability - A 3-Year Retrosspective](https://thenewstack.io/observability-a-3-year-retrospective/)

> High-cardinality information is the most useful data for debugging or understanding a system. Yet metrics-based tooling systems can only deal with low-cardinality dimensions at scale.

> You usually can’t just look at a dashboard or service map and see which node or service or component is slow because it loops back into itself — when anything gets slow, EVERYTHING gets slow.

> You can ask any of these questions with metrics or monitoring tools …. if you define them in advance.

## 21-06-17

- Measuring and Optimizing Tail Latency, ([YouTube](https://www.youtube.com/watch?v=_Zoa3xkzgFk)), 2017

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
