
void setup() {
  size(1000, 1000);
}

void loop(){
  println(mouseX, mouseY);
}

void draw() {
  fill(50, 187, 50, 10);
  ellipse(500, 400, 400, 400);
  fill(0, 0, 0);
  text("Programming", 500, 350);
  
  fill(187, 50, 50, 10);
  ellipse(400, 600, 400, 400);
  fill(0, 0, 0);
  text("Happy", 300, 650);
  
  fill(50, 50, 187, 10);
  ellipse(600, 600, 400, 400);
  fill(0, 0, 0);
  text("Math", 650, 650);
}
