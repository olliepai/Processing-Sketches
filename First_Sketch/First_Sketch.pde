void setup()
{
  size(500, 500);
}

void draw()
{ 
  background( 0, 153, 255);
  
  println(mouseX);
  println(mouseY);

  ellipse(143, 150, 150, 150);
  ellipse(379, 143, 150, 150);
  line(143, 350, 379, 350);
  line(143, 350, 250, 450);
  line(250, 450, 379, 350);

  if (mousePressed)
  {
    fill(255, 255, 255);
  } else
  {
    fill (0, 136, 17);
  }
}

