import ddf.minim.*;
import processing.sound.*;

PImage img, img1, img2, img3, img4;
user user;
ArrayList<Shell> shells;

Minim minim;
AudioPlayer game;

int timer = 30;
int time = 0;
int score = 0;
int marker = 0;
int startint = 1000;
float crash = 80;
boolean debug = false;

int fontsize = 70;

void setup() {
  
  size(1200, 800, P2D);
  
  minim = new Minim(this);
  game = minim.loadFile("Super Mario Bros. Theme Song.mp3");
  game.play();  
     
  img1 = loadImage("mariosky.png");
  img1.resize(1200, 800);
  
  img = loadImage("mariojump.png");
  img2 = loadImage("shell.png");
  img2.resize(100, 100);
  img3 = loadImage("mariomad.png");  
  user = new user();
  shells = new ArrayList<Shell>();
}

void draw() {
  background(img1);
  text("Score: " + score , 0, fontsize);
  
  int t = millis();
  int t3 = millis();
  if (t3 > marker + startint) {
    shells.add(new Shell());
    marker = t;
  }

   for (Shell shells : shells) {
    shells.run();
    
    if (user.position.dist(shells.position) < crash) user.alive = false;
  }
  
  user.run();
   
  for (int i=shells.size()-1; i>=0; i--) {
    if (!shells.get(i).alive) {
      shells.remove(i);
    }
  }
  
  surface.setTitle("" + frameRate);
}
