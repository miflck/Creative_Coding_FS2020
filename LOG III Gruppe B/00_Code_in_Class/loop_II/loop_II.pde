int posx=0;
int posy=0;
int rectsize=20;
color c=color(255, 0, 0);

int hue=0;
int saturation=0;
int brightness=360;

void setup() {
  size(500, 500);
  colorMode(HSB, 360);
  noStroke();
}

void draw() {
  background(0, 0, 0);
  float num=width/rectsize;
  num*=num;

  posx=0;
  posy=0;
  for (int i=0; i<num; i++) {
    float s = map(i, 0, num, 0, 360);
    float b = map(i, 0, num, 360, 0);

    //fill(hue,s,b);
    fill(hue%360, s, b);
    rect(posx, posy, rectsize, rectsize);
    posx+=rectsize;
    if (posx>=width) {
      posy+=rectsize;
      posx=0;
    }
  }
  hue++;  
  // if(hue>360){hue=0}
}
