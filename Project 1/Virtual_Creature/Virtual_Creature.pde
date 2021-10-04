PImage img, img1, img2, img3;
PVector position, target;
boolean isRunning = false;


void setup() {
  
  size(800, 600, P2D); 
  
  img = loadImage("background.jpeg");
  img.resize(800, 600);
  img1 = loadImage("spiderman-centre.png");
  img2 = loadImage("spiderman-right.png");
  img3 = loadImage("spiderman-left.png");
  
  position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));
  
}

void draw() {
  
  background(img); 
  
  PVector mousePos = new PVector(mouseX, mouseY);
  isRunning = position.dist(mousePos) < 100; 
  
  if(isRunning)  {
    position = position.lerp(target, 0.08);
    if (position.dist(target) < 5)  {
      target = new PVector(random(width), random(height));
    
  }
  }
}
