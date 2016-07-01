int xpos = 50;
int ypos = 400;
int speedx = 8;
int speedy = 8;

import ddf.minim.*;
Minim minim;
AudioSample sound;

PImage backgroundImage;

void setup()
{
  size(1000, 800);
  
  minim = new Minim (this);
  sound = minim.loadSample("Hit.mp3", 128);
}

void draw()
{
  background(0, 0, 0);
  ellipse(xpos = xpos + speedx, ypos = ypos + speedy, 20, 20);
  fill(255, 255, 255);
  stroke(255, 255, 255);
  println(mouseX);
  println(mouseY);

  if(xpos >= 1000)
  {
    speedx = -speedx;
  }
  if(ypos >= 800)
  {
    println("You Lose");
  }
  if(intersects(xpos, ypos, mouseX, 750, 100))
  {
    speedy = -speedy;
    sound.trigger();
  }
  if (xpos <= 0)
  {
    speedx = -speedx;
  }
  if (ypos <= 0)
  {
    speedy = -speedy;
  }
  
  fill(255, 255, 255);
  rect(mouseX, 750, 100, 25);
  
  
}

  boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength)
  {
    if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
