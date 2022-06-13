Ball[] ball = new Ball[10];

void setup(){
  size(500,500);
  for(int i =0; i<ball.length;i++){
    float x = random(0,width);
    float y = random(0, height);
    float speedx = random(0,3);
    float speedy = random(0,3);
    
    ball[i] = new Ball(x,y,speedx,speedy,50);
  }
}

void draw(){
  background(255);
  for(int i =0; i<ball.length;i++){
    ball[i].move();
    ball[i].bounce();
    ball[i].drawBall();
  }
}

void mousePressed(){
  for(int i =0; i<ball.length;i++){
        ball[i].checkClicked();
        ball[i].checkMoved();

        
}

}
