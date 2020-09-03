import java.text.SimpleDateFormat;
import java.util.Date;

Table table;
int rectsize=10;
int monthbefore=0;

void setup() {
  size(800, 800);
  table=loadTable("Feinstaub_Zuerich.csv", "header");
  println(table.getColumnCount());
  println(table.getRowCount());

  int posX=0;
  int posY=0;

  for (TableRow row : table.rows()) {
    float value=row.getFloat("Schimmelstrasse_PM10");
    String datum = row.getString("Datum");

    Date date = new Date();
    try {
      date=new SimpleDateFormat("yyyy-MM-dd").parse(datum);
      int month=date.getMonth();
      if (month != monthbefore) {
        posX=0;
        posY+=rectsize;
      }
      monthbefore=month;
    }
    catch(Exception e) {
      println(e);
    }




    float mappedValue = map(value, 0, 60, 255, 0);

    if (value != value) {
      fill(255, 0, 0);
      // draw rect
      rect(posX, posY, rectsize, rectsize);
    } else {
      fill(mappedValue);
      // draw rect
      rect(posX, posY, rectsize, rectsize);
    }
    //update Position
    posX+=rectsize;
    // check for linebreaks
    if (posX>=width) {
      posX=0;
      posY+=rectsize;
    }
  }
}
