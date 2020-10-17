Bicycle frame1;
Bicycle frame2;
Bicycle pedal1;
Bicycle pedal2;
Bicycle arm;
Bicycle seatpost;
Bicycle saddle;
Bicycle fork;
Bicycle wheel1;
Bicycle wheel2;


float angle = 1;
float angVelocity = .05;
PVector move;
PVector acceleration;


void setup() {
  size(640, 320);
  move = new PVector(1,0);
  acceleration = new PVector(1,0);
  
  frame1 = new Bicycle(300, 178, 320, 213, 280, 213);
  frame2 = new Bicycle(350, 176, 320, 213, 300, 178);
  pedal1 = new Bicycle(315, 196, 325, 196);
  pedal2 = new Bicycle(315, 230, 325, 230);
  arm = new Bicycle(320, 196, 320, 230);
  seatpost = new Bicycle(320, 213, 293, 165);
  saddle = new Bicycle(286, 165, 300, 165);
  wheel1 = new Bicycle(0, 0, 20);
  wheel2 = new Bicycle(0, 0, 20);
  fork = new Bicycle(370, 213, 341, 157);
}


void draw(){
  background(255);
  angle += angVelocity;
  
  frame1.display();
  frame2.display();
  pedal1.display();
  pedal2.display();
  arm.display();
  seatpost.display();
  saddle.display();
  fork.display();
  
  //handlebar using polar coordinates
  float x1 = 365.44356609468*cos(0.44406626873928);
  float y1 = 365.44356609468*sin(0.44406626873928);
  float x2 = 379.04353311988*cos(0.42706417432183);
  float y2 = 379.04353311988*sin(0.42706417432183);
  line(x1+move.x, y1, x2+move.x, y2); 

  //wheel 1
  pushMatrix();
  translate(280+move.x,213);
  rotate(angle);
  wheel1.display();
  line(-20, 0, 20, 0);
  line(0, 20, 0, -20);
  popMatrix();
  
  //wheel 2
  pushMatrix();
  translate(370+move.x,213);
  rotate(angle);
  wheel2.display();
  line(-20, 0, 20, 0);
  line(0, 20, 0, -20);
  popMatrix();
 
  //ground
  line(0,233,width,233);

  wheel2.velocity();
  wheel2.reset();

  
}






  
 
    
