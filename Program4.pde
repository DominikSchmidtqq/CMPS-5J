/*First Day at UCSC
 The day changes from daytime to night time when 
 you move the mouse to the right half of the screen.
 Click on the person's shirt to change the color.
 A bird will fly across the screen when you click on the tree leaves.
 Press and hold the upper lefthand corner to move the sun and have fireflies appear.
 Click on the upper righthand corner to have the moon rise to the sky
 When a key is pressed, the person's eyes will look up towards the sky*/
int sunX, sunY, sunVel;
int treeX = 100;
int treeY = 400;
int birdX = 100;
int birdY = 300;
float angle =.1;
int mouseclicked;
int value = 0;
int grassX = 481;
int grassY = 721;
int personX = 400;
int personY = 600;
color shirtColor = color(255);
int moonX = 900;
int moonY = 700;
int moonVal = 0;
void setup() {
  size(1000, 750);
  sunX =mouseclicked= 0;
  sunY =sunVel=0;
}
void draw() {

  int dayX = mouseX;
  //day sky changes to night
  if (dayX <= width/2) {
    background(0, 100, 255);
  } else {
    background(0);
  }
  //grass
  noStroke();
  fill(0, 255, 0);
  ellipse(grassX, grassY, 1192, 156);  

  //sun
  noStroke();
  fill(255, 255, 0);
  ellipse(sunX, sunY+sunVel, 100, 100);
  if ( mousePressed&&(mouseX<=(sunX+50))&&(mouseY<=sunY+50)) {
    sunVel = sunVel +10;
    sunX = sunX +5;
  }

  //tree
  noStroke();//tree trunk
  fill(#67390E);
  rect(treeX, treeY, 100, 300);
  fill(#207C0C);//tree leaves
  ellipseMode(CENTER);
  ellipse(treeX+50, treeY-50, 250, 300);

  //bird flying across screen
  strokeWeight (3);
  noFill();
  stroke(255);
  arc (birdX, birdY, 103, 89, PI+QUARTER_PI, TWO_PI);
  arc (birdX+89, birdY+36, 109, 105, PI+QUARTER_PI, TWO_PI);
  birdX = (birdX + value)%width;

  //fireflies 
  if (sunVel>=width) {
    for (int i = 0; i <50; i++) {
      noStroke();
      fill(253, 255, 165);
      ellipse(random(0, width), random(0, height/2), 10, 10);
      angle = angle +.1;
      rotate(angle);
      rect(random(0, width), random(0, height/2), 10, 10);
      rotate(-angle);
    }
  }
  //Person
  //person body
  strokeWeight(1);
  stroke(0);
  fill(shirtColor);
  rect(personX, personY, 20, 50);
  //person head
  fill(#FCF98F);
  ellipseMode(CENTER);
  ellipse(personX+10, personY-11, 24, 25);
  //person eyes
  stroke(0);
  fill(0);
  if (keyPressed) {
    translate(10, 0);
    ellipseMode(CENTER);
    ellipse(personX+-4, personY-18, 3, 3);//their left eye
    ellipse(personX+6, personY-18, 3, 3); //their right eye
    translate(-10, 0);
  } else {
    ellipse(personX+6, personY-12, 3, 3);//their left eye
    ellipse(personX+16, personY-12, 3, 3); //their right eye
  }
  //person left leg
  translate(0, 0);
  stroke(#FCF98F);
  line (personX+5, personY+50, personX+5, personY+63);
  //person right leg
  stroke(#FCF98F);
  line (personX+15, personY+50, personX+15, personY+63);
  personX = personX+1;//person moving

  //moon
  noStroke();
  fill(255);
  ellipseMode(CENTER);
  ellipse(moonX, moonY, 100, 100);
  moonY = moonY - moonVal;
  if (moonY ==50)
  {
    moonVal=0;
  }
}


void mousePressed () { 
  if (birdX == 100 && mouseX <=200 && mouseY<= 400) { 
    value = 3;
  }
  if (moonX==900 && mouseX >= 850 && mouseY <=200) {
    moonVal = 2;
  }    
  if (shirtColor == color(255) && mouseX>=personX && mouseY>=personY) {
     shirtColor = color(#FC820F);   
  }
  
}