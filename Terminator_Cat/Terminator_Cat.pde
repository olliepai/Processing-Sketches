int x;
int y;
float accel;

void setup() {
  size(800, 800);
  PImage catPic = loadImage("donkey.png");
  catPic.resize(800, 800);
  background(catPic);
  
  x = 311;
  y = 286;
  accel = 2;
}

void draw() {
  fill(256, 20, 20);
  noStroke();
  ellipse(x, y, 160, 140);
  //ellipse(488, 286, 160, 140);

  println("x: " + mouseX + " , y: " + mouseY);
}

void keyPressed() {
  accel++;
  x+= accel * 0.5;
  y+= accel * 0.5;
}