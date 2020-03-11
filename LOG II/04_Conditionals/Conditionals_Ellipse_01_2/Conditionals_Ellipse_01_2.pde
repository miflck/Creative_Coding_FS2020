int ellipseWidth=20;
int ellipseHeight=20;

int diff=5;
int heightDiff=9;
color mycolor=color(255, 0, 0);
void setup() {
  size(500, 500);
  noFill();
  stroke(mycolor);
  background(255);
}

void draw() {
  //background(255);
  fill(255,20);
  noStroke();
  rect(0,0,width,height);
  stroke(mycolor);
  ellipse(width/2, height/2, ellipseWidth, ellipseHeight);

  ellipseWidth+=diff;
  ellipseHeight+=heightDiff;
  
  if (ellipseWidth>width) {
    diff*=-1;
  }
  if (ellipseWidth<=20) {
    diff*=-1;
  }
  
    if (ellipseHeight>height) {
    heightDiff*=-1;
  }
  if (ellipseHeight<=20) {
    heightDiff*=-1;
  }
  
  
}