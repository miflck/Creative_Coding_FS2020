int posx=0;
int posy=0;
int speedx=10;
int speedy=7;
color col=color(random(255));

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  fill(col);
  ellipse(posx, posy, 20, 20);
  posx+=speedx;
  posy+=speedy;
  if (posx>=width || posx<=0 ) {
    speedx*=-1;
    col=color(random(255));
  }
  if (posy>=height || posy<=0) {
    speedy*=-1;
    col=color(random(255));
  }
   saveFrame();
}


void keyPressed() {
  println(key);
  if (key=='s') {
    saveFrame();
  }
}
