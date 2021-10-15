PImage img, img1, img2, img3;

float climbx,climby;
float speedY = 1;
float speedX = 2;

void setup() {
  
  size(1000, 800, P2D); 
  
  
  img = loadImage("background.jpeg");
  img.resize(1000, 800);
  img1 = loadImage("spiderman-centre.png");
  img1.resize(420,434);
  climbx = 260;
  climby = -300;
  img2 = loadImage("spiderman-right.png");
  img3 = loadImage("spiderman-left.png");
  
  
}

void draw() {
  
  background(img);
  
  climby += speedY;
  if (climby <= -300) { //image move up and down.
    
    speedY *= -1;
  } 
  else if (climby > 00) { //image move up and down.
    
    speedY *= -1;
}
climbx += speedX;
  if (climbx > 800 ) { //image move back and forth.
    
    speedX *= -1;
  } 
  else if (climbx <= -200) { //image move up and down.
    
    speedX *= -1;
  }
  image(img1,climbx,climby);
  
  
  
  
  }
