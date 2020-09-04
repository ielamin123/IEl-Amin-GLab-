float x = 0.0;

void setup(){
  size(100, 100);
}

void draw(){
  background(204);
  if (x < 20) {
    ellipse(50, 50, 60, 60);
  } else {
    rect (20, 20, 60, 60);
  }
  line(x, 0 ,x, 100);
  x += 0.25;
}
