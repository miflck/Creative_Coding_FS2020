int rectsize=5;



void setup() {
  size(500,500);
   background(0);
   noLoop();
   /* i=i+1
     i+=1;
     i++;
     */
     noStroke();
   for(int i=0;i<100; i++){
     rect(random(width-rectsize),random(height-rectsize),rectsize,rectsize);
     println(i);
   }
}


void draw() {
 
}
