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
       rect(x, 0, 20, 20);
       for(float y = 20; y <= 200; y = y+40) {
       rect(y, 20, 20, 20);
       }
     }
   }
}
  


     
  
