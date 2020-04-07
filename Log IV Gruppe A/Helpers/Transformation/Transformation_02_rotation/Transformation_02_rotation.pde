void setup() {
  size(500, 500);
}

void draw() {
  fill(255, 0, 0, 200);
  rect(200, 200, 100, 100);

  pushMatrix();
  translate(200, 200);
  // rotate(radians(mouseX));
  rotate(radians(frameCount));
  noStroke();
  fill(0, 0, 255, 100);
  rect(0, 0, 80, 80);
  popMatrix();
}
