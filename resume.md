---
layout: blog
title: Résumé
hide_title_in_page: true
---

# Xinye Tao (`陶新野`)

## Skills

- Programming Language: experienced in C/C++/Rust, familiar with Python/Java/Go/Verilog HDL.
- Development Skills: experienced in parallel programming with C++/Rust/Java, GPU programming with OpenGL and CUDA, well familiar with database and distributed system.
- Language: Chinese (native), English (fluent, CET-6 629).
- Experienced with working remotely and collaborating with remote teams.
- Familiar with public cloud platforms, especially the performance characteristics of the storage stack.

## Experience

**Metabit Trading - Data Platform** (Software Engineer; Oct, 2023 \~ now)

**PingCAP - Storage** (Database Developer; Aug, 2018 ~ Oct, 2023)

  - The most active contributor to [TiKV](https://github.com/tikv/tikv) in the three-year
timespan.
  - Tackled the performance stability issue of TiKV. Implemented a unified physical I/O
scheduling framework that reduces tail latency by 30% during data analyze and scaling.
  - Conducted the early adaptation of TiKV for public clouds.
  - Developed a new log storage engine [Raft Engine](https://github.com/tikv/raft-engine) as a replacement for RocksDB. It reduces I/O bandwidth usage by 30% and tail latency by 20%. On AWS cloud, it improves TiDB transaction throughput by 25%. It has a unit test coverage of 98%. It is also being used by some other commercial databases.
  - Maintaining and optimizing PingCAP’s own [fork](https://github.com/tikv/rocksdb) of RocksDB. Found and fixed multiple performance issues of upstream RocksDB. Implemented major features that enable TiKV to run thousands of RocksDB instances simultaneously on one server.
  - Lead the tech sharing program in the team. Hosted sharing sessions at CNCF Maintainer Track and USTC Event. Lead the research collaboration program with USTC.
  - Optimized CI infrastructure to cut down 80% resource usage and 40% build time.
  - Received Ownership Award in 2022 (top 10/250). Received FY23 annual high performance recognition (top 2/250).

**Microsoft Research Asia - Intelligent Cloud & Edge** (Research Intern; Nov, 2019 – Jun, 2020)

  - Worked on building new-generation database systems with decoupled service components.
  - Implemented and improved data replication for the Fugue system.
  - Received a reward of Excellence from the Stars of Tomorrow Internship Program.

**Ant Financial – OceanBase System Group** (Developer Intern; Jun, 2019 ~ Aug, 2019)
  - Exploring the performance limits of Oracle and PostgreSQL under TPC-C benchmarks.
  - Optimized the coroutine component in [OceanBase](https://www.oceanbase.com/)'s internal library.

**PingCAP – TiKV Engine Team** (Developer Intern; Apr, 2019 ~ Nov, 2019)
  - Worked on making [Titan](https://github.com/tikv/titan), a RocksDB plugin for key-value separation, generally available.
  - Implemented adaptive RPC request batching for [TiKV](https://github.com/tikv/tikv).

**Lab for Internet and Security Technology in Zhejiang University** (Research Intern; Oct, 2018 ~ Mar, 2019)
  - Mentored by A/Prof Kai Bu. Worked on a research project aiming at optimizing durable hardware transactional memory on NVM.

**State Key Lab of CAD & CG** (Developer Intern; Jul, 2018 ~ Sept, 2018)
  - Mentored by A/Prof Hongzhi Wu. Participated in a research project on reflectance acquisition with deep-learning.
  - Implemented a close to real-time physically based renderer using CUDA and NVIDIA [OptiX](https://developer.nvidia.com/rtx/ray-tracing/optix).
  - The renderer was later used to generate data for model training.

## Talks & Articles

- Entering Cloud Storage Era: the ultimate elasticity of data service, 2022 ([slides](https://docs.google.com/presentation/d/10Qa6nOH5Ply502kCfAnnaq2381bh4iwvPZpCvfJKTP0/edit?usp=drive_link))
- Tail, Walk with Me (a comprehensive guide to tail latency), 2022 ([slides](https://docs.google.com/presentation/d/1UinEMajK7qfHb7XwLGtd57ySU1g1x43bQ0L7aW7xXhg/edit?usp=drive_link))
- Adapting TiKV for Cloud Storage, 2022 ([CNCF](https://kccnceu2022.sched.com/event/ytoM/adapting-tikv-for-cloud-storage-xinye-tao-jinpeng-zhang-pingcap))
- Raft Engine in TiKV 6.1, 2022 ([slides](https://docs.google.com/presentation/d/1JLtg1k2hQ130ByclY3F3wpAxHF97-XUJvK58D4ZUnz8/edit?usp=drive_link), [InfoQ](https://www.infoq.com/articles/raft-engine-tikv-database/))
- Best Practices for TiDB on AWS Cloud, 2020 ([blog](https://www.pingcap.com/blog/best-practices-for-tidb-on-aws-cloudblog/), [DZone](https://dzone.com/articles/best-practices-for-tidb-on-aws-cloud))
- Sightseeing OceanBase’s Storage Design, 2020 ([slides](https://docs.google.com/presentation/d/132xVa9SnKPjlDutIabDb8Bw6OW2PR7rLVUlXqA_2tVQ/edit?usp=drive_link))

## Education

**Zhejiang University - Computer Science** (Bachelor; 2016 ~ 2020)
