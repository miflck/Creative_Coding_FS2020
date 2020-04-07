void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  pushMatrix();
  translate(200, 200);
  rotate(radians(mouseX));
  translate(0, -5);
  //rotate(radians(frameCount));
  noStroke();
  fill(0, 0, 255, 100);
  rect(0, 0, 80, 10);
  //fill(255, 0, 0);

  pushMatrix();
  translate(80, 10);
  rotate(radians(135));
  rect(0, 0, 20, 10);
  popMatrix();

  pushMatrix();
  translate(80, 0);
  rotate(radians(-135));
  rect(0, -10, 20, 10);
  popMatrix();

  pushMatrix();
  translate(78, 5);
  rotate(PI/4);
  rect(-5, -5, 10, 10);
  popMatrix();


  popMatrix();
}
