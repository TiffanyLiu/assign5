class Ball{
 float xSpeed;
 float ySpeed;
 float size;
 float x;
 float y;
void begin_move(){
  x=bar.x;
  y=height-60;
}
void move(){

 x+=xSpeed;
 y-=ySpeed;
 if(x<7.5 || x>width-7.5){
   xSpeed *=-1;
 }
 if(y<7.5 || y>height-7.5){
   ySpeed *=-1;
 }

}

void display(){
  fill(255);
  ellipse(x,y,size,size);
}

Ball(){
x=mouseX;
y=height-60;
xSpeed=random(-5,5);
ySpeed=3;
size=15;
}
}
