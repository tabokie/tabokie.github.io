---
layout: blog
title: Today I Learned
---
<span class="hidden-text"># Created: 2020-12-30; Modified: 2021-06-26</span>

{% assign uid = 0 %}
- Linux

{% include folder title='How to write script that can be safely edited on the run?' %}

Method 1:

```bash
source actual-script.sh
```

Method 2:
```bash
{
  # actual script
  exit;
}
```

([StackOverflow](https://stackoverflow.com/questions/3398258/edit-shell-script-while-its-running))

</div></div>

{% include folder title='Create highlight group in vim' %}

```
# echo rule.vim
highlight Group ctermbg=green guibg=green
call matchadd("Group", "foo")
# vim text
:so rule.vim
```
([StackExchange](https://vi.stackexchange.com/questions/5613/search-and-highlight-two-different-strings-in-different-colors))

</div></div>

{% include folder title='Reclaim disk space (on a shared server)' %}

1. delete some files

2. use `sudo lsof +L1` to kill process referencing those files

3. use `tune2fs -m <root-reserved-percentage> <device>` to grab more space from root

</div></div>

- C/C++

{% include folder title='C supports Variable Length Array (VLA)' %}

```c
void initialize(size_t n, size_t m, double A[n][m]);
```

</div></div>

{% include folder title='Forward Declaration' %}

Pros: hide implementations (declare `XXImpl`), circular dependence, faster compilation

Cons: can't use alias, potential inheritance is elided, delete an incomplete class is UB

</div></div>

{% include folder title='Evaluation Interleaving' %}

`f(std::shared_ptr(new A()), g())` is risky if `g()` can be interleaved between object allocation and `shared_ptr` initialization.

This is explicitly prohibited after C++17 ([StackOverflow](https://stackoverflow.com/questions/38501587/what-are-the-evaluation-order-guarantees-introduced-by-c17/46472497#46472497))

</div></div>

- Rust

{% include folder title='Tiny details' %}

- `_` variables are dropped immediately
- Overflow check is disabled in release build

</div></div>
