class Bar{
 float x;
 float y;
 float xSpeed;
 float length;
 float thick;
 
void move(){
 x=mouseX;
 if(x<length/2){
  x=length/2;
 }
 if(x>width-length/2){
  x=width-length/2; 
 }
 
}

void display(){
  rectMode(CENTER);
  rect(x,y,length,thick);
  fill(255);
}

Bar(){
  x=mouseX;
  y=height-50;
  length=70;
  thick=10;
}
}
