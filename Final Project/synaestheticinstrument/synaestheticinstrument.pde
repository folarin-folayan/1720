import gifAnimation.*;
import themidibus.*;
import ddf.minim.*; 

AudioPlayer sickomode;
AudioPlayer cheering;
AudioPlayer lit;
Minim audios;

Gif gif;
Gif gif1;
ArrayList<PopUp> popups;


MidiBus thebus;
int channel = 0;
int pitch, velocity;

PShader astro;


ArrayList<Stroke> strokes;
int marktime = 0;
int timeout = 1000;

void setup() {
  size(640, 360, P2D);
  
  audios = new Minim(this);
  sickomode = audios.loadFile("piano.wav");
  lit = audios.loadFile("its-lieet.wav");
  cheering = audios.loadFile("encore_b.wav");
  cheering.loop();
  
  
  gif = new Gif(this, "travisconcert.gif");
  gif1 = new Gif(this, "itslit.gif");
  gif.loop();
  noCursor();
  
  MidiBus.list();
  thebus = new MidiBus(this, -1, 4);
  
  setupXYscope();
  
  strokes = new ArrayList<Stroke>();
  popups = new ArrayList<PopUp>();
  
}

void draw() {
  background(gif);
  
  //float x = random(50, mouseX);
  //float y = random(55, mouseX);
  //float z = random(60, mouseX);
  float alpha = random(100, 170);
  color s = color(102, 51, 0);
  stroke(s, alpha);

  updateXYscope();

  
  for (int i=strokes.size()-1; i >= 0; i--) {
    Stroke stroke = strokes.get(i);
    stroke.run();
    if (!stroke.alive && stroke.points.size() == 0) {
      strokes.remove(i);
    }
  }
  
  if (millis() > marktime + timeout) {
    xy.clearWaves();
  }
  
  for (int i=popups.size()-1; i>=0; i--) {
   PopUp popup = popups.get(i);
    if (popup.alive) {
      popup.run();
    } else {
      popups.remove(i);
    }
  }

  surface.setTitle("Synaesthetic_Instrument");
}
