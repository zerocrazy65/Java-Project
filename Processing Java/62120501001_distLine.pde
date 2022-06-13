class distLine{
   int x,y,size;
   distLine(int x1,int y1,int size1){
     x = x1;
     y = y1;
     size = size1;
   }

   void drawLine(){
     fill(0);
     ellipse(x,y,size,size);
   }
}
