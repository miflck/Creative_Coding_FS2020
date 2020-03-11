/*
HKB Creative Coding
 Einführung
 Michael Flueckiger
 */

// Setup Funktion, wird einmal aufgerufen
void setup() { 
  size(500, 500); // Grösse des Fensters definieren
  background(255);
  //line(200, 50, 400, 400);
  pixelDensity(2);
}

// draw Funktion, wird geloopt
void draw() {
  // line(random(0,width),random(0,height),random(0,width),random(0,height));

  stroke(0, 100);
  // line(0, 0, random(0, width), random(0, height));
  line(random(0, width), random(0, height), random(0, width), random(0, height));

  stroke(255, 0, 0, 100);
  //line(width, height, random(0, width), random(0, height));
  line(random(0, width), random(0, height), random(0, width), random(0, height));


  stroke(0, 0, 255, 100);
  //line(width, height, random(0, width), random(0, height));
  line(random(0, width), random(0, height), random(0, width), random(0, height));

  stroke(255, 200);
  //line(width, height, random(0, width), random(0, height));
  line(random(0, width), random(0, height), random(0, width), random(0, height));
}