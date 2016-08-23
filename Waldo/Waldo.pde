// 1. Find a really hard Where’s Waldo puzzle, save it, and drop it onto this sketch.
PImage waldo;   

void setup() {
  waldo = loadImage("Waldo.jpg"); // 2. Change this to match your file name.
  size(1000,800);
  waldo.resize(1000,800);
  image(waldo, 0, 0);
}

void draw() {
  println("X: " + mouseX + " Y: " + mouseY);
  // 3. Use this print statement to find out the coordinates of Waldo
  // println("X: " + mouseX + " Y: " + mouseY);
  if(mouseX > 795 && mouseX < 812 && mouseY > 65 && mouseY < 97 && mousePressed) {
    fill(157, 60, 90, 50);
    textSize(150);
    text("Waldo found!", 25, 500);
  }
  // 4. If the mouse is on Waldo, print “Waldo found!”
   
}

//795 to 812, 97, 65
