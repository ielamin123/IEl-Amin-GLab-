float angle = 0;
float angleVel = 0.2;
float amplitude = 100;

size(400,200);
background(255);

stroke(0);
strokeWeight(2);
noFill();

beginShape();
for (int x = 0; x <= width; x += 5) {
  // Here’s an example of using the map() function
  // instead.
  float y = map(sin(angle),-1,1,0,height);
  // With beginShape() and endShape(), you call
  // vertex() to set all the vertices of your shape.
  vertex(x,y);
  angle +=angleVel;
}
endShape();
