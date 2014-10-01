/**
 * Apple watch
 * @author Hongru Hou
 */

int r,
    g,
    b,
    s,
    m,
    h,
    now = 0,
    cw = 300,
    ch = 300,
    offsetX = 96,
    offsetY = 100;

float cx = 100,
      cy = 100,
      goldenSection,
      len;

PFont clockFont;

PImage watch;

void setup() {
  frameRate(15);
  size(500, 500);
  smooth();
  //  String[] fontList = PFont.list();
  //  println(fontList);
  clockFont = createFont("DINCondensed-Bold", 14);
  textFont(clockFont);
  textAlign(CENTER, BOTTOM);
  strokeCap(SQUARE);

  watch = loadImage("watch.jpg");
}

void draw() {
  background(242);
  image(watch, 60, 34, 390, 432);

  // Calculate RGB values
  r = floor(map(second(), 0, 59, 0, 255));
  g = floor(map(minute(), 0, 59, 0, 255));
  b = floor(map(hour(), 0, 23, 0, 255));

  // Draw colorful blocks

  goldenSection = ch - ch * 0.618;
  noStroke();
  fill(r, g, b);
  rect(offsetX, offsetY, cw, goldenSection);
  fill(r, g, g);
  rect(offsetX, goldenSection + offsetY, cw, ch - goldenSection);


  // Calculate time
  s = int(map(second(), 0, 60, 0, cw));
  m = int(map(minute() + norm(second(), 0, 60), 0, 60, 0, cw));
  h = int(map(hour() + norm(minute(), 0, 60), 0, 24, 0, cw));


  // Draw hours' scales
  stroke(255);
  len = float(cw) / 24;
  for(int i = 0; i < 24; i++) {

    if(i != 0) {
      line(i * len + offsetX, goldenSection - 25 + offsetY, i * len + offsetX, goldenSection + offsetY);
    }

    fill(255);

    if(i > 0 && i < 24 && i % 3 == 0 && i != hour()) {
      if(abs(i - hour()) < 3) {
        textSize(25);
        text(nf(i, 2), i * len + offsetX, goldenSection - 22  + offsetY);
      } else if(abs(i - hour()) < 6){
        textSize(20);
        text(nf((i), 2), i * len + offsetX, goldenSection - 22 + offsetY);
      } else {
        textSize(15);
        text(nf((i), 2), i * len + offsetX, goldenSection - 22 + offsetY);
      }
    } else if(i > 0 && i < 24 && i % 3 == 0 && i == hour()){
      textSize(25);
      text(nf(i, 2), i * len + offsetX, goldenSection - 22 + offsetY);
    }

  }

  // Draw minutes' scales
  len = cw / 60;
  for(int i = 0; i < 60; i++) {
    if(i != 0 && i % 5 == 0) {
      line(i * len + offsetX, goldenSection + offsetY, i * len + offsetX, goldenSection + 35 + offsetY);
    }


    if(i > 0 && i < 60 && i % 5 == 0) {
      fill(255);
      textSize(20);

      if(abs(i - minute()) <= 5) {
        text(nf(i, 2), i * len + offsetX, goldenSection + 60 + offsetY);
      }
    }
  }

  // Draw handers
  stroke(255);
  strokeWeight(2);
  line(offsetX, goldenSection + offsetY, cw + offsetX, goldenSection + offsetY);

  strokeWeight(6);
  line(h + offsetX, 0 + offsetY, h + offsetX, goldenSection * 0.55 + offsetY);

  strokeWeight(4);
  line(m + offsetX, goldenSection + (ch - goldenSection) * 0.32 + offsetY, m + offsetX, ch + offsetY);

  stroke(255, 120, 120);
  strokeWeight(2);

  if(now == 0 ) {
    line(s + 1 + offsetX, goldenSection + (ch - goldenSection) * 0.19 + offsetY, s + 1 + offsetX, ch + offsetY);
    now++;
  } else {
    line(s + offsetX, goldenSection + (ch - goldenSection) * 0.19 + offsetY, s + offsetX, ch + offsetY);
    now++;
  }

  if(now == 15) {
    now = 0;
  }

}
