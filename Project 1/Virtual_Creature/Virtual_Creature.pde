PImage img, img1, img2, img3;

float a;

void setup() {
  
  size(1000, 800, P2D); 
  
  
  img = loadImage("background.jpeg");
  img.resize(1000, 800);
  img1 = loadImage("spiderman-centre.png");
  img2 = loadImage("spiderman-right.png");
  img3 = loadImage("spiderman-left.png");
  
  
}

void draw1() {
  
  background(img);
  imageMode(CENTER);
  image(img1,500,-100);
  
  
  
  }
