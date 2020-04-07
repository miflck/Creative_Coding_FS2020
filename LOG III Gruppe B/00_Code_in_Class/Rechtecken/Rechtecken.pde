int posx=0;
int posy=0;
float blue=0;
int rectsize=50;


void setup() {
  size(800, 500);
  // Position des Fensters
  //surface.setLocation(300, 500);
}

void draw() {
  //background(0);
  //fill(255-posx,posy,posx);
  blue=map(posx, 0, 800, 0, 255);
  fill(0, 0, blue);
  rect(posx, posy, rectsize, rectsize);
  //posx=posx+50;
  posx+=rectsize;

  if (posx>=width) {
    //posy=posy+50;
    posy+=rectsize;
    posx=0;
  }
  

  if (posy>=height) {
    posy=0;
    posx=0;
    rectsize= round(random(20, 70));
    //rectsize=int(random(20,70));
  }
}
