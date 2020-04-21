PImage img; 

int gutter=10;
int size=9;

void settings() {
  // use only numbers (not variables) for the size() command, Processing 3
  size(1, 1);
}

void setup() {
  img = loadImage("mechanicalman.jpg");


  // allow resize and update surface to image dimensions
  //surface.setResizable(true);
  surface.setSize(img.width, img.height);
  
  noStroke();
}

void draw() {
  //image(img, 0, 0);
  for (int x=0; x<=width; x+=gutter) {
    for (int y=0; y<=height; y+=gutter) {
      color c = img.get (x, y);
      fill(c);
      ellipse(x,y,size,size);
    }
  }
}
