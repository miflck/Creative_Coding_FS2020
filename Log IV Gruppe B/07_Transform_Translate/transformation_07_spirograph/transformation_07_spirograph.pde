/*
HSB Farbraum: 
 fill(Winkel im Farbkreis,Sättigung,Helligkeit)
 
 */


int posX=0;
int posY=25;



int posX2=0;
int posY2=25;


int delay=0;
int angle=0;
int angle2=0;

int maxangle=900;

float h, s, b;

int  mincol, maxcol;



void setup() {
  size(600, 600);
  background(20);
  noStroke();
  colorMode(HSB);
  posY2=height-25;

  h=0;
  s=200;
  b=200;
  noStroke();

  mincol=0;
  maxcol=30;
}

void draw() {

  //background(0);

  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  translate(100, 0);
  rotate(radians(angle2));
  translate(100, 0);
  fill(h, s, b);
  ellipse(0, 0, 10, 10);
  popMatrix();


  angle+=1;
  angle2+=6;
 

}
