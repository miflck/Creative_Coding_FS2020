int posX=0;
int posY=0;
int rectsize=20;

void setup() {
  size(500, 500);
  //noStroke();
}

void draw() {
  background(0);
  posX=0;
  posY=0;
  
  float xamount=width/rectsize;
  for (int i=0; i<xamount*xamount; i++) {
    rect(posX, posY, rectsize, rectsize);
    posX+=rectsize;
    if (posX+rectsize>width) {
      posX=0;
      posY+=rectsize;
    }
  }
  
  
  
}
