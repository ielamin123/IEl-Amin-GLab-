float angle = PI/4;
float aVelocity = 0.0;
float aAcceleration = 0.0;

void setup(){
  size(640, 320);
}

void draw() {
  background(255);
  translate(width/2, 0);
  
  fill(127);
  stroke(0);
  rotate(angle);
  line(0,0,0,height/2);
  ellipse(0,height/2,36,36);
  
  aAcceleration = -0.01 * sin(angle);
  aVelocity += aAcceleration;
  angle += aVelocity;
}
