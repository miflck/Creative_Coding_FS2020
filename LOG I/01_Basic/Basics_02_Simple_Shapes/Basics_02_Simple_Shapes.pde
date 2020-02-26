/*
HKB Creative Coding
Einführung
Michael Flueckiger
*/


size(400, 400); // Die Grösse der Canvas 

// Punkt
// point(x,y); Zeichnet einen Punkt ins Koordinatensystem  
point (43, 89); 

// Linie:
// line(x1,y1,x2,y2); Verbindet die Punkte x1/y1 und x2/y2   
line (10, 0, 100, 300); 

//Rechteck:
rect (100, 100, 50, 50); // rect(x,y,width,height); Zeichnet ein Rechteck mit dem Ankerpunkt x/y

// Ellipse
// ellipse(x,y,width,height); Zeichnet eine Ellipse um den Punkt x/y
ellipse(300, 300, 50, 20); 

// Dreieck
// triangle(x1,y1,x2,y2,x3,y3); Verbindet die drei Punkte zu einem Dreieck
triangle(200, 200, 100, 250, 300, 250);


arc(300, 55, 60, 60, 0, PI+PI/3,CHORD);