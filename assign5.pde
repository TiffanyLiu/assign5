
Ball myBall;
Bar  bar;
Brick [] bricks;
Brick brick;

int col;
int row;
int lifeCount=3;Ball myBall;
Bar  bar;
Brick [] bricks;
Brick brick;


int col;
int row;
int lifeCount;

//game state
final int GAME_START=1;
final int GAME_FIRST=2;
final int GAME_PLAYING=3;
int gameState;

void setup(){
 size(640,480);
 myBall=new Ball();
 bar=new Bar();
 bricks=new Brick[50];
 for(int i=0;i<50;i++){
   col=i%10;
   row=i/10;
   float brickX=100+col*50;
   float brickY=50+row*50;
  bricks[i]=new Brick(int(brickX),int(brickY)); 
 }
// brick=new Brick(50,50);
gameState=GAME_START;
}

void draw(){
  background(0);
  noStroke();
switch(gameState){
 case GAME_START:
 printText(80,"GAME START",height/2+10);
 printText(30,"PRESS ENTER TO START",height/2+80);
 
  break;
 case GAME_FIRST:
  drawLife();
  myBall.begin_move();
  myBall.display();
  bar.move();
  bar.display();
  for(int i=0;i<50;i++){
   bricks[i].display(); 
  }
  lifeCount=3;
  break; 
 case GAME_PLAYING:
  drawLife();
  myBall.move();
  myBall.display();
  bar.move();
  bar.display();
  for(int i=0;i<50;i++){
   bricks[i].display(); 
  }
  if(myBall.y>472){
    lifeCount--;
  }
/* if(myBall.x>(mouseX-35)&&myBall.y>417.5){
   myBall.ySpeed*=-1;}
    if(myBall.x<(mouseX+35)&&myBall.y>417.5){
   myBall.ySpeed*=-1;}
   println(bar.x,bar.y);*/
  break;
  
}
}
void printText(int size,String word,int y){
  fill(95,194,226);
  textAlign(CENTER);
  textSize(size);
  text(word,width/2,y);

}

void drawLife(){
  fill(230,74,96);
  text("LIFE:",36,height-10);
  if(lifeCount>0){
    ellipse(78,height-15,15,15);
  }
  if(lifeCount>1){
    ellipse(103,height-15,15,15);
   
  }
  if(lifeCount>2){
    ellipse(128,height-15,15,15);
  }
}

void mouseClicked(){
  if(gameState==GAME_FIRST&&mouseButton==RIGHT){
     gameState=GAME_PLAYING;
  }
}
void keyPressed() {
  if (key == ENTER&&gameState==GAME_START) {
      gameState = GAME_FIRST;
    }
  }


//game state
final int GAME_START=1;
final int GAME_FIRST=2;
final int GAME_PLAYING=3;
int gameState;

void setup(){
 size(640,480);
 myBall=new Ball();
 bar=new Bar();
 bricks=new Brick[50];
 for(int i=0;i<50;i++){
   col=i%10;
   row=i/10;
   float brickX=100+col*50;
   float brickY=50+row*50;
  bricks[i]=new Brick(int(brickX),int(brickY)); 
 }
// brick=new Brick(50,50);
gameState=GAME_START;
}

void draw(){
  background(0);
  noStroke();
switch(gameState){
 case GAME_START:
 printText(80,"GAME START",height/2+10);
 printText(30,"PRESS ENTER TO START",height/2+80);
 
  break;
 case GAME_FIRST:
  drawLife();
  myBall.begin_move();
  myBall.display();
  bar.move();
  bar.display();
  for(int i=0;i<50;i++){
   bricks[i].display(); 
  }
  break; 
 case GAME_PLAYING:
  drawLife();
  myBall.move();
  myBall.display();
  bar.move();
  bar.display();
  for(int i=0;i<50;i++){
   bricks[i].display(); 
  }
  break;
  
}
}
void printText(int size,String word,int y){
  fill(95,194,226);
  textAlign(CENTER);
  textSize(size);
  text(word,width/2,y);

}

void drawLife(){
  fill(230,74,96);
  text("LIFE:",36,height-10);
  if(lifeCount>0){
    ellipse(78,height-15,15,15);
  }
  if(lifeCount>1){
    ellipse(103,height-15,15,15);
   
  }
  if(lifeCount>2){
    ellipse(128,height-15,15,15);
  }
}

void mouseClicked(){
  if(gameState==GAME_FIRST&&mouseButton==RIGHT){
     gameState=GAME_PLAYING;
  }
}
void keyPressed() {
  if (key == ENTER&&gameState==GAME_START) {
      gameState = GAME_FIRST;
    }
  }
