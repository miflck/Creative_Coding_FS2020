int rectWidth=50;
int positionX=0;
int positionY=0;

boolean even;
int counter;

void setup() {
  size(500, 500);
}

void draw() {
  if (counter%2==0) {
    fill(0);
  } else {
    fill(255);
  }
  rect(positionX, positionY, rectWidth, rectWidth);
  positionX+=rectWidth;

  if (positionX>width-rectWidth) {
    positionX=0;
    positionY+=rectWidth;
    // counter++; // offset to "chess"
  }
  counter++;
}
