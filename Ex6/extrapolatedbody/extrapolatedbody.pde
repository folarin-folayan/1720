import processing.video.*;

Capture video;

void setup() {
  size(1080, 720);
  
  video = new Capture(this, 1080, 720);
  video.start();
}

void captureEvent(Capture video) {
  
  video.read();
}

void draw() {
  
  loadPixels();
  video.loadPixels();
  
  for(int i = 0; i < video.width; i++) {
    for(int f = 0; f < video.height; f++) {
      
      int loc = i + f * video.width;
      
      float c = red(int(video.pixels[loc]*random(1)));
      float c1 = green(int(video.pixels[loc]/0.5));
      float c2 = blue(int(video.pixels[loc]*random(3)));
     
      
      c = constrain(c, 60, 255);
      c1 = constrain(c1, 102, 255);
      c2 = constrain(c2, 170, 255);
      
      color spectrum = color(c1, c, c2);
      pixels[loc] = spectrum;
   
}
  }
 updatePixels();
}
