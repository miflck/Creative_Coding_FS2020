void setup() {
  size(500, 500);
  noStroke();
  for (int i=0; i<100; i++) {
    fill(random(255), random(255), random(255), random(100));
    rect(random(width), random(height), random(100), random(100));
  }
}

void draw() {
  
}
