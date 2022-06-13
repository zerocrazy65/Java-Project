int circleX = 0;
int circleY = 100;
int size = 40;
boolean reverse = false;
int x = 550;
void setup() {
  size(640,360);
}

void draw() {
  background(255);
  stroke(0);
  if(x > 0){
    if(circleX < x){
      fill(#27F0D3);
      ellipse(circleX,circleY,size,size);
      circleX = circleX += 3;
      size += 1; 
      }
    else{
      fill(#27F0D3);
      ellipse(circleX,circleY,size,size);
      x -= 3 ;
      circleX = circleX - 3;
      size -= 1; 
    }
  }
   else{
     x += 550;
   
  }
}
