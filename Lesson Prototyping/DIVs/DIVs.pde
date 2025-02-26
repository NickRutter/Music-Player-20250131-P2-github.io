//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float x, y, width1, height1;
//
void setup() {
  println("1.", appWidth, appHeight);
  fullScreen();
  println(displayWidth, displayHeight);
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  x = appWidth*1/4;
  y = appHeight*2/5;
  width1 = appWidth*1/2;
  height1 = appHeight*2/5;
  //
  rect(x, y, width1, height1); //X, Y, Width, Height
  //
} //End setup
//
void draw() {} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
// End Main Program
