---
layout: post
title: Homework of week 2 (digital electronics)
published: true
---
<p class="intro">Insert a photoresistor and a 10K&#8486; resistor into breadboard. Then connect resistor and GND by using a black wire and connect photoresistor with 5V by using a red wire.</p>

<p><img src="/images/compressed/blog/2015-2-4/1.jpg" title=""></p>

<p><img src="/images/compressed/blog/2015-2-4/2.jpg" title=""></p>

    void setup() {
      Serial.begin(9600);
    }

    void loop() {
      int sensorValue = analogRead(A0);
      Serial.println(sensorValue);
      delay(1);
    }

* Smallest number:
* Biggest number:

<p><img src="/images/compressed/blog/2015-2-4/3.jpg" title=""></p>

<p><img src="/images/compressed/blog/2015-2-4/4.jpg" title=""></p>
