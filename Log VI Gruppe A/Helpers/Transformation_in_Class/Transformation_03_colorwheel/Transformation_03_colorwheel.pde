// Pivot Point is always 0,0
void setup() {
  size(500, 500);
  pixelDensity(2);
  colorMode(HSB,360);
  background(0,0,0);
}

void draw() {

  pushMatrix();
  translate(width/2, height/2);
  // rotate(radians(mouseX));
  rotate(radians(frameCount%360));
  noStroke();
  fill(frameCount%360, 360, 360, 10);
  rect(20, -10, random(0,80), 20);
  popMatrix();
}
