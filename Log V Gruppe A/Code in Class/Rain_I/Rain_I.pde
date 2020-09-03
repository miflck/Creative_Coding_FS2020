Table table;

int rectsize=30;
int padding=20;

color from = color(255);
color to = #0383FF;

int raindropsize=10;


void setup() {
  size(800, 800);
  table=loadTable("regen.csv", "header");
  println(table.getRowCount());
  noStroke();
}

void draw() {
  //background(255);
  
  fill(255,20);
  rect(0,0,width,height);
  
  int posX=0;
  int posY=0;

  pushMatrix();
  translate(padding, padding);
  for (TableRow row : table.rows()) {

    float value=row.getFloat("Bern");
    float mappedValue=map(value, 0, 20, 0, 1);
    color fillcolor=lerpColor(from, to, mappedValue);

    float rainFrequency=map(value, 0, 20, 0, 10);


    pushMatrix();
    translate(posX, posY);
   // fill(fillcolor);
    
    fill(0,0,255,100);
    if (value != value) {
      // do nothing because its a weird value
    } else {

      //rect(0, 0, rectsize, rectsize);
      for (int i=0; i<rainFrequency; i++) {
        
        float size=random(raindropsize);
        ellipse(random(0,rectsize), random(0,rectsize), size, size);
        
      }
    }

    popMatrix();

    posX=posX+rectsize;
    //check for linebreak
    if (posX>width-rectsize-2*padding) {
      posX=0;
      posY+=rectsize;
    }
  }

  popMatrix();
}
