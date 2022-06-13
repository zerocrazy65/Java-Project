class Setting{
 int theta = 0; // Used to make the circle spin
 int radius = 200; // Radius in pixels of the circle
 float m = 0 ;//function e
 int a = 2;//function w
 int p = 1;//function q
 float s = 10;//bands
void Circle(){
  translate(width/2, height/2);//middle
  background(0);
  if(player.isPlaying()) theta += 2; // Circle only rotates while music is playing
//------------ Audio Visualization -------------//
  fft.forward(player.mix);//player mix
  float bands = s;//bands is 10
  for(int i = 0; i < bands; i++){
   // Starting positions of line
    float start_x = radius*cos(PI*(i+theta)/bands-m);
    float start_y = radius*sin(PI*(i+theta)/bands-m);
    float start_a = radius*cos(PI*(i+theta+a)/bands);
    float start_b = radius*sin(PI*(i+theta+a)/bands);
  if(p == 0){
     m = 2.5;
  }
  else{
     m = 0;
  }
//---------Draw line based on sound---------//
  stroke(255);
  strokeWeight(1);
  if (i < bands){
    fill(0);
    rectMode(CENTER);
    rect(0, 0, fft.getBand(i), fft.getBand(i));
    
//Line based on band length
    line(start_x, start_y, start_x + fft.getBand(i)*3*cos(PI*(i+theta+a)/bands), start_y + fft.getBand(i)*3*sin(PI*(i+theta+a)/bands));
    if(p == 1){
    line(start_a , start_b,start_a + fft.getBand(i)*3*cos(PI*(i+theta)/bands), start_b + fft.getBand(i)*3*sin(PI*(i+theta)/bands));
    }
   }
 }
}
void Cursor(){
  if (mouseX > 0) {
    cursor(CROSS);
  }
}
void Wave(){
  translate(-960,-500);
  stroke(255);
  strokeWeight(1);
  for(int i = 0; i < player.bufferSize() ; i++)
  {
    float x1 = map( i, 0, player.bufferSize(), 0, width );
    float x2 = map( i, 0, player.bufferSize(), 0, width );
    line( x1, 50 + player.left.get(i)*80, x2, 50 + player.left.get(i)*20 );
    line( x1, 950 + player.right.get(i)*80, x2, 950 + player.right.get(i)*20 );//frequency with amplitude
  }
  //-------guideline-------//
  translate(0,-30);
  float songPos = map(player.position(),0, player.length(), 0, height );
  stroke(255);
  strokeWeight(1.5);
  line( songPos*1.8, 0, 0, 0 );
  line( 0, songPos, 0, 0 );
}
void key (){
   if (key == 'q')
  {
    if(s == 10){
    s += 90;
    }
    if(p == 0){
    p = p+1;
    }
  }
  if (key == 'w')
  {
    if(s > 10){
    s -= 90;
    }
    if(p == 0){
    p = p+1;
    }
  }
  if (key == 'e')
  {
    if(s > 10){
    s -= 90;
    }
    if(p == 1){
    p = 0;
    }
  }
  if (key == 'r'){
    if ( player.isPlaying()){
      player.pause();
    }
    else
    {
      player.play();
    }
  }
  
}
void Line(){
  float pos = map(mouseX, 0, width, 0, player.length());
  player.cue((int)pos);
 }
}
