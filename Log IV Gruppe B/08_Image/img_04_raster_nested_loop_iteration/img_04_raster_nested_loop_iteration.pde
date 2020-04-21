PImage img; 
int gutter=10;
int size=9;


void settings() {
    size(1, 1);

}

void setup() {
  img = loadImage("image.jpg");
  surface.setSize(img.width, img.height);
  noStroke();
}

void draw() {
  background(255);
 for (int x=0; x<=width-size; x+=gutter) {
    for (int y=0; y<=height; y+=gutter) {
      color c = img.get (x, y);
      float brightness=brightness(c);
    int mappedbrightness=int(map(brightness, 0, 255, gutter, 0));

      fill(0);
      ellipse(x,y,mappedbrightness,mappedbrightness);
    }
  }
}
