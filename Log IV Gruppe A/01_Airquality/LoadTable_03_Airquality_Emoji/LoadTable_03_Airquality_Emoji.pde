// import Java Date Stuff to parse the Date field. 
import java.text.SimpleDateFormat;
import java.util.Date;

int month=0;
int monthbefore=0;
int year=114;
int yearbefore=114;

Table table;
// array of emojis
PImage images[]=new PImage[10];       // The source image

int rectsize=30;
float limitValue=50;

color from = color(135, 206, 250);
color to = color(70, 25, 0);

void settings() {

  // calculate height
  table =loadTable("Feinstaub_Zuerich.csv", "header");

  int h=0;
  // loop thorough table to get height
  for (TableRow row : table.rows()) { 
    String datum = row.getString("Datum");
    Date date = new Date();
    try {
      date = new SimpleDateFormat("yyyy-MM-dd").parse(datum);
      month=date.getMonth();
      year=date.getYear();
      println(month);
      println(year);

      if (month!=monthbefore) {
        h+=rectsize;
      }
      if (year!=yearbefore) {
        h+=rectsize;
      }
      monthbefore=month;
      yearbefore=year;
    } 
    catch (Exception e) {
      println(e);
    }
  }
  int w=rectsize*31;
  size(w, h);
  pixelDensity(2);
}

void setup() {
  background(240);
  // load images into array
  for (int i=0; i<10; i++) {
    images[i] = loadImage("images/"+i+".png");  // Load the image
  }

  // positions
  int posX=0;
  int posY=0;

  // reset month
  month=0;
  monthbefore=0;
  year=114;
  yearbefore=114;

  for (TableRow row : table.rows()) { //short  for (int i = 0; i < zeilen.length; i++ ){int wert = zeilen[i];}
    String datum = row.getString("Datum");
    Date date = new Date();
    try {
      date = new SimpleDateFormat("yyyy-MM-dd").parse(datum);
      month=date.getMonth();
      year=date.getYear();
      println(year);
      if (month!=monthbefore) {
        posX=0;
        posY+=rectsize;
      }
      if (year!=yearbefore) {
        posX=0;
        posY+=rectsize;
      }
      monthbefore=month;
      yearbefore=year;
    } 
    catch (Exception e) {
      println(e);
    }

    float value=row.getFloat("Rosengartenstrasse_PM10");
    // map input to int between 0 and 9 to get the right emoji from the array
    int mapped_input=floor(map(value, 0, limitValue, 0, 9));

    //overshoot if its over limitValue as map doesn't clamp at maxValue
    if (mapped_input>8) {
      mapped_input=9; // get dead emoji
    }
    // get the NaNs out. -> https://forum.processing.org/two/discussion/13000/how-to-check-for-nan
    if (value !=value) {
      // do nothing
    } else if (value>limitValue) {
      image(images[mapped_input], posX, posY, rectsize, rectsize);
    } else {

      image(images[mapped_input], posX, posY, rectsize, rectsize);
    }

    posX=posX+rectsize;
    // check linebreak
    if (posX>width) {
      posX=0;
      posY+=rectsize;
    }
  }
  saveFrame();
}
