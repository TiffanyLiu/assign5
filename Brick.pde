class Brick{
 float x;
 float y;
 float size;
 //color
 float h;
 float s;
 float v;
 
void display(){
 rectMode(CENTER);
 rect(x,y,size,size);
// colorMode(HSB);
// fill(h,s,v);
} 
Brick(float brickX,float brickY){
  size=40;
  x=brickX;
  y=brickY;
//  h=255;
 // s=60;
 // v=60;
 // colorMode(HSB);
 // fill(h,s,v);
 // rectMode(CENTER);
//  rect(x,y,size,size);

}
}
