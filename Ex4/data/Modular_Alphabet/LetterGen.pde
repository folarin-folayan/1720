class LetterGen {

PVector post;
PImage image;

LetterGen (String input1, float x, float y){
  input1 = input;
  post = new PVector(x,y);


 switch(input1) {
   case "a": image = a; break; case "b": image = b; break; case "c": image = c; break;
   case "d": image = d; break; case "e": image = e; break; case "f": image = f; break;
   case "g": image = g; break; case "h": image = h; break; case "i": image = i; break;
   case "j": image = j; break; case "k": image = k; break; case "l": image = l; break;
   case "m": image = m; break; case "n": image = n; break; case "o": image = o; break;
   case "p": image = p; break; case "q": image = q; break; case "r": image = r; break;
   case "s": image = s; break; case "t": image = t; break; case "u": image = u; break;
   case "v": image = v; break; case "w": image = w; break; case "x1": image = x1; break;
   case "y1": image = y1; break; case "z1": image = z1; break;
    }
  }
  
  void draw(){
  tint(0, 127);
    image(image, post.x + 5, post.y + 5);
  }
}
