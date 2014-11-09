---
layout: post
title: Event bubbling of touch events in JavaScript
category: Development(JavaScript)
tags: touch-event Zepto
published: true
---

If you are a Web app developer for mobile devices, handling the touch events could be your nightmare when you are a newbie to this fresh realm.

According to [W3C's standard](http://www.w3.org/TR/touch-events/), there're four types of events in TouchEvent: `touchstart`, `touchmove`, `touchend` and `touchcancel`. We can add listening functions to these events to handle user's gestures on their touch screen. If your task is as simple as only need to deal with tap action or target only one DOM element, you needn't care about the touch event propagation order. However, the conditions could be more complicated when you want to implement some cool visual effects, and you must understand the event propagation mechanism in the background.

When it comes to [event order](http://www.quirksmode.org/js/events_order.html) in JavaScript, we know that neither jQuery nor Zepto supports capturing model because IE only has bubbling model. Therefore, as a subset of JavaScript events, touch events also only support bubbling model if you use Zepto, the second to none mobile browsers library nowadays, in your program like me.

In order to test the event propagation order, I created a simple HTML document which contains only a body element, a parent div and a child div(the child div inside the parent div, and the parent div inside the body element). Then I added touch event listeners to these three DOM elements separately. Finally, I designed three different experiments: touching the child div and its pading and marging respectively. The results shows as below:

<table>
	<thead>
		<tr>
			<th></th>
			<th>Touching child div</th>
			<th>Touching child's padding</th>
			<th>Touching child's margin</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>touchstart</th>
			<td>bubbling</td>
			<td>bubbling</td>
			<td>no bubbling</td>
		</tr>
		<tr>
			<th>touchmove</th>
			<td>bubbling</td>
			<td>bubbling</td>
			<td>no bubbling</td>
		</tr>
		<tr>
			<th>touchend</th>
			<td>bubbling</td>
			<td>bubbling</td>
			<td>no bubbling</td>
		</tr>
	</tbody>
</table>

We can see that the tapping effects on the child div and its padding and margin are alike the color effects in CSS: only touching the element itself and its padding can generate bubbling effect (bubbling from its parent node upward to the `document` along its parent chain), and tapping on child node's margin equals to tap on its parent node.

In addition, if you want to stop child node's event propagation, you can claim `e.stopPropagation()` in the child node's handler on the premise of using Zepto.

The reason why I didn't test the `touchcancel` event is actually I don't know how to do this. If anyone who knows how to generate a `touchcancel` event on iPhone or in Chrome, please let me know. Thank you very much.