
void setup() {
  size(500, 500);
}

void draw() {
  background(#FFF1D6);
  float p=map(mouseX, 0, width, 0, 50);
  fill(255);
  rect(p, 100, 50, 50);
  noFill();
  rect(0, 0, 100, 100);
  float pX=map(mouseX, 0, 100, 0, width);
  float pY=map(mouseY, 0, 100, 0, width);
  fill(255, 0, 0);
  rect(pX, pY, 50, 50);
}
