// import Java Date Stuff to parse the Date field. 
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Calendar;
import java.text.DateFormat;



Table table;
int rectsize=30;

int mapUpperValue=20;

color from = color(255);
color to = color(0, 0, 255);



int month=0;
int monthbefore=0;
int year=2015;
int yearbefore=2015;


void setup() {
  size(1000, 1000);

  table =loadTable("regen.csv", "header");

  final DateFormat df = new SimpleDateFormat("dd.MM.yyyy");
  final Calendar c = Calendar.getInstance();

  // positions
  int posX=0;
  int posY=0;

  for (TableRow row : table.rows()) { 
    float value=row.getFloat("Bern");
    String datum = row.getString("Datum");
    try {
      c.setTime(df.parse(datum));
      month=c.get(Calendar.MONTH);
      year=c.get(Calendar.YEAR);

      // black square at the end of the month or linebreak or whatever
      if (month!=monthbefore) {
        /*
      //  blacksquare as seperator
        fill(0);
        rect(posX, posY, rectsize, rectsize);
        posX+=rectsize;*/
        posX=0;
        posY+=rectsize;
      }
      // double linebreak at end of year
      if (year!=yearbefore) {
        posX=0;
        posY+=rectsize*2;
      }
      // normal linebreak if row exceeds window boundaries
      if (posX>width-rectsize) {
        posX=0;
        posY+=rectsize;
      }
      // set actual month value to month before value
      monthbefore=month;
      yearbefore=year;
    } 
    catch (Exception e) {
      println(e);
    }



    float lerpamount=map(value, 0, mapUpperValue, 0, 1); 
    color fillcolor = lerpColor(from, to, lerpamount);

    // get the NaNs out. -> https://forum.processing.org/two/discussion/13000/how-to-check-for-nan
    if (value !=value) {
      // grey square to indicate no data
      fill(100);
      rect(posX, posY, rectsize, rectsize);
    } else {
      fill(fillcolor);
      rect(posX, posY, rectsize, rectsize);
    }
    posX=posX+rectsize;
  }
}
