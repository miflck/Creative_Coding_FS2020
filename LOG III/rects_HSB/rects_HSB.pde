int xPos=0;
int yPos=0;
int rectWidth=50;
int hue=0;
int saturation=255;

float min=0;
float max=200;

void setup() {
  size(500, 500);
  noStroke();
  colorMode(HSB);
  frameRate(10);
}


void draw() {
  float h=map(xPos,0,width-rectWidth,min,max); 
  println("myh "+h);
  fill(h,255,255); 
  rect(xPos, yPos, rectWidth, rectWidth);
  xPos=xPos+rectWidth;

  if (xPos>width-rectWidth) {
    xPos=0;
    yPos=yPos+rectWidth;


  }
  
  if (yPos>height) {
    xPos=0;
    yPos=0;   
    
    float temp=min;
    min=max;
    max=temp;
    println("-----"+map(xPos,0,width-rectWidth,min,max));
  }
}