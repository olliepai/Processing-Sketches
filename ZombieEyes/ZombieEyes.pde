void setup() {
  size(1000, 900);
  PImage face = loadImage("Zombie.png");
  face.resize(width, height);
  image(face, 0, 0);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  println(mouseX, mouseY);
  fill(mouseX, 100, 100);
  ellipse(532, 302, mouseY, mouseY);
  ellipse(659, 302, mouseY, mouseY);
  
}
