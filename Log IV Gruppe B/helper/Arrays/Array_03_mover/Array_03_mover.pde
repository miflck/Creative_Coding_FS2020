
int numMover=100;
float [] xPositions = new float[numMover];
float [] yPositions = new float[numMover];
float [] xSpeeds = new float[numMover];
float [] ySpeeds = new float[numMover];
int [] colors =  new int[numMover];


void setup() {
  size(500, 500);
  for (int i=0; i<numMover; i++) {
    xPositions[i]=random(width);
    yPositions[i]=random(height);
    xSpeeds[i]=random(0.2, 3);
    ySpeeds[i]=random(1, 2);
    colors[i]=color(random(255), random(255), random(255));
  }
  // printArray(xPositions);
  noStroke();
}

void draw() {
  fill(0,10);
  rect(0, 0, width, height);

  for (int i=0; i<numMover; i++) {
    xPositions[i]+=xSpeeds[i];
    yPositions[i]+=ySpeeds[i];

    if (xPositions[i]>width || xPositions[i]<0)xSpeeds[i]=xSpeeds[i]*-1;
    if (yPositions[i]>height || yPositions[i]<0)ySpeeds[i]=ySpeeds[i]*-1;

    fill(colors[i],100);
    rect(xPositions[i], yPositions[i], 10, 10);
  }
}