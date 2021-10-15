import gifAnimation.*;

Gif gif;
PImage img, img2;
float walkingx;
float walkingy;
float speedX = 2;
float snowfallx;
float snowfally;

void setup()
{
  size(1280,800, P2D);
  img = loadImage("winter.jpeg");
  img.resize(1280,800);
  
 frameRate(13);
  gif = new Gif (this,"walking.gif");
  gif.loop();
  gif.play();
  
  img2 = loadImage("snowfall.png");
  
  walkingx = 10;
  walkingy = 455;
}

void draw(){

background(img);

walkingx += speedX;
if (walkingx < 1000) {
speedX *= 1;
}

else if (walkingx <= 9){
speedX *= -1;
}

image(gif,walkingx,walkingy,200,270);

}
