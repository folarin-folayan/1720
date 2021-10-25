import gifAnimation.*;

PImage img, img1, img2;

Gif gif; 
Gif gif1; 
Gif gif2;

String gameState;

float x, x2, kirbyx, kirbyy, jump, g, jumpspeed, floory;

int[] blockx;

void setup()
{
  img =loadImage("startscreen.jpeg");
  img1 =loadImage("background.jpeg");
  img2 =loadImage("block.png");
  
  
  size(1000, 750);
  gameState = "START";
  
  img.resize(1000, 750);
  image(img, 0,0);
  
  img1.resize(1000,750);
  img2.resize(100,100);
  
  
  gif = new Gif (this,"start_button.gif");
  gif.loop();
  gif.play();
  
  gif1 = new Gif (this,"kirby.gif");
  gif.loop();
  gif1.play();
  
  gif2 = new Gif (this, "game_over.gif");
  gif.loop();
  gif2.play();
  
  kirbyx = 0;
  kirbyy = 525;
  g = 0.1;
 
  jumpspeed = -1;
  
  floory=526;
  
  blockx = new int [5];
  
  for (int i = 0; i < blockx.length; i++)
  {
    blockx[i] = width + 600*i;
  }
}

void draw()
{
 if(gameState == "START") {
  startGame();
  } else if (gameState == "PLAY"){
    playGame();
  }
    else if (gameState == "LOSE"){
    loseGame();
  }
}
 void startGame(){
   image(gif, 250, 400, width/2, height/2);
   
   
   if (mousePressed == true) {
     gameState = "PLAY";
   }
 }
 
 void loseGame() {
 
   image(gif2, CENTER, CENTER, width, height);
   text("click to play again!", CENTER, CENTER);
   
 }
 
 void playGame() {
  
  background(img1);
  
  image(img1, x, x2);
  image(img1, x + img1.width, x2);
  x = x -4;
  
  if (x < - img1.width)
  {
  x = 0;
  }
  
  
  kirby();
  
  blocks();
 }
 
 void kirby()
 {
 image(gif1,kirbyx, kirbyy);
  
  
  kirbyy = kirbyy+jumpspeed;
  jumpspeed =jumpspeed + g;
  
  if (kirbyy+1>floory){
  jumpspeed=0;
  kirbyy=floory - 1;
  }
  if (mousePressed && kirbyy+1==floory)
  {
    kirbyy =-1;
  }
 }
 
 void blocks()
 {
  for (int i = 0; i < blockx.length; i++)
  {
    image(img2,blockx[i],610);
    blockx[i] -= 3;
    if(blockx[i] < -200)
    {
      blockx[i] = width;
    }
    if(kirbyx > (blockx[i] ))
    {
      gameState = "LOSE";
    }
  }
 }
