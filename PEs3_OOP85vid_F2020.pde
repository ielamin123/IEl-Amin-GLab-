Particle p1;
Particle p2;

void setup() {
  size(600,400);
  p1 = new Particle(100,100,50);
  p2 = new Particle();
}

void draw() {
  background(0);
  
  if (p1.overlaps(p2)) {
    background(0,255,0);
  }
  
  p2.x = mouseX;
  p2.y = mouseY;
  
  p1.display();
  p2.display();
}


class Particle {
  float x, y;
  float r;
  
  Particle(){
   x = random(width);
   y = random(height);
   r = random(4,36);
  }
  
  Particle(float tempX, float tempY, float tempR){
    x = tempX;
    y = tempY;
    r = tempR;
  }
  
  boolean overlaps(Particle other) {
    float d = dist(x,y,other.x,other.y);
    if (d < r + other.r) {
      return true;
    } else {
      return false;
    }
  }

void display(){
  stroke(255);
  noFill();
  ellipse(x, y, r*2, r*2);
  }
}
