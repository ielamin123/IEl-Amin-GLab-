Bubble b;

void setup(){
  size(640,360);
  b = new Bubble();
}

void draw(){
  background(255);
  b.ascend();
  b.display();
  //b.top();
}

class Bubble{
  
  float x;
  float y;
  
  Bubble(){
    x = width/2;
    y = height;
  }
  
  void ascend(){
    y--;
  }
  
  void display(){
    stroke(0);
    fill(127);
    ellipse(x, y, 64, 64);
  }
}
