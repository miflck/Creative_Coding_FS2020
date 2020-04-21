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
    int mappedbrightness=int(map(brightness, 0, 255, 5, 0));
    for (int k=0; k<mappedbrightness; k++) {
      float d=abstand/mappedbrightness;
            stroke(0);

      line(posX, posY+(d*k), posX+abstand, posY+(d*k));
      stroke(255,0,0);
      line(posX+(d*k), posY, posX+(d*k), posY+abstand);

    }

    

    if (posX+abstand>=width) {
      posX=0;
      posY+=abstand;
    } else {
      posX+=abstand;
    }
  }
}
