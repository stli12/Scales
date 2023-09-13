void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
 
}
void draw() {
   background(0,0,0);
 boolean shift = true;
 for(int y = 0; y< 550; y+=45)
   {
   for(int x=0; x<550; x+=25)
   {
   if(shift == true)
   scale(x+5,y+5);
   else
     scale(x,y);
}
   if(shift ==true)
   shift =false;
   else
   shift = true;
}
}
void scale(int x, int y) {
  int r = 70+ (int)(Math.random()*140);
  fill(r,0,0);
  bezier(x-30,y, x,y+75, x+50,y+75, x+50,y);
}
