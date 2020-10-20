//bobs 
Pendulum p1;
Pendulum p2;
Pendulum p3;
Pendulum p4;
Pendulum p5;

//strings 
Pendulum l1;
Pendulum l2;
Pendulum l3;
Pendulum l4;
Pendulum l5;

void setup() {
  size(640, 320);
  
  p1 = new Pendulum(0,height/2, 32);
  p2 = new Pendulum(0,height/2 + 88, 64);
  p3 = new Pendulum(0,height/2 + 25, 16);
  p4 = new Pendulum(0,height/2 - 90, 10);
  p5 = new Pendulum(0,height/2 + 90, 96);
  
  l1 = new Pendulum(0,0,0,height/2);
  l2 = new Pendulum(0,0,0,height/2 + 88);
  l3 = new Pendulum(0,0,0,height/2 + 25);
  l4 = new Pendulum(0,0,0,height/2 - 90);
  l5 = new Pendulum(0,0,0,height/2 + 90);
}

void draw() {
  background(255);
  
 //pendulum #1
  pushMatrix();
  translate(width/2, 0);
  l1.swing1();
  p1.swing1();
  l1.display();
  p1.display();
  popMatrix();
  
  //pendulum #2
  pushMatrix();
  translate(width/2 + 128, 0);
  l2.swing2();
  p2.swing2();
  l2.display();
  p2.display();
  popMatrix();
  
  //pendulum #3
  pushMatrix();
  translate(width/2 - 128, 0);
  l3.swing3();
  p3.swing3();
  l3.display();
  p3.display();
  popMatrix();
  
  //pendulum #4
  pushMatrix();
  translate(width/2 + 256, 0);
  l4.swing4();
  p4.swing4();
  l4.display();
  p4.display();
  popMatrix(); 
  
  //pendulum #5
  pushMatrix();
  translate(width/2 - 256, 0); 
  l5.swing5();
  p5.swing5();
  l5.display();
  p5.display();
  popMatrix();
}





class Pendulum {
  
  float angle = PI/8;
  float aVelocity = 0.0;
  float aAcceleration = 0.0;
  float x, y, x1, y1, x2, y2, r;
  
  Pendulum(float xx, float yy, float rr){
    x = xx;
    y = yy;
    r = rr;
  }

  Pendulum(float tempX, float tempY, float tempXX, float tempYY){
    x1 = tempX;
    y1 = tempY;
    x2 = tempXX;
    y2 = tempYY;
  }

  void display(){
    fill(127);
    line(x1,y1,x2,y2);
    ellipse(x, y, r, r);
  }

  void swing1(){
    float period = -0.035;
    rotate(angle);
    aAcceleration = period * sin(angle);
    aVelocity += aAcceleration;
    angle += aVelocity;
  }
  
  void swing2(){
    float period = -0.09;
    rotate(angle);
    aAcceleration = period * sin(angle);
    aVelocity += aAcceleration;
    angle += aVelocity;
  }
  
  void swing3(){
    float period = -0.001;
    rotate(angle);
    aAcceleration = period * sin(angle);
    aVelocity += aAcceleration;
    angle += aVelocity;
  }
    
    void swing4(){
    float period = -0.015;
    rotate(angle);
    aAcceleration = period * sin(angle);
    aVelocity += aAcceleration;
    angle += aVelocity;
  }
  
   void swing5(){
    float period = -0.02;
    rotate(angle);
    aAcceleration = period * sin(angle);
    aVelocity += aAcceleration;
    angle += aVelocity;
  }
}
    





  


  
