Ball ball;

void setup() {
  size(640,400);
  ball = new Ball();
}

void draw() {
  background(255);
  ball.display();
  ball.up();
  ball.fall();
  ball.edge();
}




class Ball {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  
  Ball() {
    location = new PVector(width/2, height);
    velocity = new PVector(random(-1,1), random(1,2));
    acceleration = new PVector(0, 0.8);
  }
  
  void display() {
    stroke(0);
    fill(100);
    ellipse(location.x, location.y, 70, 70);
  }
  
  void up() {
    location.add(velocity);
  }
  
  void fall() {
    if(location.y < 150) {
      velocity.add(acceleration);
    } else {
      if(location.y > 250) {
        velocity.sub(acceleration);
      }
    }
  }
  
   void edge() {
     if(location.x >= width + 100) {
       location.x = 0;
     } else {
       if(location.x < 0) {
          location.x = width - 100;
       }
     }
   }

 
       

}
    
 


  

  
