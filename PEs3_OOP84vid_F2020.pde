Bubble b1;
Bubble b2;

void setup(){
  size(640,360);
  b1 = new Bubble(64);
  b2 = new Bubble(16);
}

void draw(){
  background(255);
  b1.ascend();
  b1.display();
  b1.top();
  
  b2.ascend();
  b2.display();
  b2.top();
}

class Bubble{
  
  float x;
  float y;
  float diameter;
  
  Bubble(float tempD){
    x = width/2;
    y = height;
    diameter = tempD;
  }
  
  void ascend(){
    y--;
    x = x + random(-2, 2);
  }
  
  void display(){
    stroke(0);
    fill(127);
    ellipse(x, y, diameter, diameter);
  }
  
  void top(){
    if(y < diameter/2){
     y = diameter/2;
    }
  }
}
