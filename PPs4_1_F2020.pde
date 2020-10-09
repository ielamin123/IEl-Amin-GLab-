PVector location; 
PVector velocity; 

void setup() {
  size(640,360);
  location = new PVector(0,height/2); 
  velocity = new PVector(10,0); 
}

void draw() {
  background(255);

  location.add(velocity); 

  if ((location.x > width) || (location.x < 0)) { 
    velocity.x = velocity.x * -1; 
  } 
  
  stroke(0);
  fill(0);
  ellipse(location.x,location.y,16,16); 
}
