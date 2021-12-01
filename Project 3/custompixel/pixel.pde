class Pixel {
  PVector posit;
  PVector motion;
  int timemarker;
  
  Pixel(float x, float y)
  {
    posit = new PVector(x,y);
    timemarker = millis();
    motion = new PVector(random(1,-3), random(2,-3));
  }
  
  void update() 
  {
    posit.add(motion);
    posit.y += antigrav;
    motion.mult(grav);
  }
  
  void draw() {
    noStroke();
    color z = image.get(int(posit.x), int(posit.y));
    fill(z, 25);
    ellipse(posit.x, posit.y, random(10), random(20));
  }
  
  void run() {
    update();
    draw();  
  }


}
