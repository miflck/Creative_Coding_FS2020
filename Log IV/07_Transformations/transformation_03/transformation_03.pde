
int angle=0;

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  background(255);

  pushMatrix();
  fill(200, 200, 0,100);
  translate(width/2, height/2);
  rotate(radians(angle));
  rect(0, 0, 100, 100);
  
  //Pivot point
  fill(0,255,0,100);
  ellipse(0,0,10,10);
  popMatrix();
  
  
    pushMatrix();
  fill(200, 0, 200,100);
  translate(width/2, height/2);

  rotate(radians(angle));
  rect(-50, -50, 100, 100);
   //Pivot point
  fill(0,255,0,100);
  ellipse(0,0,10,10);
  popMatrix();
  
  
    pushMatrix();
  fill(0, 200, 200,100);
  translate(width/2-50, height/2-50);
  rotate(radians(angle));
  translate(-50,-50);
  rect(0, 0, 100, 100);
  
  //Pivot point
  fill(0,0,255,100);
  ellipse(50,50,10,10);
  popMatrix();
  
  angle++;
  
}