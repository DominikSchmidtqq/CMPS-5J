/* Draws different quilts each time a key is pressed*/

//Literally all the variables
int size, rSeed1, gSeed1, bSeed1, rSeed2, gSeed2, bSeed2, rSeed3, gSeed3, bSeed3, objSeed1, objSeed2, selectPanel, seed;
/*just setup stuffs*/
void setup() {
  size(600, 600);
  size=50;
  seed = (int)random(random(89));
  rSeed1 = (int)random(255);
  gSeed1 = (int)random(255);
  bSeed1 = (int)random(255);
  rSeed2 = (int)random(251);
  gSeed2 = (int)random(251);
  bSeed2 = (int)random(251);
  rSeed3 = (int)random(253);
  gSeed3 = (int)random(253);
  bSeed3 = (int)random(253);
  objSeed1 = (int)random(3);
  objSeed2 = (int)random(3);
}

//Draw whole quilt
void draw() {
  stroke(255);
  randomSeed(seed);
  drawQuilt(0, 0, size, size);
}


//Randomizes everything
void keyPressed() {
  rSeed1 = (int)random(255);
  gSeed1 = (int)random(255);
  bSeed1 = (int)random(255);
  rSeed2 = (int)random(251);
  gSeed2 = (int)random(251);
  bSeed2 = (int)random(251);
  rSeed3 = (int)random(253);
  gSeed3 = (int)random(253);
  bSeed3 = (int)random(253);
  objSeed1 = (int)random(3);
  objSeed2 = (int)random(3);
  //Randomizes quilt
  size = (int)random(20, 80);
  seed = (int)random(random(89));
}

//Draws three variations of panels for the quilt
void drawPanel1(int x, int y, int w, int h) {
  ellipseMode(CORNER);
  fill(rSeed1, gSeed1, bSeed1);
  rect(x, y, w, h);
  fill(bSeed3, rSeed1, gSeed2);
  ellipse(x, y, w, h);
}
/*draw a square and a circle*/
void drawPanel2(int x, int y, int w, int h) {
  ellipseMode(CORNER);
  fill(rSeed2, gSeed2, bSeed2);
  rect(x, y, w, h);
  if ( objSeed1 > objSeed2) {
    fill(bSeed2, rSeed1, gSeed3);
    ellipse(x, y, w, h);
  }
}
/*draw a squre and a square*/
void drawPanel3(int x, int y, int w, int h) {
  ellipseMode(CORNER);
  fill(rSeed3, gSeed3, bSeed3);
  rect(x, y, w, h);
  rect(x, y, w-10, h-10);
}

/*selects a random panel to be drawn, then calls the correspodning method*/
void drawRow(int x, int y, int w, int h) {
  for (int i=0; i<width; i+=w) {
    selectPanel = (int)random(3);
    if ( selectPanel == 0) {
      drawPanel1(x, y, w, h);
    } else if ( selectPanel == 1) {
      drawPanel2(x, y, w, h);
    } else
      drawPanel3(x, y, w, h);
    x+=w;
  }
}

/*Draws the quilt using a for loop that draws the rows*/
void drawQuilt(int x, int y, int w, int h) {
  for (int i = 0; i<height; i+=h) {
    drawRow(x, y, w, h);
    y+=h;
  }
}