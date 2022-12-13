//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
Boolean OS_on=false, splashScreenStart=false, homeScreenStart=false;
color purple=#FF00FF, resetDefaultInk=#FFFFFF, white=#FFFFFF, red=#FF0000, green=#00FF00;
//
void setup() {
  //frameRate(7); //Checking if the screen bugs out by adding more white.
  size(1200, 900);
  //fullScreen(); //displayWidth //displayHeight
  appWidth = width;
  appHeight = height;
  //Assignment: Display Alogrithm from Hello World
  //display(); 
  //Display Algorithm will populate smaller and larger dimensions
  display();
  population();
  textSetup();
  imagePopulation();
}//End setup
//
void draw() {
  //Assginment #2: OS Level Mouse Click and Splash Screen
  if ( OS_on==true && splashScreenStart==false) splashScreen(); 
  //if ( splashScreenStart==true ) homeScreen();
  //
}//End draw
//
void keyPressed() {
  //Splash Screen SPACE Bar
  if ( OS_on==true && key==' ' ) { splashScreenStart = true;
  backgroundWhiteScreen();
  backgroundImage();
  gridBackground();
  }
}//End keyPressed
//
void mousePressed() {
  //OS Level Mouse Click
  if ( OS_on==false ) OS_on=true;//End OS Level Mouse Click
  //cursor();
}//End mousePressed
//
//End MAIN Program
