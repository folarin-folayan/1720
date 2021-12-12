void mouseDragged() {
  // add point based on width/height
  xy.line(mouseX, mouseY, pmouseX, pmouseY);
  
  if (strokes.size() > 0) {
    Stroke stroke = strokes.get(strokes.size()-1);
    stroke.points.add(new PVector(mouseX, mouseY));
    stroke.timestamp = millis();
  }

  marktime = millis();
}

void keyPressed() {
  if (keyCode == 8) { // DELETE
    xy.clearWaves();
  }
}

void mousePressed() {
  
  gif1.play();
  pitch = int(map(mouseY, height, 0, 0, 127));
  velocity = int(map(mouseX, 0, width, 0, 127));
  thebus.sendNoteOn(channel, pitch, velocity); // Turns on Midi
  
  popups.add(new PopUp(mouseX, mouseY, velocity + 10));
  
  sickomode.play(); //plays the audio
  lit.play();
    
  Stroke stroke = new Stroke();
  strokes.add(stroke);
}

void mouseReleased() {
 
  thebus.sendNoteOff(channel, pitch, velocity); //turns of midi
  
  sickomode.pause(); //pauses the audio
  lit.rewind(); //rewinds the audio
}
