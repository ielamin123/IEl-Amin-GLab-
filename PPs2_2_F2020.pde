Circle s;

void setup(){
  size(200,200);
  s = new Circle();
}

void draw(){
  background(255);
  s.display();
  s.down();
  s.BackUp();
}




class Circle{
  
  float x;
  float y;
  
  Circle(){
    x = width/2;
    y = 0;
  }
  
  void display() {
    stroke(0);
    fill(127);
    ellipse(x, y, 20, 20);
  }
  
  void down() {
    y = y + 2;
  }
  
  void BackUp() {
    if (y > 220) {
      y = -15;
    }
  }
}
