// Declare global variables
int x = 0;
float speed = 1;
int d=70;
boolean button;
void setup() {
  size(1000,400);
}

void draw() {
  background(255);
  // Change x by speed
  x = x + int(speed);
  // If we’ve reached an edge, reverse speed
  if ((x > width) || (x < 0)) {
    speed = speed *-1;
  }
  
   stroke(0);
  fill(175);
  ellipse(x,100,d,d);
  
  noStroke();
  rect(390,290,70,70);
  rect(540,290,70,70);
  fill(0);
  stroke(0);
  triangle(450,350,450,300,400,325);
  triangle(550,350,550,300,600,325);
}
void mousePressed(){
   if(mouseX >540 && mouseX <610 && mouseY >290 && mouseY<360){
     button = !button;
     speed = speed * 2;
   }
   if(mouseX >390 && mouseX <460 && mouseY >290 && mouseY<360){
     button = !button;
     speed = speed / 2;
    
   }
}
