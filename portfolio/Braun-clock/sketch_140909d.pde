/**
 * Braun watch
 * @author Hongru Hou
 */

float cx,
      cy;
float radius,
      numberRadius,
      secondsRadius,
      minutesRadius,
      hoursRadius;
PFont clockFont;
PImage watch,
       logo;

void setup() {
  size(447, 440);
  smooth();

  cx = width / 2 - 7.5;
  cy = height / 2 + 1.5;

  radius = width / 4 * 0.8 + 2;
  numberRadius = radius * 0.75;
  secondsRadius = radius * 0.8;
  minutesRadius = radius * 0.8;
  hoursRadius  = radius * 0.5;

  watch = loadImage("data/watch.jpg");
  logo = loadImage("data/braun-logo.gif");
}

void drawDial() {
  background(0);
  
  // Place watch frame
  image(watch, 0, 0);

  noFill();
  stroke(255);
  fill(0);
  strokeWeight(1);
  ellipse(cx, cy, radius * 2, radius * 2);
  
  // Place logo
  image(logo, cx - 14, cy - 48, 30, 12);
  
  // Draw the scale of the clock
  for(int i = 0; i < 360; i+=6) {
    float angle = radians(i);
    float x1 = cx + cos(angle) * radius * 0.86;
    float y1 = cy + sin(angle) * radius * 0.86;
    float x2 = cx + cos(angle) * radius * 0.95;
    float y2 = cy + sin(angle) * radius * 0.95;
    if (i % 30 == 0) {
      strokeWeight(2);
    } else {
      strokeWeight(1);
    }
    line(x1, y1, x2, y2);
  }
  
  // Draw numbers
  clockFont = createFont("Helvetica", 14);
  textFont(clockFont);
  textAlign(CENTER, CENTER);
  fill(255);
  
  for(int j = -60, n = 1; j < 300; j+=30, n++) {
    float angle = radians(j);
    float x = cx + cos(angle) * numberRadius;
    float y = cy + sin(angle) * numberRadius;
    text(n, x, y);
  }
  
  // Draw date
  stroke(0);
  fill(255);
  rect(cx - 7, cy + 40, 14, 18);
  fill(255, 0, 0);
  rect(cx - 7, cy + 40, 14, 5);
  fill(0);
  textSize(9);
  text(day(), cx, cy + 51);

}


void draw() {
  
  drawDial();
  
  // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  
  // Draw the hour hand of the clock
  stroke(255);
  strokeWeight(4);
  strokeCap(SQUARE);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);
  
  // Draw the minute hand of the clock
  strokeWeight(3);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  
  // Draw the second hand of the clock
  stroke(255, 255, 0);
  strokeWeight(2);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  fill(255, 255, 0);
  ellipse(cx, cy, 9, 9);
  strokeWeight(6);
  strokeCap(ROUND);
  line(cx, cy, cx + cos(s + PI) * 10, cy + sin(s + PI) * 10);
  stroke(0);
  strokeWeight(1);
  point(cx, cy);
}



