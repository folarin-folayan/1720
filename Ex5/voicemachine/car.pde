class Shell {
    
  boolean isLeft;
  PVector position, goal;
  float speed = 0.02;
  float xMargin = 500;
  float yMargin = 150;
  boolean alive = true;
  
  Shell() {
    float pickSide = random(1);
    float y = random(yMargin, height-yMargin*2);
    float x1, x2;
    
    if (pickSide < 0.5) {
      isLeft = true;
      x1 = -xMargin;
      x2 = width + xMargin;
    } 
    else {
      isLeft = false;
      x1 = width + xMargin;
      x2 = -xMargin;
    }
    position = new PVector(x1, y);  
    goal = new PVector(x2, y);  
  }
  
   void update() {
    position.lerp(goal, speed);
    if (position.dist(goal) < 5) alive = false;
      
  }
  
  void draw() {
    pushMatrix();
    translate(position.x, position.y);
    image(img2, 30, 30);
    popMatrix();
  }
  
  void run() {
    update();
    draw();
  }
    
 
}
