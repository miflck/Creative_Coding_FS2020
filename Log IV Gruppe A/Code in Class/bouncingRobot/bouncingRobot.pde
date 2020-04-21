int posX=0;
int posY=0;

int speedX=5;
int speedY=3;


void setup() {
  size(500, 500);
}

void draw() {
  posX+=speedX;
  posY+=speedY;
 pushMatrix();
 translate(posX,posY);
  // Head
triangle(100, 100, 150, 30, 200, 100);
fill(100, 100, 100);
rect(100, 100, 100, 100);
fill(255);
ellipse(130, 130, 20, 20);
ellipse(170, 130, 20, 20);
rect(110, 160, 80, 10);

//
fill(100, 100, 100);
rect(80, 210, 140, 100);


// buttons & stuff
fill(255, 0, 0);
ellipse(100, 230, 10, 10);

fill(0, 255, 100);
ellipse(115, 230, 10, 10);

fill(200, 255, 100);
rect(95, 240, 25, 25);

//Arms
line(80, 230, 50, 150);
line(220, 230, 250, 150);

//Legs
line(120, 310, 100, 400);
line(180, 310, 200, 400);
popMatrix();
  
  if(posX>width || posX<0){  //  || = or
      speedX*=-1;
  }
  
  if (posY>height ||  posY<0) {
    speedY*=-1;
  }

  
}
