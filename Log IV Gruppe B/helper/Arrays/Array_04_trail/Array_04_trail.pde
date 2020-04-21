
int num=50;
float[] xPosition = new float[num]; 
float[] yPosition = new float[num]; 


void setup() { 
  size(450, 450); 
  smooth(); 
  noStroke(); 

  for (int i = 0; i<num; i++) {
    xPosition[i] = 0;
    yPosition[i] = 0;

  }
}
void draw() { 

  background(0); 

  //alle werte um 1 verschieben

  for (int i = 0; i<num-1; i++) {
    xPosition[i] = xPosition[i+1];
    yPosition[i] = yPosition[i+1]; 
    fill(255,0,0,i*2);
    ellipse(xPosition[i], yPosition[i], i, i);
  }

  // set the last items in the array to match the mouse position
  xPosition[xPosition.length-1] = mouseX; 
  yPosition[yPosition.length-1] = mouseY;
}