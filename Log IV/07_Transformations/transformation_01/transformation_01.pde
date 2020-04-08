


void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  background(255);

  fill(0, 255, 0, 100);
  rect(100, 100, 40, 40);

/* Matrix Stack: 
 Nicht das Rechteck bewegen, sondern das ganze Koordinatensystem! 
 "Lokal" bleibt das Rechteck an der selben Position, also auf 10/10, weil aber 
 das ganze Koordinatensystem verschoben wurde, ist es visuell dasselbe Resultat 
 wie ein direktes verschieben des Rechtecks. Scheint kompliziert, ist aber sehr praktisch. 
 Zb wenn man ganze Zeichnungen verschieben will.
 
 Push- und Popmatrix kann man sich in etwa wie eine Ebene in Illustrator vorstellen.
 
 
 */
 
  pushMatrix();
  translate(100, 100);
  fill(255, 0, 0, 100);
  rect(10, 10, 40, 40);
  popMatrix();
}