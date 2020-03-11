//Setup wird einmal ausgeführt

void setup() {
  size(500, 500);
  pixelDensity(2);
  noStroke();
  background(#F2EDE3);
}

//loop
void draw() {
  fill(255, random(108,200), 125, 50);
  ellipse(mouseX,mouseY, 50, 50);
}


void mouseClicked() {
  background(#F2EDE3);

}
