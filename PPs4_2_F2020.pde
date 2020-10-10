Circle c1;
Circle c2;

void setup() {
  size(1000,360);
  c1 = new Circle(16, height/2, 20);
  c2 = new Circle(width-16, height/2, 20);
}

void draw() {
  background(255);
 
 if (c1.meets(c2)) {
   c1.repel1();
   c2.repel2();
 }
   
  c1.display();
  c2.display();
  c1.right();
  c2.left();
  c1.rebound1();
  c2.rebound2();
}





class Circle {
  
  float x;
  float y;
  float r;
  float a = 3;
  float b = -7;
  
  Circle(float tempX, float tempY, float tempR) {
    x = tempX;
    y = tempY;
    r = tempR;
  }
  
    
    boolean meets(Circle other) {
    float d = dist(x,y,other.x,other.y);
    if (d <= r + other.r) {
      return true;
    } else {
      return false;
    }
    }
  
    void display() {
    stroke(0);
    fill(220);
    ellipse(x,y,r*2,r*2);
    }
    
    void right() {
      x = x + a;
    }
    
    void left() {
      x = x + b; 
    }
    
    void back() {
      if (x >= width-20 || x <= 20) {
      x = x * -1;
    }
  }
    
    void repel1() {
      a = -3;
      x -= 3;
    }
    
      void repel2() {
      b = 7;
      x += 7; 
    }
    
    void rebound1() {
      if(x <= 20) {
        a = 3;
        x = x + 3;
      }
    }
    
    void rebound2() {
      if(x >= width-20) {
        b = -7;
        x = x - 7;
      }
    }
}


    

     

      
    

      

 

  

    
