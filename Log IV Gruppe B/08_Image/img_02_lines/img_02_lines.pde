PImage img; 
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
  image(img,0,0);
  // für alle Pixel in der Spalte der Mausposition
  for (int i=0; i < img.height; i=i+1) {
    color c = img.get (int(mouseX), i);
    stroke (c);
    line (0, i, mouseX, i);
  }
}
