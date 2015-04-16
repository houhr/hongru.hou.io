---
layout: post
title: Homework of Digital Electronics
published: true
---

## Contents

* [Week 13: Final project update](#week-13-final-project-update)
* [Week 12: Final project update](#week-12-final-project-update)
* [Week 11: Final project concept](#week-11-final-project-concept)
* [Week 8&amp;9: Design a printed circuit board](#week-8amp9-design-a-printed-circuit-board)
* [Week 7: Complete circuit schematic and PCB layout](#week-7-complete-circuit-schematic-and-pcb-layout)
* [Week 5&amp;6: Motor and motion control](#week-5amp6-motor-and-motion-control)
* [Week 3&amp;4: Arduino and browser](#week-3amp4-arduino-and-browser)
* [Week 2: Fade with switch](#week-2-fade-with-switch)

## Week 13: Final project update

### Description

I would like to make an infinity clock by using a circular LED light and mirrors. The clock will show real time in normal mode. Once it detects someone stands in front of it, it will show some colorful effect based on the distance between the people and clock. The clock will also detect the light from outside — if there’s no outside light source, it will turn off all the LEDs slowly. So, people can sleep well at night without light pollution in the room. If I have extra time, I would like to try to connect the clock with Internet, so people can select colors for the LEDs via browsers.

### Block diagram of hardware
<p><img src="/images/compressed/blog/2015-2-4/12.jpg" title=""></p>

### Block diagram of software
<p><img src="/images/compressed/blog/2015-2-4/13.png" title=""></p>

### Parts list

* 1 × Arduino Yún
* 4 × NeoPixel 1/4 60 Ring
* 1 × DS1307 Real Time Clock breakout board kit
* 1 × GA1A12S202 Log-scale Analog Light Sensor
* 1 × Ultrasonic distance sensor

### References

* [Guide to the Arduino Yún](http://arduino.cc/en/Guide/ArduinoYun)
* [NeoPixel 1/4 60 Ring](https://www.adafruit.com/products/1768)
* [DS1307 Real Time Clock breakout board kit](https://www.adafruit.com/product/264)
* [GA1A12S202 Log-scale Analog Light Sensor](https://www.adafruit.com/products/1384)

### Technical details
* The diameter of mirrors is 7 inches

### Concerned areas
* Control Arduino Yún by using browsers
* Hide the Ultrasonic distance sensor behind the clock

## Week 12: Final project update

### Concept
You can find project concept [here](#final-project-concept).

### Major hardware and software components

<p><img src="/images/compressed/blog/2015-2-4/11.jpg" title=""></p>


## Week 11: Final project concept

### 3 topics that I would like to learn about:

1. How to connect Arduino with iPhone.
2. How to get real time on Arduino.
3. Physical data visualization

### Final project concept

I would like to make an infinity clock by using a circular LED light and mirrors. The clock will show real time in normal mode. Once it detects someone stands in front of it, it will show some colorful effect based on the distance between the people and clock. The clock will also detect the light from outside — if there's no outside light source, it will turn off all the LEDs slowly. So, people can sleep well at night without light pollution in the room. If I have extra time, I would like to try to connect the clock with iPhone, so people can select colors for the LEDs.

## Week 8&amp;9: Design a printed circuit board

### PCB layout:

Components used:

* 1 LED
* 1 pushbutton
* 1 resistive sensor
* 3 resistor
* 1 vector image
* 1 line of text

<p><img src="/images/compressed/blog/2015-2-4/10.png" title=""></p>


## Week 7: Complete circuit schematic and PCB layout

### PCB layout:
<p><img src="/images/compressed/blog/2015-2-4/8.png" title=""></p>

### Circuit schematic:
<p><img src="/images/compressed/blog/2015-2-4/9.png" title=""></p>


## Week 5&amp;6: Motor and motion control

<p><img src="/images/compressed/blog/2015-2-4/7.jpg" title=""></p>

{% gist 430ec758c22763d6b554 %}

<div class="outside-sources">
<iframe src="//player.vimeo.com/video/121959902?title=0&amp;byline=0&amp;portrait=0&amp;color=b5e285&amp;autoplay=0&amp;loop=0" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>

## Week 3&amp;4: Arduino and browser

This part has been moved to [here](/blog/2015/02/07/How-to-communicate-between-Arduino-and-browser/).

## Week 2: Fade with switch

Insert a photoresistor and a 10k&#8486; resistor into breadboard. Then connect resistor and GND by using a black wire and connect photoresistor with 5V by using a red wire.

<p><img src="/images/compressed/blog/2015-2-4/1.jpg" title=""></p>

<p><img src="/images/compressed/blog/2015-2-4/2.jpg" title=""></p>

{% gist 3802c0e64426348a137f %}

* Smallest number: 250
* Biggest number: 800

<p><img src="/images/compressed/blog/2015-2-4/3.jpg" title=""></p>

<p><img src="/images/compressed/blog/2015-2-4/4.jpg" title=""></p>

### Combine a pair of switches and an LED

{% gist 9160a414097347b6ec21 %}

<p><img src="/images/compressed/blog/2015-2-4/5.jpg" title=""></p>

<p><img src="/images/compressed/blog/2015-2-4/6.jpg" title=""></p>
