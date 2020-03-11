int xPosition = 0;  
int yPosition =0;
color myColor = color(200, 100, 100);

int rectSize=50;

void setup() {
  size(500, 500);
  pixelDensity(2);
}

//loop
void draw() {
  //background(255,0,0);  
  ///stroke(xPosition,0,0);
  fill(myColor);
  rect(xPosition, yPosition, rectSize, rectSize);
  xPosition=xPosition+rectSize;

  if (xPosition > 500) {
    yPosition=yPosition+rectSize;
    xPosition=0;
  }

  if (yPosition>500) {
    yPosition=0;
    xPosition=0;

    myColor=color(random(255), random(255), random(255));
    rectSize=floor(random(10, 50));
  }
}