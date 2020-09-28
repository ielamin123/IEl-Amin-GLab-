Square s; {

s = new Square();
}

void setup() {
  background(0);
  size(200,200);
}

void draw() {
  s.squares();
}



class Square {
  
  float x; 
  float y;
  
   void squares() {
     fill(255);
     for(float x = 0; x <= 200; x = x+40) {
       rect(0, x, 20, 20);
     }
   }
}



  


     
  
