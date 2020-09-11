float y = 150; 

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  line(5, y, 195, y);
  y = y -1;
  if(y < 10) {
    y = 9;
  }
}
