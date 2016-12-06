int start = 20;
int space = 12;
float color1 = 0;
float color2 = 0;
float color3 = 0;
int BeeFaceX = 420;
int BeeFaceY = 420;

void draw() {
  frameRate = 999999999;
  /*Use A loop to make a body for the Bee!
   Then put his head on using drawBeeFace(x,y)
   Use Modulo to make the colors alternate 
   */
  colorMode(HSB, 360, 100, 100);
  color1 = random(100);
  color2 = random(360);
  color3 = random(100);
  background(color2, 100, 100);
  for (int i = 0; i < 33; i++) {
    if (i == 0) {
      fill(color1, color2, color3);
      ellipse(i * space + start, i * space + start, 55, 80);
    }
    if (i == 1) {
      fill(color3, color1, color2);
      ellipse(i * space + start, i * space + start, 80, 55);
    }
    if (i % 2 == 0) {
      fill(color2, color3, color1);
      ellipse(i * space + start, i * space + start, 55, 80);
    }
    if (i % 2 == 1) {
      fill(color1, color3, color2);
      ellipse(i * space + start, i * space + start, 80, 55);
    }
  }
  drawBeeFace();
  fill(color2, 90, 100);
  ellipse(BeeFaceX-10, BeeFaceY-15, 10, 10); // eyes
  ellipse(BeeFaceX+10, BeeFaceY-15, 10, 10);
}




void drawFlower(int x, int y) {
  noStroke();
  translate(x, y);
  // draw 5 petals, rotating after each one
  fill(256, 20, 10); // green
  for (int i = 0; i < 5; i++) {
    ellipse(0, -40, 50, 50);
    rotate(radians(72));
  }
  fill(#fff9bb); // light yellow
  ellipse(0, 0, 50, 50);
}


void drawBeeFace() {
  color1 = random(256);
  noStroke();
  fill(0, 0, 0);
  stroke(1);
  strokeWeight(5);
  line(BeeFaceX-10, BeeFaceY-27, BeeFaceX-17, BeeFaceY-50);
  line(BeeFaceX+10, BeeFaceY-27, BeeFaceX+17, BeeFaceY-50);
  ellipse(BeeFaceX-17, BeeFaceY-50, 10, 10);
  ellipse(BeeFaceX+17, BeeFaceY-50, 10, 10);
  noStroke();
  fill(color1, 251, 28);
  ellipse(BeeFaceX, BeeFaceY, 60, 60); // face
  fill(255, 237, 209);
  fill(255, 0, 0);
  ellipse(BeeFaceX-10, BeeFaceY-15, 10, 10); // eyes
  ellipse(BeeFaceX+10, BeeFaceY-15, 10, 10);
  ellipse(BeeFaceX, BeeFaceY-5, 10, 10); // nose
  ellipse(BeeFaceX, BeeFaceY+10, 20, 10);// mouth
  fill(255, 251, 28);
  ellipse(BeeFaceX, BeeFaceY+5, 20, 6);
}
void setup() {  
  ellipseMode(CENTER);
  size(500, 500);
  background(160, 160, 160); 
  drawFlower(350, 100);
}