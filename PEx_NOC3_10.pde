Pendulum p;

void setup() {
  size(640,360);
  // We make a new Pendulum object with
  // an origin location and arm length.
  p = new Pendulum(new PVector(width/2,10),125);
}

void draw() {
  background(255);
  p.go();
}

class Pendulum  {
  //[full] Many, many variables to keep track of the Pendulum’s various properties
  PVector location;    // Location of bob
  PVector origin;      // Location of arm origin
  float r;             // Length of arm
  float angle;         // Pendulum arm angle
  float aVelocity;     // Angle velocity
  float aAcceleration; // Angle acceleration
  float damping;       // Arbitrary damping amount
  //[end]

  Pendulum(PVector origin_, float r_) {
    origin = origin_.get();
    location = new PVector();
    r = r_;
    angle = PI/4;

    aVelocity = 0.0;
    aAcceleration = 0.0;
    // An arbitrary damping so that the Pendulum slows
    // over time
    damping = 0.995;
  }

  void go() {
    update();
    display();
  }

  void update() {
    float gravity = 0.4;
    //[offset-up] Formula we worked out for angular acceleration
    aAcceleration = (-1 * gravity / r) * sin(angle);

    //[full] Standard angular motion algorithm
    aVelocity += aAcceleration;
    angle += aVelocity;
    //[end]

    // Apply some damping.
    aVelocity *= damping;
  }

  void display() {
    // Where is the bob relative to the origin?
    // Polar to Cartesian coordinates will tell us!
    location.set(r*sin(angle),r*cos(angle),0);
    location.add(origin);

    stroke(0);
    // The arm
    line(origin.x,origin.y,location.x,location.y);
    fill(175);
    // The bob
    ellipse(location.x,location.y,16,16);
  }
}
