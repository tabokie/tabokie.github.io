---
layout: blog
title: Today I Learned
---
<span class="hidden-text"># Created: 2020-12-30; Modified: 2020-12-30</span>

- How to write script that can be safely edited on the run? ([StackOverflow](https://stackoverflow.com/questions/3398258/edit-shell-script-while-its-running))

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

- Create highlight group in vim ([StackExchange](https://vi.stackexchange.com/questions/5613/search-and-highlight-two-different-strings-in-different-colors))

```
# echo rule.vim
highlight Group ctermbg=green guibg=green
call matchadd("Group", "foo")
# vim text
:so rule.vim
```

- Rust will optimize out `_` but not `_name`

- Useful Git

Git CLI:
```
git diff OLD NEW
git show HEAD
git cherry-pick A^..B
git push <REMOTENAME> <LOCALBRANCHNAME>:<REMOTEBRANCHNAME> 
git commit --amend --author="" --signoff
```

GitHub:

Compare between commits: https://github.com/user/repo/compare/OLD...NEW

- Useful GDB

Use GDB in script

```
# backtrace and exit regardless of status
env -i SOME_VAR=1 gdb -ex='set confirm off' -ex=run -ex=bt -ex=quit --args SOME_PROGRAM

# or use file
# in gdbbatch:
# set $_exitcode = -1
# run
# if $_exitcode != -1 
#     quit
# else
#     bt
# end
gdb -x gdbbatch --args SOME_PROGRAM
```

```
watch -l VARIABLE
watch *ADDR
```

- Run sanitized rust

```
CFLAGS=-fsanitize=address \
  CXXFLAGS=-fsanitize=address \
  RUSTFLAGS=-Zsanitizer=address \
  RUSTDOCFLAGS=-Zsanitizer=address \
  BUILD_COMMAND --target x86_64-unknown-linux-gnu
```

- Pipe to a priviledged file

```
sudo sh -c "echo 'something' >> /path/to/privileged/file"
```

- Performance profiling in Linux

```bash
perf top
sudo perf stat -e 'syscalls:sys_enter_*' -a sleep 5 | awk '$1'
```

- Configuring zsh

zsh use /etc/zshenv for non-login shell (ssh)

unsetopt nomatch

- Useful Linux

persistent shell
```bash
screen -S <NAME>
screen -rd <NAME>
screen -ls
```

timer task 
```bash
# enable background service
sudo systemctl enable --now atd
at 09:00 -M
at now +1 hours
# exit task shell
ctrl+D
# list jobs
atq
# cancel job
atrm NO
```

working on remote server

```bash
vim scp://user@ip//path/to/file.txt
```

- Disk IOs are merged by OS

max_sectors_kb

max_segments * segment size

- Check process that is referencing deleted file

`sudo lsof +L1`

- C supports Variable Length Array (VLA)

```c
void initialize(size_t n, size_t m, double A[n][m]);
```
