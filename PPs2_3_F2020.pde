

Square c;

void setup() {
  size(500,500);
  c = new Square();
}

void draw() {
  background(255);
  c.display();
  c.right();
  c.up();
}


class Square{
  
  float x = 0;
  float y = 0;
  float r = 2;
  float s = 0;
  float d = 2;
  float u = -2;

  
  Square(){
    x = 0;
    y = 0;
  }
 
  void display() {
    stroke(0);
    fill(127);
    rect(x,y,50,50);
    println(x);
    println(y);
  }
  
  void right() {
    x = x + r;
    if (x >= 450) {
      r = 0;
      y = y + d;
      if (y >= 450) {
        d = 0;
        r = -2;
      }
    }
  }
      
      void up() {
        if (x == 50 && y >= 450) {
          r = 0;
        }
      }
}


                 


      
 
