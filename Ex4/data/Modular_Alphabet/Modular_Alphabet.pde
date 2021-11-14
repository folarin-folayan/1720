PImage a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x1, y1, z1;
String input = "b";

LetterGen ma1, ma2, ma3, ma4, ma5, ma6, ma7, ma8, ma9, ma10;
LetterGen ma11, ma12, ma13, ma14, ma15, ma16, ma17, ma18, ma19, ma20;
LetterGen ma21, ma22, ma23, ma24, ma25, ma26;

void setup() {
  size(1200, 1000, P2D);
  
  a = loadImage("a.png"); b = loadImage("b.png"); c = loadImage("c.png");
  d = loadImage("d.png"); e = loadImage("e.png"); f = loadImage("f.png");
  g = loadImage("g.png"); h = loadImage("h.png"); i = loadImage("i.png");
  j = loadImage("j.png"); k = loadImage("k.png"); l = loadImage("l.png");
  m = loadImage("m.png"); n = loadImage("n.png"); o = loadImage("o.png");
  p = loadImage("p.png"); q = loadImage("q.png"); r = loadImage("r.png");
  s = loadImage("s.png"); t = loadImage("t.png"); u = loadImage("u.png");
  v = loadImage("v.png"); w = loadImage("w.png"); x1 = loadImage("x.png");
  y1 = loadImage("Y.png"); z1 = loadImage("Z.png");
  
  ma1 = new LetterGen("a", -40, -40); ma2 = new LetterGen("b", 100, -20); ma3 = new LetterGen("c", 230, -40);
  ma4 = new LetterGen("d", 370, -40); ma5 = new LetterGen("e", 500, -30); ma6 = new LetterGen("f", 650, -20); 
  ma7 = new LetterGen("g", 780, -40); ma8 = new LetterGen("h", -40, 130); ma9 = new LetterGen("i", 100, 160); 
  ma10 = new LetterGen("j", 230, 150); ma11 = new LetterGen("k", 380, 150); ma12 = new LetterGen("l", 520, 150); 
  ma13 = new LetterGen("m", 630, 130); ma14 = new LetterGen("n", 790, 150); ma15 = new LetterGen("o", -30, 363);
  ma16 = new LetterGen("p", 150, 370); ma17 = new LetterGen("q", 320, 370); ma18 = new LetterGen("r", 500, 370); 
  ma19 = new LetterGen("s", 630, 370); ma20 = new LetterGen("t", 780, 370); ma21 = new LetterGen("u", -40, 560); 
  ma22 = new LetterGen("v", 150, 550); ma23 = new LetterGen("w", 350, 580); ma24 = new LetterGen("x1", 500, 580); 
  ma25 = new LetterGen("y1", 630, 550); ma26 = new LetterGen("z1", 780, 580);
}

void draw() {
background(255);
  
  if(keyPressed)
  
  if (key == 'a') {
    ma1.draw();
    a = loadImage("a.png");
  }
   if (key == 'b') {
    ma2.draw();
    a = loadImage("b.png");
  }
     if (key == 'c') {
    ma3.draw();
    a = loadImage("c.png");
  }
  if (key == 'd') {
    ma4.draw();
    a = loadImage("d.png");
  }
   if (key == 'e') {
    ma5.draw();
    a = loadImage("e.png");
  }
     if (key == 'f') {
    ma6.draw();
    a = loadImage("f.png");
  }
  if (key == 'g') {
    ma7.draw();
    a = loadImage("g.png");
  }
   if (key == 'h') {
    ma8.draw();
    a = loadImage("h.png");
  }
     if (key == 'i') {
    ma9.draw();
    a = loadImage("i.png");
  }
  if (key == 'j') {
    ma10.draw();
    a = loadImage("j.png");
  }
   if (key == 'k') {
    ma11.draw();
    a = loadImage("k.png");
  }
     if (key == 'l') {
    ma12.draw();
    a = loadImage("l.png");
  }
    if (key == 'm') {
    ma13.draw();
    a = loadImage("m.png");
  }
   if (key == 'n') {
    ma14.draw();
    a = loadImage("n.png");
  }
     if (key == 'o') {
    ma15.draw();
    a = loadImage("o.png");
  }
    if (key == 'p') {
    ma16.draw();
    a = loadImage("p.png");
  }
   if (key == 'q') {
    ma17.draw();
    a = loadImage("q.png");
  }
     if (key == 'r') {
    ma18.draw();
    a = loadImage("r.png");
  }
    if (key == 's') {
    ma19.draw();
    a = loadImage("s.png");
  }
   if (key == 't') {
    ma20.draw();
    a = loadImage("t.png");
  }
     if (key == 'u') {
    ma21.draw();
    a = loadImage("u.png");
  }
     if (key == 'v') {
    ma22.draw();
    a = loadImage("v.png");
  }
     if (key == 'w') {
    ma23.draw();
    a = loadImage("w.png");
  }
       if (key == 'x') {
    ma24.draw();
    a = loadImage("x.png");
  }
     if (key == 'y') {
    ma25.draw();
    a = loadImage("y.png");
  }
     if (key == 'z') {
    ma26.draw();
    a = loadImage("z.png");
     }

}
