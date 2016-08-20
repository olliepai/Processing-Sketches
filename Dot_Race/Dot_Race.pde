int xPos = 400;

void setup() {
  size(1000, 1000);
  
}

void draw() {
  background(234, 45, 78);
  fill(17, 156, 187);
 
  if (mousePressed) {
    xPos = xPos + 20;
  }
  
  ellipse(xPos, 400, 100, 100);
  
  if (xPos == 800) {
    playSound();
  }
     
//5. ... change the X co-ordinate so that the dot moves to the right
      
  

//6. Make your dot move really fast so that it can win the race (you have to figure out what part of your code to change)

//7. Use this method to play a ding when your dot crosses the finish line. 


}

import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
  if (!soundPlayed) {// Copyright Wintriss Technical Schools 2013
    Minim minim = new Minim(this);        
    AudioSample sound = minim.loadSample("ding2.wav");
    sound.trigger();
    soundPlayed = true;
  }
}

