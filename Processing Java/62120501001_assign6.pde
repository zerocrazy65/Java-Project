float r = 160; 
float theta = 0;
void setup() {
  size(640, 360);
  background(255);
}

void draw() {
 translate(width/2,height/2);
 rotate(theta);
 noStroke();
 fill(0);
 ellipse(100,0,20,20);
 theta += 0.05;
}
