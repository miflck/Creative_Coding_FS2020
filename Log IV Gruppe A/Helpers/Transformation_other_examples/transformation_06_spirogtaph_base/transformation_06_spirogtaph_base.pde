int angle=0;
int speed=3;

int angle2=0;
int speed2=3;

int angle3=0;
int speed3=3;

int angl4=0;
int speed4=3;


void setup() {
  size(500, 500);
  rectMode(CENTER);
  smooth(8);
  pixelDensity(2);
}

/*
void draw() {
 background(255);
 pushMatrix();
 translate(width/2, height/2);
 rotate(radians(angle));
 rect(0, 0, 20, 20);
 popMatrix();
 
 angle+=speed;
 }
 */
/*
void draw() {
 background(255);
 pushMatrix();
 translate(width/2, height/2);
 rotate(radians(angle));
 rect(40, 0, 20, 20);
 line(0,0,40,0);
 popMatrix();
 
 angle+=speed;
 }*/




/*void draw() {
 background(255);
 pushMatrix();
 translate(width/2, height/2);
 rotate(radians(angle));
 translate(40,0);
 rect(0, 0, 20, 20);
 line(0,0,-40,0);
 popMatrix();
 angle+=speed;
 }*/

/*
void draw() {
  background(255);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  translate(40, 0);
  rect(0, 0, 5, 5);
  line(0, 0, -40, 0);

  rotate(radians(angle));
  translate(40, 0);
  rect(0, 0, 5, 5);
  line(0, 0, -40, 0);

  rotate(radians(angle));
  translate(40, 0);
  rect(0, 0, 5, 5);
  line(0, 0, -40, 0);

  popMatrix();
  angle+=speed;
}*/



void draw() {
  background(255);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  translate(40, 0);
  rect(0, 0, 5, 5);
  line(0, 0, -40, 0);

  rotate(radians(angle));
  translate(40, 0);
  rect(0, 0, 5, 5);
  line(0, 0, -40, 0);

  rotate(radians(angle));
  translate(40, 0);
  rect(0, 0, 5, 5);
  line(0, 0, -40, 0);
  
    rotate(radians(angle));
  translate(40, 0);
  rect(0, 0, 5, 5);
  line(0, 0, -40, 0);

  popMatrix();
  angle+=speed;
}