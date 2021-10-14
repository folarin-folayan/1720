float a,x,y;

void setup() {
  size(1000, 800);
  fill(255,255,255);
  rectMode(CENTER);
  a=0;
  x=500;
  y=400;

}

void draw() {
  background(191,239,255);
  translate(x,y);
  rotate(radians(a));
  rect(0,0,300,300);
  a +=1;
  
  if (mousePressed){
  circle(230,184,220);
  circle(-230,-184,220);}
}
