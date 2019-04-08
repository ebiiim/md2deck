---
title: My Slide
subtitle: This is an example of a slide deck
author:
  - John Doe<br><sup>University of Somewhere</sup>
date: Jan 1, 20xx @ Tokyo
theme: report
slideNumber: true
transitionSpeed: fast
width: 1366
height: 768
background-image:
margin: 0.1
# metadata
pagetitle: My Slide
author-meta:
  - John Doe
date-meta: 2019-04-08
md2deck:
  - version: 0.1.0
  - reveal.js: 3.8.0
  - pandoc: 2.7.1
  - decktape: 2.9.2
  - template: md2deck-0.1.0
---

## Hello <!-- a single page slide -->

Create a single page slide with `##` heading.

# A title-slide <!-- a series of slides -->

## Show details

An example of a list is shown below.

- foo
- bar
- baz
  - foobarbaz
- qux

## More details
### "Hello World" with Python

```python
print('hello world')
```

### "Hello World" with Java

```java
public class HelloWorld{
   public static void main(String[] args){
     System.out.println("hello world");
   }
}
```

# Thank you
