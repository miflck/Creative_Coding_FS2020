import processing.svg.*;


PImage img; 
int gutter=20;
int size=20;
float radius=size/2;


void settings() {
  size(1, 1);
}

void setup() {
  img = loadImage("image.jpg");
  surface.setSize(img.width, img.height);
  noStroke();
  noLoop();
  beginRecord(SVG, "filename.svg");
}

void draw() {
  background(255);
  for (float x=radius; x<=width; x+=gutter) {
    for (float y=radius; y<=height; y+=gutter) {
      color c = img.get (int(x),int( y));
      float brightness=brightness(c);
      int mappedbrightness=floor(map(brightness, 0, 255, 5, 1));
      for (int k=0; k<mappedbrightness; k++) {
        float  d=size/mappedbrightness;
        stroke(0);
        noFill();
        ellipse(x, y, d*(k+1),d*(k+1));
      }
    }
  }
    endRecord();
}
