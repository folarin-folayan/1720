PImage image;
int numpixels = 1300;
Pixel[] pix;

float antigrav = -0.2;
float antigrav1 = 0.01;
float grav = 0.66;

void setup()
{
  background(255);
  size(800, 600, P2D);
  image = loadImage("naruto.jpeg");
  surface.setSize(image.width, image.height);
  
  pix = new Pixel[numpixels];
  for (int i=0; i<pix.length; i++)
  {
    pix[i] = new Pixel(random(width), random(height));
  }
}

void draw()
{
  for (int i=0; i<pix.length; i++)
  {
    pix[i].run();
  }
   antigrav += antigrav1;
   
   if (mousePressed)
     {
       for (int i = 0; i < image.width; i++)
       {
         float x = random(width);
         float y = random(height);
         color z = image.get(int(x), int(y));
         fill (z, 20);
         noStroke();
         ellipse(x, y, 18, 18);
       }
     }
}
