/*This program shows two buses; one moving to the left in an endless loop 
and the other controlled by the mouse position
*/


void setup() {
  size(1000, 1000);                                                        //Sets Window Size
}
   //Road Variables
  int roadX=0, roadY= 700, roadW = 1000, roadH= 150;                       //Initialize Road Variables
  
  //Grey Bus Variables
  int busX = roadX, busY = roadY-50, busW = 250, busH = 100;               //Initialize Grey Bus Variables
  int wheelX= busX+30, wheelY = busY + busH, wheelW = 50, wheelH=50;       //Initialize Back Wheel Variables for Grey Bus
  int wheel2X= wheelX+190;                                                 //Initialize Front Wheel Variable for Grey Bus
  int textX=busX+50, textY=busY+50;                                        //Initialize Text Variables for Grey Bus
  int windowX=busX+200, windowY=busY, windowW=50, windowH=65;              //Initialize Window Variables for Grey Bus
  
  //Yellow Bus Variables
  int bus2X = 1000, bus2Y = 700, bus2W = busW, bus2H = busH;               //Initialize Yellow Bus Variables
  int bus2vel;                                                             //Initialize Velocity Variable for Yellow Bus 
  int bus2wheel=wheelX+ bus2X;                                             //Initialize Front Wheel Variables for Yellow Bus 
  int bus2wheel2= wheel2X+ bus2X;                                          //Initialize Back Wheel Variables for Yellow Bus
  int text2X=bus2X+125, text2Y=bus2Y+50;                                   //Initialize Text Variables for Yellow Bus 
  int window2X=bus2X, window2Y=bus2Y, window2W=windowW, window2H=windowH;  //Initialize Window Variables for Yellow Bus


void draw() {
  
  //Sky
  background(0, 100, 250);  //Set Color to Blue
 
  //Ground
  fill(0, 255, 50);                   //Set Color to Green
  noStroke();
  rect(0, width/1.7, width, height);  //Draw Grass
  
  //Tree Branches
  fill(68, 48, 34);       //Set Tree Branch Color to Brown
  rect(64, 208, 53, 464); //Draw Tree Branch for Tree # 1(*Numbered Going from Left to Right*)
  rect(216, 179, 53, 464);//Draw Tree Branch for Tree # 2
  rect(450, 209, 53, 464);//Draw Tree Branch for Tree # 3 
  rect(663, 173, 53, 464);//Draw Tree Branch for Tree # 4
  rect(862, 211, 53, 464);//Draw Tree Branch for Tree # 5
  fill(58, 95, 11);
  
  //Tree #1 Leaves
  triangle(90, 275, -50, 555, 225, 555);
  triangle(90, 175, -50, 395, 225, 395);
  triangle(90, -15, -40, 280, 220, 280);
  
  //Tree #2 Leaves
  triangle(240, 350, 118, 610, 375, 610);
  triangle(240, 240, 135, 460, 350, 460);
  triangle(240, 100, 155, 335, 340, 335);

  //Tree #3 Leaves
  triangle(475, 370, 350, 590, 615, 590);
  triangle(475, 270, 355, 470, 600, 470);
  triangle(475, 155, 370, 355, 590, 355);

  //Tree #4 Leaves
  triangle(690, 270, 550, 550, 835, 550);
  triangle(690, 200, 550, 420, 830, 420);
  triangle(690, 65, 570, 315, 815, 315);

  //Tree #5 Leaves
  triangle(890, 365, 760, 610, 1010, 610);
  triangle(890, 240, 770, 470, 1005, 470);
  triangle(890, 105, 795, 340, 990, 340);

  //Railing and Supports
  fill(85, 71, 42);        //Set Supports Color to Brown
  rect(20, 635, 40, 65);   //Support #1(*Numbered Going from Left to Right*)
  rect(315, 635, 40, 65);  //Support #2
  rect(615, 635, 40, 65);  //Support #3
  rect(940, 635, 40, 65);  //Support #4
  fill(208, 213, 219);     //Set Railing Color to Silver
  rect(0, 645, 1000, 35);  //Draw Railing

  //Sun
  fill(253, 184, 18);                   //Set Sun Color to Yellow
  arc(1000, 0, 210, 185, PI/2,PI, PIE); //Draw Sun

  //Draw the Road
  fill(50);                          //Set Road Color to Dark Grey
  rect(roadX, roadY, roadW, roadH);  //Draw Road
  
  //Draw Grey Bus and Make it Move With Mouse
  fill(200);                                         //Set Fill Color to Grey
  stroke(0);                                         //Set Stroke to Black
  rect(busX+mouseX, busY, busW, busH);               //Draws Grey Bus and Makes it Move with Mouse Position
  fill(0);                                           //Set Fill Color to Black
  textSize(30);                                      //Set Text Size
  text("UCSC", textX+mouseX, textY);                 //Draws Text 
  noFill();
  rect(windowX+mouseX, windowY, windowW, windowH);   //Draws Window 
  fill(0);                                           //Set Fill Color to Black
  ellipse(wheelX +mouseX, wheelY, wheelW, wheelH);   //Draws the Back Wheel 
  ellipse(wheel2X +mouseX, wheelY, wheelW, wheelH);  //Draws the Front Wheel 

  //Draw Yellow Bus and Make it Move by Itself
  fill(255, 216, 0 );                                       //Set Color to Yellow
  rect(bus2X-bus2vel, bus2Y, bus2W, bus2H);                 //Draws Yellow Bus and Makes it Move to the Left
  fill(0);                                                  //Set Fill Color to Black
  textSize(30);                                             //Set Text Size
  text("UCSC", text2X-bus2vel, text2Y);                     //Draws Text
  noFill();                      
  rect(window2X-bus2vel, window2Y, window2W, window2H);     //Draws Window
  fill(0);                                                  //Sets Fill Color to Black
  ellipse(bus2wheel -bus2vel, wheelY +50, wheelW, wheelH);  //Draws the Front Wheel
  ellipse(bus2wheel2-bus2vel, wheelY+50, wheelW, wheelH);   //Draws the Back Wheel
  bus2vel=(bus2vel+3)%(width+300);                          //Makes the Bus Move to the Left and Loop Endlessly
}