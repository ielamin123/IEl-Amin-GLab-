// Declare Mover object.
Mover mover;

void setup() {
  size(640,360);
  // Create Mover object.
  mover = new Mover();
}

void draw() {
  background(255);

  //[full] Call functions on Mover object.
  mover.update();
  mover.checkEdges();
  mover.display();
  //[end]
}

class Mover {

  //[full] Our object has two PVectors: location and velocity.
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float topspeed;
  //[end]

  Mover() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(random(-2,2),random(-2,2));
    acceleration = new PVector(-0.001,0.01);
    topspeed = 10;
  }

  void update() {

    // The random2D() function will give us a PVector of length 1 pointing in a random direction.
    acceleration = PVector.random2D();

    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,16,16);
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}
