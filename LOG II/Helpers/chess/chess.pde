int rectWidth=50;
int positionX=0;
int positionY=0;


boolean fill=true;

void setup() {
  size(500, 500);
}

void draw() {
  if (fill) {
    fill(0);
  } else {
    fill(255);
  }
  rect(positionX, positionY, rectWidth, rectWidth);
  positionX+=rectWidth;

  if (positionX>width-rectWidth) {
    positionX=0;
    positionY+=rectWidth;
    fill=!fill;
  }
  
  fill=!fill;

  if (positionY>height-rectWidth) {
    positionY=0;
    fill=!fill;
  }
}
