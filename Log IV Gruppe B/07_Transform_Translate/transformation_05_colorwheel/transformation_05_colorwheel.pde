/*
HSB Farbraum: 
 fill(Winkel im Farbkreis,Sättigung,Helligkeit)
 
 */


int posX=0;
int posY=0;
int rectsize=5;
float angle=0;
float ratio=255.0/360.0;

void setup() {
  size(600, 600);
  background(20);
  noStroke();
  colorMode(HSB);
  println(ratio);
}

void draw() {
  fill(ratio*angle, 255, 255);

  pushMatrix();

  translate(width/2, height/2);

  rotate(radians(angle));
  rect(150, 0, 100, rectsize);
  popMatrix();
  angle+=1;
  if (angle>360)angle=0;
}
