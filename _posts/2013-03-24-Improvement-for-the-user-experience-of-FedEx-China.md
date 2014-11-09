---
layout: post
title: Improvements for the user experience of FedEx China
category: Critical thinking(UX)
tags: UX FedEx
published: true
---
After receiving the books that I translated from the press, I decided to send a copy to the author [Tim Kadlec](https://twitter.com/tkadlec) who lives in Wisconsin as a present. And before sending the book, I need to choose an express company first.

Several weeks ago, I brought an brand new earphone from New Zealand and received it via FedEx. By considering its satisfied mail speed, wide coverage and there's one of their mail station nearby in the Tsinghua University, I decided to give it a try.

As a global express company, FedEx never lacks of professional: iconic logo, dedicated cars and unified employees can always leave custems a reliable impression. However, when I was tracking the mail number on the FedEx China's website after I sending the book, instead of remembering the trail number for me, the site asked me to input the hard-remember number every single time when I opened it. And what's worse, the number was too long to remember.

We all know that HTML5 has a feature called localstorage to allow website store infomation in the browser side, why don't FedEx China use this functionality to save trail numbers for users?

<div class="legend-wrapper">
    <img src="/image/blog/2013-03-24.png" alt="screenshot">
    <div class="legend">
        <p>Input box for trail number of FedEx China website.</p>
    </div>
</div>

Actually, the site can do this even better: when users open the site again, the site can display the status of mail on the top of screen.

A little code can always bring tremendous convenience.