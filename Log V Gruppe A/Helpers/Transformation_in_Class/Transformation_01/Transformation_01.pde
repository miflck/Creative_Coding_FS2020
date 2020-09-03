
void setup() {
  size(500, 500);
}

void draw() {
  fill(255);
  rect(width/2, height/2, 100, 100);

  pushMatrix();
  translate(width/2, height/2);
  fill(255, 0, 0);
  rect(0, 0, 80, 80);
  rect(0, 90, 80, 80);
  popMatrix();
  
}
