PImage img; 
int posX=0;
int posY=0;
int eWidth=10;
int eHeight=10;

int speed=10;

void settings() {
    size(1, 1);

}

void setup() {
  img = loadImage("mechanicalman.jpg");
  // use only numbers (not variables) for the size() command, Processing 3

  // allow resize and update surface to image dimensions
  surface.setResizable(true);
  surface.setSize(img.width, img.height);
}

void draw() {
  //image(img,0,0);
  color c = img.get (posX, posY);
  fill(c);
  noStroke();
  ellipse(posX, posY, eWidth, eHeight);

  posX+=speed;
  if (posX>width) {
    posX=0;
    posY+=speed;
  }
}
