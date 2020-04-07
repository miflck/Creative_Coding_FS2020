Table table;
int rectsize=40;


color from = color(255);
color to = color(0,0,255);


void setup() {
  size(800, 800);

  table =loadTable("regen.csv", "header");


  // positions
  int posX=0;
  int posY=0;

  for (TableRow row : table.rows()) { //short  for (int i = 0; i < zeilen.length; i++ ){int wert = zeilen[i];}
    float value=row.getFloat("Bern");
    println(value);
    
    float lerpamount=map(value, 0, 20, 0, 1); // 50 is national limit
    color fillcolor = lerpColor(from, to, lerpamount);

        // get the NaNs out. -> https://forum.processing.org/two/discussion/13000/how-to-check-for-nan
    if (value !=value) {
      // do nothing
    
    } else {
    fill(fillcolor);
      rect(posX, posY, rectsize, rectsize);
    }
    

    posX=posX+rectsize;
    // check linebreak
    if (posX>width) {
      posX=0;
      posY+=rectsize;
    }
  }
}
