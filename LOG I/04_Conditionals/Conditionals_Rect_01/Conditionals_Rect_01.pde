int posx=0;
int posy=0;
int rectsize=20;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  fill(random(255),random(255),random(255));
  rect(posx, posy, rectsize, rectsize);
  posx+=rectsize;
  if (posx>=width) {
    posx=0;
    posy+=rectsize;
  }
}