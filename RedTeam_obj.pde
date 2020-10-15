Bicycle frame1;
Bicycle frame2;
Bicycle pedal1;
Bicycle pedal2;
Bicycle arm;
Bicycle seatpost;
Bicycle saddle;
Bicycle fork;
Bicycle handlebar;
Bicycle wheel1;
Bicycle wheel2;
Bicycle spoke1;
Bicycle spoke2;
Bicycle spoke3;
Bicycle spoke4;
Bicycle spoke5;
Bicycle spoke6;


void setup() {
  size(640, 320);
  frame1 = new Bicycle(300, 178, 320, 213, 280, 213);
  frame2 = new Bicycle(350, 176, 320, 213, 300, 178);
  pedal1 = new Bicycle(315, 196, 325, 196);
  pedal2 = new Bicycle(315, 230, 325, 230);
  arm = new Bicycle(320, 196, 320, 230);
  seatpost = new Bicycle(320, 213, 293, 165);
  saddle = new Bicycle(286, 165, 300, 165);
  wheel1 = new Bicycle(280, 213, 20);
  wheel2 = new Bicycle(370, 213, 20);
  fork = new Bicycle(370, 213, 341, 157);
  handlebar = new Bicycle(330, 157, 345, 157);
  spoke1 = new Bicycle(280, 213, 280, 193);
  spoke2 = new Bicycle(280, 213, 263, 223);
  spoke3 = new Bicycle(280, 213, 297, 223);
  spoke4 = new Bicycle(370, 213, 370, 193);
  spoke5 = new Bicycle(370, 213, 353, 223);
  spoke6 = new Bicycle(370 ,213, 387, 223);
}


void draw(){
  background(255);
  wheel1.display();
  wheel2.display();
  frame1.display();
  frame2.display();
  pedal1.display();
  pedal2.display();
  arm.display();
  seatpost.display();
  saddle.display();
  fork.display();
  handlebar.display();
  spoke1.display();
  spoke2.display();
  spoke3.display();
  spoke4.display();
  spoke5.display();
  spoke6.display();
}





class Bicycle {
  float x, x1, x2;
  float y, y1, y2;
  float r; 
  float a;
  float b;
  float c;
  float d;
  float e;
  float f;
  
  PVector wheelspot;
  PVector velocity;
  PVector acceleration;
  
  
  /*
  Bicycle() {
   wheelspot = new PVector(x,y);
   velocity = new PVector(x,y);
   acceleration = new PVector(x,y);
  }
  */
    
  
  Bicycle(float XX, float YY, float RR) {
    x = XX;
    y = YY;
    r = RR;
  }
  
  Bicycle(float x1, float y1, float x2, float y2, float x3, float y3) {
    a = x1;
    b = y1;
    c = x2;
    d = y2;
    e = x3;
    f = y3;
  }
  
  Bicycle(float tempX, float tempY, float tempX1, float tempY1) {
    x1 = tempX;
    y1 = tempY;
    x2 = tempX1;
    y2 = tempY1;
  }
    
  
  void display(){
    stroke(0);
    noFill();
    strokeWeight(2);
    line(x1, y1, x2, y2);
    triangle(a, b, c, d, e, f);
    ellipse(x, y, r*2, r*2);   
  }
}

  
 
    
