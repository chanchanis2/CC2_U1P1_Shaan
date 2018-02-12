bee[] bees = new bee[1000];
PImage flowerboy;
PImage B;
void setup() 
{
  size(960,540);
  for (int i = 0; i < bees.length; i++) 
  {
    bees[i] = new bee();
  }
  flowerboy = loadImage("FLOWERBOY.jpg");
  flowerboy.resize(width,height);
  B = loadImage("flower-boy-simple.png");
  B.resize(10,10);
}
 
void draw() 
{
  background(flowerboy);
 
  for (int i = 0; i < bees.length; i++) 
  {
    bees[i].update();
    bees[i].Edges();
    bees[i].display();
  }
}
 