
int rectWidth=20;
int ellipseWidth=10;

void setup() {
  size(500, 500);
  pixelDensity(2);
}


void draw() {
  pushMatrix();
  translate(width/2, height/2);
  rect(-rectWidth/2, -rectWidth/2, rectWidth, rectWidth);
  popMatrix();
  rectWidth++;
}