


void setup() {

  PImage face = loadImage("Face.png");
    size(face.width, face.height);
  image(face, 0, 0);
  
}


void draw() {
  println(mouseX, mouseY);

  fill(256, 256, 256);
  ellipse(196, 200, 140, 200);
  ellipse(660, 300, 150, 115);

  int X = mouseX;
  int Y = mouseY;




 /* if (mouseX < 310) {
    X = 310;
  }
  if (mouseY < 290) {
    Y = 290;
  }
    if (mouseX > 366) {
    X = 366;
  }
    if (mouseY > 320) {
    Y = 320;
  }
  
    fill(0, 0, 0);
    ellipse(X, Y, 50, 50);
    ellipse(X + 320, Y, 50, 50);*/
}

