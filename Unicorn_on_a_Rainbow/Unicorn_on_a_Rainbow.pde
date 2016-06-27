PImage rainbow;
PImage unicorn;

void setup() {

  rainbow = loadImage("Rainbow.jpg");
  size(rainbow.width, rainbow.height);
  background(rainbow);

  unicorn = loadImage("Unicorn.png");
}

void draw() {

  if (mousePressed)
  {
    background(rainbow);
  }
  else
  {
    image(unicorn, mouseX, mouseY);
    ellipse(45, 45, 400, 400);
  }
}

