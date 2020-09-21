Square c;

void setup() {
  size(500,500);
  c = new Square();
}

void draw() {
  loop(); 
  background(255);
  c.display();
  c.right();
  c.up();
  c.go();
  }



class Square{
  
  float x = 0;
  float y = 0;
  float r = 3;
  float u = -3;

  
  Square(){
    x = 0;
    y = 0;
  }
 
  void display() {
    stroke(0);
    fill(27,141,160);
    rect(x,y,50,50);
    println(x);
    println(y);
  }
  
  void right() {
    x = x + r;
    if (x >= 450 && y >= 0) {
      r = 0;
      y = y + 3;
      if (y >= 450) {        
        r = -3;
      }
    }
  }
      
      void up() {
        if (x <= 0 && y <= 450) {
          r = 0;          
          y = y - 3;
        }      
      }
      
      void go() {
        if (x <= 0 && y <=0) {
          u = 0;
          r = 3;
        }
      }
}







                 


      
 
