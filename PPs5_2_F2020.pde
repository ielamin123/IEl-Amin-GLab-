float angle = PI/8;
float aVelocity = 0.0;
float aAcceleration = 0.0;
float period = -0.05;
float length = 0;

void setup(){
  size(640, 320);
}

void draw() {
  background(255);
  translate(width/2, 0);
  
  float y = height/2 + length;
  fill(127);
  stroke(0);
  rotate(angle);
  line(0,0,0,y);
  ellipse(0,y,36,36);
  
  period = length * 0.001;
  aAcceleration = period * sin(angle);
  aVelocity += aAcceleration;
  angle += aVelocity;
  
  length = length - 0.3;
  
  if (y <= 0) {
    length = 0;
    period = -0.05;
    aAcceleration = 0.0;
    aVelocity = 0.0;
    angle = PI/8;
  }
  
 /* if (y >= 200) {
    period = -0.01;
  } else { if (y >= 160) {
    period = -0.05;
  }
  } */
  
  println(y);
}
    
