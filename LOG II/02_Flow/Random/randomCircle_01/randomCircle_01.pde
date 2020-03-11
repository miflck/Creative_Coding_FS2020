float offset=5;
void setup() {
  size(500, 500);
  strokeWeight(20);
  noFill();
}

void draw() {
  background(255);
  blendMode(MULTIPLY);
  stroke(255, 0, 255);
  ellipse(width/2+random(-offset, offset), height/2+random(-offset, offset), 200, 200);
  stroke(0, 255, 255);
  ellipse(width/2+random(-offset, offset), height/2+random(-offset, offset), 200, 200);
  stroke(255, 255, 0);
  ellipse(width/2+random(-offset, offset), height/2+random(-offset, offset), 200, 200);
  filter(BLUR, 1);
}