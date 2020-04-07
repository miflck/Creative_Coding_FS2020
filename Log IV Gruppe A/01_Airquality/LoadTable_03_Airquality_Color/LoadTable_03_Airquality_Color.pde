Table table;
int rectsize=10;
float maxValue=0;
float minValue=100;


color from = color(135, 206, 250);
color to = color(139, 69, 19);



void setup() {
  size(800, 800);

  table =loadTable("Feinstaub_Zuerich.csv", "header");
  println(table.getColumnTitle(7));

  println(table.getColumnCount());  // Prints 0

  // positions
  int posX=0;
  int posY=0;


  for (TableRow row : table.rows()) { //short  for (int i = 0; i < zeilen.length; i++ ){int wert = zeilen[i];}
    float value=row.getFloat("Rosengartenstrasse_PM10");
    if (value>maxValue)maxValue=value;
    if (value<minValue)minValue=value;
  }


  for (TableRow row : table.rows()) { //short  for (int i = 0; i < zeilen.length; i++ ){int wert = zeilen[i];}
    float value=row.getFloat("Rosengartenstrasse_PM10");


    // lerp color, get ammount
    float lerpamount=map(value, minValue, maxValue, 0, 1);
    // lerp color, get color
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
