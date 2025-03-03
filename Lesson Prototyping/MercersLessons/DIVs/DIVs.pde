import ddf.minim.*; //<>//
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//See: https://code.compartmental.net/minim/
//
//Global Variables
Minim minim; //see CS30 for class-level variables
int numberOfSongs = 8; //Able to Autodetect based on Pathway
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;  //beginning current song as ZERO

String[] imageNames = {"Back", "Next", "PlayButton", "Replay", "Shuffle"}; //Array with picture names
PImage[] images; // Images
int numberOfImages = 6;
float x, y, width1, height1;
//
void setup() {
  // Display
  fullScreen();
    
  images = new PImage[numberOfImages];
  for (int i = 0; i < imageNames.length; i++) {
  images[i] = loadImage(imageNames[i] + ".jpg");
  if (images[i] == null) {
    println("Failed to load image: " + imageNames[i]);
  }
}

} //End setup
//
void draw() {
  int appWidth;
  int appHeight;
  //
  
  appWidth = displayWidth;
  appHeight = displayHeight;
  fill(50);
  //Top Display
  rect(appWidth/4, appHeight/6, appWidth/2, appHeight*2/5); // Top Big
  
  //Top Buttons
  rect(appWidth*7/24, appHeight/3, appWidth/5, appHeight/5);
  rect(appWidth*61/120, appHeight/3, appWidth/5, appHeight/5); //X, Y, Width, Height
  
  //Bottom taskbar
  rect(appWidth/8, appHeight*6/10, appWidth*3/4, appHeight/5); //X, Y, Width, Height
  
  //Bottom Buttons
  int heightYTop = appHeight*22/35;
  int appHeightTop = appHeight/7;
  int appWidthTop = appWidth/10;
  
  image(images[0], appWidth*34/200, heightYTop, appWidthTop, appHeightTop);
  image(images[1], appWidth*57/200, heightYTop, appWidthTop, appHeightTop);
  image(images[2], appWidth*80/200, heightYTop, appWidthTop/2, appHeightTop);
  image(images[3], appWidth*123/200, heightYTop, appWidthTop, appHeightTop);
  image(images[4], appWidth*146/200, heightYTop, appWidthTop, appHeightTop);
 
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
  
} //End keyPressed
//
// End Main Program
