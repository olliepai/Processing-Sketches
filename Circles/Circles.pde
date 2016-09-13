int Xpos;
int Xposition1;
int Xposition2;
int x1 = 300;
int x2 = 700;

void setup() {
  size(1000, 1000);
}
void draw() {
  background(256, 256, 256);
  noFill();
  Xpos += 1;
  
  if (Xposition1 == 700) {
    Xpos = -Xpos;
    x1 = 700;
  }
 if (Xposition2 == 300) {
    x2 = 300;
  }
  Xposition1 = x1 + Xpos;
  Xposition2 = x2 - Xpos;
  
for(int i = 0; i < 500; i+= 5) {
   ellipse(Xposition1, 500, 10 + i, 10 + i);
    ellipse(Xposition2, 500, 10 + i, 10 + i);
  }
}
