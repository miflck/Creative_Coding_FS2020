PImage img; 

void setup() {
  size(500,500);
  img = loadImage("mechanicalman.jpg");
}

void draw() {
  image(img,mouseX-img.width/2,mouseY-img.height/2);
}
