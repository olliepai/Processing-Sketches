PImage creeper;

int x = int(random(1000));
int y = int(random(900));
int color1 = 0;
int color2 = 0;

boolean isNear(int a, int b) {
  if (abs(a - b) < 10) {
    return true;
  }
  else {
    return false;
  }
}

void setup() {
  size(1000, 900);
  
  PImage minecraft = loadImage("Forest.jpg");
  minecraft.resize(width, height);
  background(minecraft);
  
  creeper = loadImage("Creeper.png");
  creeper.resize(10, 10);
}

void draw() {
      
  image(creeper, x, y);
  
  if (mousePressed) {
    fill(color1, 100, 100);
    ellipse(mouseX, mouseY, 5, 5);
  }
  
  if (mouseX > 0 && mouseX < 50 && mouseY > 0 && mouseY < 50) {
    color1 = 110;
  }
  
  /*if (mouseX < 80 && mouseX > 60 && mouseY > 590 && mouseY < 610 && mousePressed ) {
    textSize(70);
    text("YOU FOUND THE CREEPER", 75, 500);

  }  */
  
  int r = int(random(360));

  int r2 = int(random(360));

  colorMode(HSB, 360, 100, 100);
  fill(r, 100, 80); 
  
  if (isNear(x, mouseX) && isNear(y, mouseY)) { 
    background(r2, 90, 100); 
    textSize(70);
    text("YOU FOUND THE CREEPER", 75, 500);
  }
  
  
  
  
  
    
}
