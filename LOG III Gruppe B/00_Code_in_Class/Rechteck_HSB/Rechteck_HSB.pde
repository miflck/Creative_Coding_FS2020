int posx=0;
int posy=0;
float blue=0;
float green=0;
int rectsize=50;

float hue=0;
float saturation=360;
float brightness=360;


void setup() {
  size(800, 500);
  // Position des Fensters
  //surface.setLocation(300, 500);
  colorMode(HSB,360);
}

void draw() {
  //background(0);
  //fill(255-posx,posy,posx);
  fill(hue, saturation,brightness);
  rect(posx, posy, rectsize, rectsize);
  // winkel im Farbkreis 
  /*hue+=20;
  if(hue>360){
  hue=0;
  }*/
  hue=random(0,30);
  saturation=random(250,360);
  brightness=random(200,360);
  //posx=posx+50;
  posx+=rectsize;
  if (posx>=width) {
    //posy=posy+50;
    blue=map(posy, 0, 500, 0, 255);
    println(blue);
    posy+=rectsize;
    posx=0;
  }
  if (posy>=height) {
    posy=0;
    posx=0;
    rectsize= round(random(20, 70));
    blue=0;
    //rectsize=int(random(20,70));
  }
}
