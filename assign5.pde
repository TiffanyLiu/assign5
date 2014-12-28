Ball myBall;
Bar  bar;
Brick [] bricks;
//Brick brick;


int col;
int row;
int lifeCount;
int brickCount;

//game state
final int GAME_START=1;
final int GAME_FIRST=2;
final int GAME_PLAYING=3;
final int GAME_WIN=4;
final int GAME_LOSE=5;
int gameState;

void setup(){
 size(640,480);
 myBall=new Ball();
 lifeCount=3;
 brickCount=50;
 bar=new Bar();
 //bricks=new Brick[50];
 for(int i=0;i<50;i++){
   col=i%10;
   row=i/10;
   float brickX=100+col*50;
   float brickY=50+row*50;
  bricks[i]=new Brick(int(brickX),int(brickY)); 
 }
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
  if(myBall.y>472){
    lifeCount--;
    gameState=GAME_FIRST;
  }
 if(  myBall.x>=int(bar.x-bar.length/2)
    &&myBall.x<=int(bar.x+bar.length/2)
    &&myBall.y>417.5){
   myBall.ySpeed*=-1;}
   checkBrickHit();
 if(lifeCount==0){
   gameState=GAME_LOSE;
 }
 if(brickCount==0){
   gameState=GAME_WIN;
 }

  break;
  case GAME_WIN:
 printText(80,"YOU WIN!",height/2+10);
 printText(30,"PRESS ENTER TO PLAY AGAIN",height/2+80);
  break;
 case GAME_LOSE:
 printText(80,"YOU LOSE!",height/2+10);
 printText(30,"PRESS ENTER TO TRY AGAIN",height/2+80);
 
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
void checkBrickHit(){
  for(int i=0;i<bricks.length-1;i++){
    if(myBall.x+(myBall.size/2)>=int(bricks[i].x-(bricks[i].size/2))
    && myBall.x-(myBall.size/2)<=int(bricks[i].x-(bricks[i].size/2))
    && myBall.y-(myBall.size/2)<=int(bricks[i].y+(bricks[i].size/2))
    && myBall.y+(myBall.size/2)>=int(bricks[i].y-(bricks[i].size/2))){
      removeBrick(i);
    }}}
/*void drawbricks(){
int i=0;*/

void removeBrick(int i){
 bricks[i].x=2000;
 bricks[i].y=2000;
 brickCount--;
}
void mouseClicked(){
  if(gameState==GAME_FIRST&&mouseButton==RIGHT){
     gameState=GAME_PLAYING;
  }
}
void keyPressed() {
  if (key == ENTER
  &&gameState==GAME_START
  ||gameState==GAME_WIN) {
      gameState = GAME_FIRST;
    }
    if(key==ENTER&&
  gameState==GAME_LOSE){
    gameState=GAME_FIRST;
    lifeCount=3;}
  }
