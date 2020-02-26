
int rectWidth=20;
color col=color(255,100,20);



void setup() {
  size(500, 500);
  pixelDensity(2);
noStroke();
}


void draw() {
  pushMatrix();
  translate(width/2, height/2);
  fill(col);
  rect(-rectWidth/2, -rectWidth/2, rectWidth, rectWidth);
  popMatrix();
  rectWidth++;
  
  if(rectWidth>500){
    rectWidth=0;
    col=color(255,random(100,200),random(100,200));
  }
}
