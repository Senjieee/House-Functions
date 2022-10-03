//pallette
color green  = #99d98c;
color blue   = #90e0ef;
color red    = #c1121f;
color yellow = #fee440;

void setup() {
  size(800, 600);
}

void draw() {
  background(blue);
  fill(yellow);
  stroke(yellow);
  circle(150, 150, 150);
  fill(green);
  stroke(green);
  rect(0, 400, 800, 200);
  
  house(250, 200);
}

void house(int x, int y) {
  pushMatrix();
  translate(x, y);
  walls();
  roof();
  window(50, 50);
  window(125, 50);
  window(200, 50);
  door();
  popMatrix();
}

void walls() {
  fill(red);
  stroke(red);
  rect(0, 0, 300, 300);
}

void roof() {
  triangle(0, 0, 300, 0, 150, -100);
}

void window(int x, int y) {
  fill(blue);
  stroke(red);
  strokeWeight(4);
  square(x, y, 50);     
  line(x + 25, y, x + 25, y + 50); 
  line(x, y + 25, x + 50, y + 25);
}

void door() {
  fill(255);
  rect(125, 200, 50, 100);
  stroke(red);
  circle(165, 250, 5); //knob
}
