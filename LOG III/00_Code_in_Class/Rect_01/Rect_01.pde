int posx =0;
int posy=0;
int rectsize=20;

void setup() {
  size(500, 500);
}

void draw() {
  float redValue=map(posx, 0, width, 0, 255);
  float blueValue=map(posx, 0, width, 255, 0);
  float greenValue=map(posy, 0, width, 0, 255);

  fill(redValue, greenValue, blueValue);
  rect(posx, posy, rectsize, rectsize);
  posx+=rectsize;

  if (posx>width) {
    posy+=rectsize; //posy=posy+rectsize;
    posx=0;
  }

  if (posy>height) {
    posy=0;
    posx=0;
  }
}
