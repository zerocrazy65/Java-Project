boolean first = true;
int lastx = 0;
int lasty = 0;
distLine d1;
void setup(){
  size(500,500);
  background(255);
  d1 = new distLine(mouseX,mouseY,30);
}

void draw(){

}
void mousePressed(){
  d1 = new distLine(mouseX,mouseY,30);
  if(first){
    first = !first;
  }else{
    line(lastx,lasty,mouseX,mouseY);
    float d = dist(lastx,lasty,mouseX,mouseY);
    text(d,mouseX+20,mouseY);
  }
  lastx = mouseX;
  lasty = mouseY;  
  d1.drawLine();
}
