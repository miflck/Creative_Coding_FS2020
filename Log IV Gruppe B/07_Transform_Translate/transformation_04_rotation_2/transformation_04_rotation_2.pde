int rectsize=20;
int posX=rectsize/2;
int posY=rectsize/2;

float angle=0;

void setup() {
  size(600, 600);
  background(255);
  colorMode(HSB);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  pushMatrix();
  translate(posX, posY);
  rotate(angle);
  fill(255, 255, 255, 100);
  rect(0, 0, rectsize, rectsize);
  posX+=rectsize;
  if (posX>width) {
    posX=rectsize/2;
    posY+=rectsize;
  }
  popMatrix();
  angle+=0.05;
}
