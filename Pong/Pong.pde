int xpos = 50;
int ypos = 400;
int speed = 8;

import ddf.minim.*
Minim minim;
AudioSample sound;

void setup()
{
  size(1000, 800);
  
  minim = new Minim (this);
  sound = minim.loadSample("Hit", 128);
}

void draw()
{
  background(0, 0, 0);
  ellipse(xpos = xpos + speed, ypos = ypos + speed, 20, 20);
  fill(255, 255, 255);
  stroke(255, 255, 255);
  println(mouseX);
  println(mouseY);

  if (xpos >= 1000)
  {
    speed = -speed;
  }
  if (ypos >= 800)
  {
    speed = -speed;
    sound.trigger();
  }
  if (xpos <= 0)
  {
    speed = -speed;
  }
  if (ypos <= 0)
  {
    speed = -speed;
  }
}