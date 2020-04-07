int rectWidth=50;
int positionX=0;
int positionY=0;
void setup() {
  size(500, 500);
}

void draw() {
  fill(map(positionX, 0, width, 0, 255));
  rect(positionX, positionY, rectWidth, rectWidth);
  positionX+=rectWidth;

  if (positionX>width-rectWidth) {
    positionX=0;
    positionY+=rectWidth;
  }
}
