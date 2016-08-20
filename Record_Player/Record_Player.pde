
PImage pictureOfRecord;
int Angle = 1000000;

import ddf.minim.*;
Minim minim;
AudioPlayer song;


void setup() {
  pictureOfRecord = loadImage("record.png");
  size(pictureOfRecord.width, pictureOfRecord.height);
  minim = new Minim(this);
  song = minim.loadFile("HappyBirthday.mp3", 512);
}

void draw() {
  Angle += 90;
  if(mousePressed) {
  rotateImage(pictureOfRecord, Angle);
  image(pictureOfRecord, 0, 0);
  song.play();
  }
  else {
    song.pause();
  }
  
}

void rotateImage(PImage image, int amountToRotate) {
  translate(width/2, height/2);
  rotate(amountToRotate*TWO_PI/360);
  translate(-image.width/2, -image.height/2);
}

