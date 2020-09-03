// import Java Date Stuff to parse the Date field. 
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Calendar;
import java.text.DateFormat;



Table table;
int rectsize=50;

float raindropsize=10;
color from = color(255);
color to = color(0, 0, 255);

// max rain input
int frequenzyUpperRange=50;
int frequenzyMaxValue=50;

int frequenzy=10;



// Datum
final DateFormat df = new SimpleDateFormat("dd.MM.yyyy");
final Calendar c = Calendar.getInstance();
int month=0;
int monthbefore=0;
int year=2015;
int yearbefore=2015;



void setup() {
  size(1500, 1200);
  table =loadTable("regen.csv", "header");
}

void draw() {
  fill(255, 20);
  rect(0, 0, width, height);
  // positions
  int posX=0;
  int posY=0;

  month=0;
  monthbefore=0;
  year=2015;
  yearbefore=2015;

  for (TableRow row : table.rows()) { 
    float value=row.getFloat("Bern");
    println(value);
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



    float frequenzy=map(value, 0, frequenzyUpperRange, 0, frequenzyMaxValue); 
    // get the NaNs out. -> https://forum.processing.org/two/discussion/13000/how-to-check-for-nan
    if (value !=value) {
      // grey square to indicate no data
      fill(240);
      rect(posX, posY, rectsize, rectsize);
    } else {
      noStroke();
      fill(0, 0, random(200, 255), random(150, 200));
        for (int k=0; k<frequenzy; k++) {
          float size=random(raindropsize);
          ellipse(random(posX, posX+rectsize), random(posY, posY+rectsize), size, size);
        
      }
    }
    posX=posX+rectsize;
  }
}
