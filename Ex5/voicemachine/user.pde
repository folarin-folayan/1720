class user {


  PVector startPos, position, goal;
  float movement =100;
  float speed = 0.25;
  boolean alive;
  
  user()  {
  reset();
  }
  
  void reset() {
    alive = true;
    startPos = new PVector(width/2, height -40);
    position = startPos.copy();
    goal = position.copy();
  }
  void moveUp(){
  goal.y -= movement;
  score++;
  }
  void update() {
    position.lerp(goal, speed);
  }
  
  void draw() {

    if (alive) {
      
      image(img, position.x, position.y, 100, 120);
    }
    else {
      image(img3, position.x, position.y, 100, 120);
      position.x = 550;
      position.y = height/2;
      text(" Try Again ", width/2, height/2, fontsize);
    } 
    
     if (user.position.x <= 1200 && user.position.y <= 50) {
     
      goal.x = random(width);
      goal.y = 780;
  }
  }
  
  void run() {
    update();
    draw();
  }
  }
