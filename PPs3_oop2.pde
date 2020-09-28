Particle p1;
Particle p2;
Particle p3;
Particle p4;
Particle p5;

void setup() {
  size(600,400);
  p1 = new Particle(100,100,50);
  p2 = new Particle();
  p3 = new Particle(550,100,25);
  p4 = new Particle(200,350,75);
  p5 = new Particle(400,143,100);
  println(p5.r);
}

void draw() {
  background(0);
  
  if (p1.overlaps(p2)) {
    background(0,255,0);
  }
  
  if (p4.overlaps(p2)) {
    p4.grow();
  }
  
  if (p3.overlaps(p2)) {
    p3.shift();
  }
  
  if (p5.overlaps(p2)) {
    p5.teleport();
  }
  
  if (p5.r >= height) {
    p5.randomize();
  }
    
  p2.x = mouseX;
  p2.y = mouseY;
  
  p1.display();
  p2.display();
  p3.display();
  p4.display();
  p5.display();
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
  
  void grow() {
    r++; 
  }
  
  void shift() {
    fill(255, 200, 200);
    ellipse(x, y, r*2, r*2);
  }
  
  void teleport() {
    x = random(width);
    y = random(height);
    fill(182, 31, 216);
    ellipse(x, y, r*2, r*2);
  }
  
  void randomize() {
    r = random(5, 25);
  }
    
}
