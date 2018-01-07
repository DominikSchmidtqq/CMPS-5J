/* This program includes a ball bouncing around the background and the background is changing with the ball color.
and a box moving around the screen*/

int boxW=100;
int boxH =100;
int boxR; 
 int boxG, boxB;

int boxX = 100;
int boxY=100;

int circleX = 50;
int circleY = 350;
int circleD = 30;
color circleColor;
int cVelX, cVelY; 
int xVel, yVel;
float circleR, circleG, circleB;

void setup(){
  rectMode(CENTER);
  size(600,600);
  xVel=5;
  yVel=5;
  cVelX = 5;
  cVelY = 5;
}


void draw(){
  
  if (circleX > width - circleD || circleX < circleD){
    xVel = -xVel; //reverse the direction of the ball
    circleR = random(256);
    circleG = random(256);
    circleB = random(256);
    //changes the color of the ball as it connects with the wall
    
  }
  if (circleY > height - circleD || circleY < circleD){
    yVel = -yVel;
    //changes the direction of the ball
  }
  
  
  
  fill(circleR,circleG,circleB); //gives color to the ball
  background(255,circleB,circleR); //changes the color of the background
  circleX = circleX+xVel;
  circleY= circleY + yVel;
  ellipse(circleX, circleY, circleD, circleD); //draws the circle
  
    if (boxX > width - boxW/2 || boxX < boxW){
    cVelX = -cVelX;
//changes the direction of the box 
    
    
  }
  if (boxY > height - boxH|| boxY < boxH){
    cVelY = -cVelY;
    //changes the direction of the box
  }
  boxX= boxX +cVelX;
  boxY = boxY + cVelY;
  fill(0,0,0);
  rect(boxX, boxY, boxH, boxW); //draws the box
  

}