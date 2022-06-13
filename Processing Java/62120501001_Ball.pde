class Ball{
  float x,y;
  float speedx,speedy;
  int size;
  boolean moved = true;
  
  Ball(float x1,float y1, float speedx1, float speedy1, int size1){
    x = x1;
    y = y1;
    speedx = speedx1;
    speedy = speedy1;
    size = size1;
  }
  
  void drawBall(){
     fill(100);
     ellipse(x,y,size,size);
  }
  
  void move(){
    x += speedx;
    y += speedy;
  }
  
  void bounce(){
    if(x<0||x>width){
      speedx *= -1;
    }
    if(y<0||y>height){
       speedy *= -1;
    }
 
  }
  void checkClicked(){
     float d = dist(mouseX,mouseY,x,y);
     if(d < 20){
       if(moved){
     speedx = 0 ;
     speedy = 0; 
     moved = false;
       }else{
     speedx=1;
     speedy=1;
     moved = true;
       }
   }
   }
  
  
     boolean checkMoved(){
     if(moved == false){
    return true;
   } else {
    return true; 
   }
  }
}
