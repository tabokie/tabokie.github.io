# Tabokie's Page

Personal site. A remake of [Xe's website](https://christine.website/) with jekyll.

Run `bundle exec jekyll serve` to serve locally.

## Memo for submitting post

Front matter for normal blog post (named `/_posts/yyyy-mm-dd-name.md`):
```
---
layout: blog
title: Old Blog
category: admin
---
```

Front matter for topic post (named `/_(sub)topics/uuid.md`):
```
---
layout: blog
title: Master Topic
childs:
  - /subtopics/uuid
---
```
