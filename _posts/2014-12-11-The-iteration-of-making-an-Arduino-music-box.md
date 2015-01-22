---
layout: post
title: The iteration of making an Arduino music box
published: true
---
San Francisco is a strange place, where you can come across any kind of give aways along the street — from cloth to chair or even TV — of course, they are all used or broken. And what I got several days before was a broken Hi-Fi speaker.

<p><img src="/images/compressed/blog/2014-12-11/1.jpg" title="broken Hi-Fi speaker"></p>

## Speaker Making

As you can tell from the picture above, it was missing one of the speakers. However, after I moved it home (it’s really super heavy) and tore down the other two speakers, they still worked quite well. So, I started to think about how could I bring them to life again. And then, I got the idea of combining them with Arduino to make a music box.

The first step I need to take was to give the speaker a new look. Equipped with table saw and sander, I was able to make a new speaker cube by using some surplus medium density fiberboards. And actually the wooden color of the boards matched with the golden color of the speaker quite well.

<p class="full-width"><img src="/images/compressed/blog/2014-12-11/2.jpg" title="Speaker making process"></p>

<p><img src="/images/compressed/blog/2014-12-11/3.jpg" title="Speaker"></p>

## Prototype I

After I finished the outlook of my “new” speaker, what I need next was the “brain” of the speaker, that’s where Arduino came into. As a music box, it should have at least two kinds of function: play/pause and sound visualization. Actually, this was my first Arduino project, so I did not have too much hardware in my toolbox (which was kind of limitation for me). I picked a touch sensor as the switch, three Adafruit Neopixel LEDs to form my super simple sound visualizator, one sound amplifier as sound input of the visualizator. Besides that, in order play Mp3 in Arduino, I also need a Mp3 shield which from Adafruit as well. Last but not least, I thought a Arduino music box without the cable and computer would provide better listening experience, so I added a battery to my whole package.

After wrote the control program and assembled all the things together, my first version of Arduino music box finally worked. You could play or pause music by tapping the touch sensor, and the LEDs would jump according to the music at the same time.

<p class="full-width"><img src="/images/compressed/blog/2014-12-11/4.jpg" title="Music box prototype I"></p>

## Prototype II

Although the first prototype worked, there were several problems of prototype I: I hate the appearance of wires and the breadboard; controlling through tapping was boring; the LEDs looks stupid.

I hope the look of the music box could be more elegant, so I decided to try to stack all parts by using long head pins. Then the control should be more interesting. If I can pause music by upside down the music box or jump to next music by rotate it, it would be more interesting. So, I ordered an Adafruit Neopixel shield and a motion sensor, this time I will do something better.

### Tink I
Comparing with the three LEDs I used in prototype I, the Adafruit Neopixel shield which come with 40 LEDs is much fancy. But there was a big challenge I had to face was both this shield and Mp3 shield used PIN 6 as input or output and could not change via software when stacking them together. So, I had to alter the hardware by myself. The initial plan was to desolder PIN 6 of Neopixel shield and solder PIN 5 and 6 together, thus I can use PIN 5 as input. But considering future need and improve the flexibility of this Neopixel shield, I added a tiny switch between PIN 5 and PIN 7, so I can use both PINs to control the shield.

<p class="full-width"><img src="/images/compressed/blog/2014-12-11/5.jpg" title="Tink 1"></p>

### Tink II
Another hardware altering I made was fixed the motion sensor on one of the shield. The shield I chose was a bluetooth shield, the reason why I chose this shield was that I can upload code to Arduion via this shield.

<p class="full-width"><img src="/images/compressed/blog/2014-12-11/6.jpg" title="Tink 2"></p>

### Tink III
My last hardware change was added a second female pins on the better shield, which I thought could facilitate some unpredictable test in the future.

<p class="full-width"><img src="/images/compressed/blog/2014-12-11/7.jpg" title="Tink 3"></p>

## Wrapping up
From a broken give away Hi-Fi speaker to a kind of elegant music box, this is the journey how I went through. Besides a real music box with interesting interaction, I also learnt a lot form its making process, such as Arduion is not good at processing music (Raspberry Pi is more suitable). And I also find out there are limitations of different hardware, like there’s time delay when you control the LEDs on Neopixel Shield. And the most important thing I learnt was the thinking of iteration and how to make the iteration process a real.

<p class="full-width"><img src="/images/compressed/blog/2014-12-11/8.jpg" title="Final stacks"></p>

<div class="outside-sources">
<iframe src="//player.vimeo.com/video/114397511?title=0&amp;byline=0&amp;portrait=0&amp;color=b5e285" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>
