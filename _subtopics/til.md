---
layout: blog
title: Today I Learned
---
<span class="hidden-text"># Created: 2020-12-30; Modified: 2020-12-30</span>

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
{% include folder title='Forward Declaration in C++' %}

Pros: hide implementations (declare `XXImpl`), circular dependence, faster compilation

Cons: can't use alias, potential inheritance is elided, delete an incomplete class is UB

</div></div>
