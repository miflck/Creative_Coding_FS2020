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
  ellipse(posX, posY, 20, 20);
  
  if(posX>width || posX<0){  //  || = or
      speedX*=-1;
  }
  
  if (posY>height ||  posY<0) {
    speedY*=-1;
  }

  
}
