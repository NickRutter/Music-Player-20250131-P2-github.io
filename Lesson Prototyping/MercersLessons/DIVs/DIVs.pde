/* Purpose: draw a rectangle
   Vocabulary
   - Declaration & Initialization
   - Local Variables v Global Variables
   - Population of variables
 */
//Library - Minim
//
//Global Variables
float x, y, width1, height1;
//
void setup() {
  // Display
  fullScreen();

  int appWidth;
  int appHeight;
  //
  
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
void draw() {
  rect(x, y, width1, height1); //X, Y, Width, Height
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
// End Main Program
