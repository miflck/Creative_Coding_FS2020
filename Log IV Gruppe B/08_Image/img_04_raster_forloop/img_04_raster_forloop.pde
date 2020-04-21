PImage img; 
int posX=0;
int posY=0;
int eWidth=50;
int eHeight=50;

int abstand=10;

void settings() {
    size(1, 1);

}

void setup() {
  img = loadImage("image.jpg");
  surface.setSize(img.width, img.height);
}

void draw() {
  // speed up
  for (int i=0; i<100; i++) {
    color c = img.get (posX, posY);
    float brightness=brightness(c);
    int mappedbrightness=int(map(brightness, 0, 255, abstand, 0));
    fill(0);
    ellipse(posX,posY,mappedbrightness,mappedbrightness);
    
    

    if (posX+abstand>=width) {
      posX=0;
      posY+=abstand;
    } else {
      posX+=abstand;
    }
  }
}
