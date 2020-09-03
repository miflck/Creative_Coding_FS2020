Table table;
int rectsize=10;



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
    println(value);
    float mappedGrey=map(value, 0, 50, 255, 0);
    fill(mappedGrey);
    rect(posX, posY, rectsize, rectsize);
    posX=posX+rectsize;
    // check linebreak
    if (posX>width) {
      posX=0;
      posY+=rectsize;
    }
  }
}
