PImage donkey;
PImage tail;

void setup () {
  size(1000, 1000);

  donkey = loadImage("Donkey.gif");
  donkey.resize(1000, 1000);
  background(donkey);
    fill(256, 256, 256);
  rect(900, 0, 100, 100);
  
  tail = loadImage("Tail.png");
}

void draw () {
  if(mouseX > 900 && mouseX < 1000 && mouseY > 0 && mouseY < 100) {
    background(0, 0, 0);
  }
  if(mouseX > 0 && mouseX < 100 && mouseY > 0 && mouseY > 100) {
    background(donkey);
  }
  if(mousePressed) {
  image(tail, mouseX-80, mouseY-350);
  }
  
}

