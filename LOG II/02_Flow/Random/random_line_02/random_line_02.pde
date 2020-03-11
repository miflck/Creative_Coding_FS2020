/*
HKB Creative Coding
 Einführung
 Michael Flueckiger
 */

float posX=0;
float posY=0;
float posX2=0;

float dilitation=200;

float red=0;


// Setup Funktion, wird einmal aufgerufen
void setup() { 
  size(500, 500); // Grösse des Fensters definieren
  background(255);
  //line(200, 50, 400, 400);
  pixelDensity(2);
  posX2=width;
  strokeWeight(1);
  smooth();
}

// draw Funktion, wird geloopt
void draw() {
  // line(random(0,width),random(0,height),random(0,width),random(0,height));

  stroke(red,0,0, 30);
  // line(0, 0, random(0, width), random(0, height));
  red+=random(-10,10);
  line(random(posX-dilitation, posX+dilitation), random(posY-dilitation, posY+dilitation), random(posX2-dilitation, posX2+dilitation), random(posY-dilitation, posY+dilitation));

  posY+=0.5;
  
  if(posY>height){
    posY=0;
    red+=10;
    println(red);
  }
}