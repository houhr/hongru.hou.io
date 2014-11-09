---
layout: post
title: Differences between HTML5 data-* attributes and microformats
category: Development(HTML)
tags: data-* HTML5 microformats
published: true

---
While the Web applications have became more and more complex, developers may want to store some information in their HTML. After doing some research, I found two kinds of useful tools to achieve this: data-\* attributes and microformats.

In the HTML [5.1 Nightly](http://www.w3.org/html/wg/drafts/html/master/dom.html#embedding-custom-non-visible-data-with-the-data-*-attributes "data-* attributes"), there's a new kind of global attribute called “data-* attributes”. By using “data-” started attribute, you can store any private data in your Web pages if no appropriate attributes or elements exists. For example, jQuery mobile use loads of “data-\*” attributes in its framework.

Our another option is microformats, and it has a quite straightforward introduction on its [website](http://microformats.org/wiki/introduction "microformats introduction"):

> Microformats are a way of adding simple markup to human-readable data items such as events, contact details or locations, on web pages, so that the information in them can be extracted by software and indexed, searched for, saved, cross-referenced or combined.

Now that both of them could store data in the HTML, which should we use? First, I think it depends on what your purpose is. If you just want to use these data inside the pages (maybe handled by JavaScript) you should use HTML5 data-* attributes. On the contrary, if you want to share the data with other people, softwares or web spiders, you’d better use microformats instead. Further more, data-* attributes have their own attributes (its obvious), however microformats usually utilize the “class” and “rel” attributes to store information.

In my view, these are two differences between HTML5 data-* attributes and the microformats, and we should chose them according to our particular purpose.