int habitantsZuerich=410404;
float areaZuerich=91900000;
float zuerichWidth=sqrt(areaZuerich);

int habitantsBasel=175131;
float areaBasel=22750000;
float baselWidth=sqrt(areaBasel);

float areaScaleFact=0.04;
float habitantsScaleFact=0.01;

float scaledHabitantsZuerich=habitantsZuerich*habitantsScaleFact;
float zuerichScaledWidth=zuerichWidth*areaScaleFact;

float scaledHabitantsBasel=habitantsBasel*habitantsScaleFact;
float baselScaledWidth=baselWidth*areaScaleFact;

float space=20;


void setup() {
  size(800, 800);
  pixelDensity(2);
  background(255);
  noStroke();
  fill(0);

  for (int i=0; i<scaledHabitantsZuerich; i++) {
    ellipse(random(zuerichScaledWidth), random(zuerichScaledWidth), 5, 5);
  }

  /*for (int i=0; i<scaledHabitantsBasel; i++) {
    ellipse(random(baselScaledWidth)+zuerichScaledWidth+space, random(baselScaledWidth), 5, 5);
  }*/
  
  pushMatrix();
  translate(zuerichScaledWidth+space,500);
   for (int i=0; i<scaledHabitantsBasel; i++) {
    ellipse(random(baselScaledWidth), random(baselScaledWidth), 5, 5);
  }
  popMatrix();
  
}
