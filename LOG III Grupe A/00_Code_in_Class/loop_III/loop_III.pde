int posX=0;
int posY=0;
int rectsize=20;

void setup() {
  size(500, 500);
  //noStroke();
}

void draw() {
  background(0);
  
  for (int x=0; x<width; x+=rectsize) {
    for (int y=0; y<height; y+=rectsize) {
      rect(x, y, rectsize, rectsize);
    }
  }
    
}
