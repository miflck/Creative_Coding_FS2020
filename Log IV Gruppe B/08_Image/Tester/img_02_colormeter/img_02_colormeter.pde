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
  image(img,0,0);
  color c = img.get (mouseX,mouseY);
  fill(c);
  rect(5,5,50,50);
  
  
  fill(0);
  rect(5,57,150,20);
  
  fill(255);
  textSize(20);
  text(int(red(c))+" "+int(green(c))+" "+int(blue(c)), 10, 74); 
}
