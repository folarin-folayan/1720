class PopUp {

  PVector position;
  float size;
  int birthtime = 0;
  int lifetime = 10000;
  boolean alive = true;
  float num;
  
  PopUp(int _x, int _y, int _size) {
    position = new PVector(_x, _y);
    size = _size;
    num = size / 33.0;    
    birthtime = millis();
  }
  
  void update() {
    
    if (alive) {
      position.y += num;
       position.x -= num;
      if (millis() > birthtime + lifetime) alive = false;
    }
  }
  
  void draw() {
 
    image(gif1, position.x, position.y, size, size);
    
  }
  
  void run() {
    update();
    draw();
  }
  
}
