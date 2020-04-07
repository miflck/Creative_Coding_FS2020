// import Java Date Stuff to parse the Date field. 
import java.text.SimpleDateFormat;
import java.util.Date;

int month=0;
int monthbefore=0;
int year=0;
int yearbefore=0;

Table table;
int rectsize=10;
float limitValue=50;


color from = color(135, 206, 250);
color to = color(70, 25, 0);



void setup() {
  size(800, 800);

  table =loadTable("Feinstaub_Zuerich.csv", "header");
  println(table.getColumnTitle(7));

  println(table.getColumnCount());  // Prints 0

  // positions
  int posX=0;
  int posY=0;




  for (TableRow row : table.rows()) { //short  for (int i = 0; i < zeilen.length; i++ ){int wert = zeilen[i];}

    String datum = row.getString("Datum");

    Date date = new Date();
    try {
      date = new SimpleDateFormat("yyyy-MM-dd").parse(datum);
      month=date.getMonth();
      println("month "+month);


      if (month!=monthbefore) {
        posX=0;
        posY+=rectsize;
        println(month);
      }

      monthbefore=month;
    } 
    catch (Exception e) {
      println(e);
    }

    float value=row.getFloat("Rosengartenstrasse_PM10");
    // lerp color, get ammount
    float lerpamount=map(value, 0, limitValue, 0, 1); // 50 is national limit
    // lerp color, get color
    color fillcolor = lerpColor(from, to, lerpamount);

    // get the NaNs out. -> https://forum.processing.org/two/discussion/13000/how-to-check-for-nan
    if (value !=value) {
      // do nothing
    } else if (value<limitValue) {
      fill(fillcolor);
      rect(posX, posY, rectsize, rectsize);
    } else {
      fill(0);
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
