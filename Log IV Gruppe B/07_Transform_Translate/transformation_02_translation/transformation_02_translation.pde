


void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  background(255);



  /* Matrix Stack: 
   Nicht das Rechteck bewegen, sondern das ganze Koordinatensystem! 
   "Lokal" bleibt das Rechteck an der selben Position, also auf 10/10, weil aber 
   das ganze Koordinatensystem verschoben wurde, ist es visuell dasselbe Resultat 
   wie ein direktes verschieben des Rechtecks. Scheint kompliziert, ist aber sehr praktisch. 
   Zb wenn man ganze Zeichnungen verschieben will.
   
   Push- und Popmatrix kann man sich in etwa wie eine Ebene in Illustrator vorstellen.
   
   
   */


  pushMatrix();
  translate(10, 10);
  fill(255, 0, 0, 100);
  triangle(0, 100, 50, 30, 100, 100);
  fill(100, 100, 100);
  rect(0, 100, 100, 100);
  fill(255);
  ellipse(30, 130, 20, 20);
  ellipse(70, 130, 20, 20);
  rect(10, 160, 80, 10);
  popMatrix();


  pushMatrix();
  translate(mouseX, mouseY);
  fill(255, 0, 0, 100);
  triangle(0, 100, 50, 30, 100, 100);
  fill(100, 100, 100);
  rect(0, 100, 100, 100);
  fill(255);
  ellipse(30, 130, 20, 20);
  ellipse(70, 130, 20, 20);
  rect(10, 160, 80, 10);
  popMatrix();
  
  
  
  
}
