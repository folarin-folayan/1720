import gifAnimation.*;

Gif gif;
PImage img, img2;
float walkingx;
float walkingy;
float snowfallx;
float snowfally;

void setup()
{
  size(1280,800, P2D);
  img = loadImage("winter.jpeg");
  img.resize(1280,800);
  
 
 // gif = new Gif (this,"walking.gif");
  img2 = loadImage("snowfall.png");
}

void draw(){

background(img);
}
