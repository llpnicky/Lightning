int startX = 300;
int startY = 300;
int endX = 400;
int endY = 400;
int counter = 5;
void setup()
{
  size(1000,1000);
  strokeWeight(1);
  background(0, 0, 0); 
}
void draw()
{
  while (counter > 0)
  { 
    stroke(random(0,255), random(0, 255),random(0, 255) );
    int changeX = mouseX - startX;
    int changeY = mouseY - startY;
    endX = startX + (int) random(changeX/counter);
    endY = startY + (int) random(changeY/counter);
//    println("endX", endX);
//    println("endY", endY);
//    println("startX", startX);
//    println("startY", startY);
//    println("X", mouseX);
//    println("Y", mouseY);
//    println("counter", counter);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    counter -= 1;
  }

  int endX2 = mouseX;
  int endY2 = mouseY;


//  line(startX, startY, endX2, endY2);
  noStroke();
//  startX = endX2;
//  startY = endY2;

}
void mouseClicked()
{
  counter = 5;
  endX = mouseX;
  endY = mouseY;
  draw();
  counter = 5;
  draw();
  counter = 5;
  draw();
}
