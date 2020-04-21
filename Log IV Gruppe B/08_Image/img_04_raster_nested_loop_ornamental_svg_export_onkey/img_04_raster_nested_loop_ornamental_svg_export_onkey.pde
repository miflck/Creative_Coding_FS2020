import processing.svg.*;


PImage img; 
int gutter=20;
int size=20;
int iterations=5;

float radius=size/2;
boolean bIsRecording=false;

void settings() {
  size(1, 1);
}

void setup() {
  img = loadImage("image.jpg");
  surface.setSize(img.width, img.height);
  noStroke();
}

void draw() {
  if (bIsRecording) {
    beginRecord(SVG, "filename.svg");
  }
  background(255);
  noFill();  
  for (float x=radius; x<=width; x+=gutter) {
    for (float y=radius; y<=height; y+=gutter) {
      color c = img.get (int(x), int( y));
      float brightness=brightness(c);
      int mappedbrightness=floor(map(brightness, 0, 255, iterations, 0));
      for (int k=0; k<mappedbrightness; k++) {
        float  d=float(size)/mappedbrightness;

        stroke(0);
        ellipse(x, y, d*(k+1), d*(k+1));
      }
    }
  }
  if (bIsRecording) {
    endRecord();
    bIsRecording=false;
  }
}

void keyPressed() {
  if (key == 'r') {
    bIsRecording=true;
  } 
  if (key == '+') {
    iterations++;
  } 
  if (key == '-') {
    iterations--;
  }
  if (keyCode == UP) {
    size++;
    gutter++;
  }
  if (keyCode == DOWN) {
    size--;
    gutter--;
  }
/*
  if (keyCode == RIGHT) {
    gutter++;
  }
  if (keyCode == LEFT) {
    gutter--;
  }*/
}
