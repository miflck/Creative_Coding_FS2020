int posx=0;
int posy=0;
int rectsize=20;

// zweite stufe
int offset=0;

void setup() {
  size(500, 500);
  background(255);
  colorMode(RGB, 500);
  // noStroke();
}

void draw() {
  fill(posx, posy, 500-posx);
  rect(posx, posy, rectsize, rectsize);
  posx+=rectsize;
  if (posx>=width) {
    posx=offset;
    posy+=rectsize;
  }

 if (posy>height) {
   posy=0;
    offset-=10;
    posx=offset;
  }
}