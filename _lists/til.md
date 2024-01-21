---
layout: blog
title: Today I Learned
---
<span class="hidden-text"># Created: 2020-12-30; Modified: 2021-06-26</span>

{% assign uid = 0 %}
- Linux

{% include folder_open title='How to write script that can be safely edited on the run?' %}

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

{% include folder_close %}
{% include folder_open title='Create highlight group in vim' %}

```
# echo rule.vim
highlight Group ctermbg=green guibg=green
call matchadd("Group", "foo")
# vim text
:so rule.vim
```
([StackExchange](https://vi.stackexchange.com/questions/5613/search-and-highlight-two-different-strings-in-different-colors))

{% include folder_close %}
{% include folder_open title='Reclaim disk space (on a shared server)' %}

1. delete some files

2. use `sudo lsof +L1` to kill process referencing those files

3. use `tune2fs -m <root-reserved-percentage> <device>` to grab more space from root

{% include folder_close %}
{% include folder_open title='Serve a web page' %}

```
python2 -m SimpleHTTPServer <port>
python3 -m http.server
```
{% include folder_close %}

- C/C++

{% include folder_open title='C supports Variable Length Array (VLA)' %}

```c
void initialize(size_t n, size_t m, double A[n][m]);
```

{% include folder_close %}
{% include folder_open title='Forward Declaration' %}

Pros: hide implementations (declare `XXImpl`), circular dependence, faster compilation

Cons: can't use alias, potential inheritance is elided, delete an incomplete class is UB

{% include folder_close %}
{% include folder_open title='Evaluation Interleaving' %}

`f(std::shared_ptr(new A()), g())` is risky if `g()` can be interleaved between object allocation and `shared_ptr` initialization.

This is explicitly prohibited after C++17 ([StackOverflow](https://stackoverflow.com/questions/38501587/what-are-the-evaluation-order-guarantees-introduced-by-c17/46472497#46472497))

{% include folder_close %}

- Rust

{% include folder_open title='Tiny details' %}

- `_` variables are dropped immediately
- Overflow check is disabled in release build

{% include folder_close %}

- Regex

{% include folder_open title='Avoid self-reference' %}

I have a process table and I want to grep it for the phrase "banana":

```
ps auxww | grep banana

root 87 Jun21 0:26.78 /System/Library/CoreServices/FruitProcessor --core=banana

mikec 456 450PM 0:00.00 grep banana
```

Argh! It also greps for the grep for banana! Annoying!

Well, I'm sure there's pgrep or some clever thing, but my coworker showed me this and it took me a few minutes to realize how it works:

```
ps auxww | grep [b]anana

root 87 Jun21 0:26.78 /System/Library/CoreServices/FruitProcessor --core=banana
```

Doc Brown spoke to me: "You're just not thinking fourth dimensionally!" Like Marty, I have a real problem with that. But don't you see: [b]anana matches banana but it doesn't match 'grep [b]anana' as a raw string. And so I get only the process I wanted!

([Hacker News](https://news.ycombinator.com/item?id=27774584))

{% include folder_close %}

- Word

{% include folder_open title='Using fields' %}

Fields are procedural texts that are automatically generated based on the context. Take `PAGE` as an example, it is a field representing current page number. You can insert it via `Insert > Parts > Field > Page`, or manually type in the script `{ PAGE }` (the braces are inserted using `Ctrl+F9`, need to right click `Update Field` to generate text). A more completed script would be like `{ IF { = MOD( {PAGE}, 2 ) } = 0 "{ PAGE } (even)" "{ PAGE } (odd)" }`.

([How to control the page numbering in a Word document](https://wordmvp.com/FAQs/Numbering/PageNumbering.htm), [List of field codes in Word](https://support.microsoft.com/en-gb/office/list-of-field-codes-in-word-1ad6d91a-55a7-4a8d-b535-cf7888659a51))

{% include folder_close %}
