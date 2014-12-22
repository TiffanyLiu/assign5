class Ball{
 float xSpeed;
 float ySpeed;
 float size;
 float x;
 float y;
void begin_move(){
  x=mouseX;
}
void move(){
 
 x+=xSpeed;
 y-=ySpeed;
 if(x<0 || x>width){
   xSpeed *=-1;
 }
 if(y<0 || y>height){
   ySpeed *=-1;
 }
 if(x>mouseX-35&&y>height-55 ||x<mouseX+32&&y>height-55){
   ySpeed*=-1;
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
