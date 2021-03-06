// import Java Date Stuff to parse the Date field. 
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Calendar;
import java.text.DateFormat;


int month=0;
int monthbefore=0;
int year=0;
int yearbefore=0;
int day=31;
int daybefore=31;
int time=0;
int timebefore=0;

Table table;

// Shape
int rectheight=5;
int rectlength=40;
int spacing=10;
int rowHeight=rectlength+spacing;


// placement on screen
int padding=rectlength;

color from = color(255);
color to = color(20, 188, 247);


void settings() {
  println("settings");

  int w=padding+24*rectlength+padding;
  int h=padding+8*(rectlength+spacing)+padding;
  size(w, h);
}




void setup() {
  background(#FAF6EB);
  noStroke();

  table =loadTable("WindZuerich.csv", "header");
  // positions
  int posX=padding;
  int posY=padding;

  final DateFormat df = new SimpleDateFormat("yyyyMMdd'T'HHmm");
  final Calendar c = Calendar.getInstance();

  for (TableRow row : table.rows()) { //short  for (int i = 0; i < zeilen.length; i++ ){int wert = zeilen[i];}
    String datum = row.getString("timestamp");
    try {
      c.setTime(df.parse(datum));
      month=c.get(Calendar.MONTH);
      year=c.get(Calendar.YEAR);
      day=c.get(Calendar.DAY_OF_MONTH);
      time=c.get(Calendar.HOUR_OF_DAY);

      /*println("year "+year);
       println("month "+month);
       println("day "+day);
       println("time "+time);
       */

      if (day!=daybefore) {
        posX=padding;
        posY+=rowHeight;
        println("day break" +day);
      }

      monthbefore=month;
      daybefore=day;
      timebefore=time;
    } 
    catch (Exception e) {
      println(e);
    }

    float windspeed=row.getFloat("Zürich Wind Speed [10 m]");
    float mappedWindspeed=map(windspeed, 0, 20, 0, rectlength);

    float winddir=row.getFloat("Zürich Wind Direction [10 m]");

    float lerpamount=map(windspeed, 0, 20, 0, 1); // 50 is national limit
    color fillcolor = lerpColor(from, to, lerpamount);

    // get the NaNs out. -> https://forum.processing.org/two/discussion/13000/how-to-check-for-nan
    if (windspeed !=windspeed) {
      // do nothing
    } else {
      fill(fillcolor);
      pushMatrix();
      translate(posX, posY);
      rotate(radians(winddir));
      rect(0, 0, mappedWindspeed, rectheight);
      popMatrix();
      // debug view
      noFill();
      stroke(0, 10);
      rect(posX, posY, rectlength, rectlength);
    }

    posX=posX+rectlength;
  }
}
