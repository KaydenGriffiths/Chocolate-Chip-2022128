//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
Boolean OS_on=false;
color black=#000000, white=#FFFFFF, purple=#FF00FF;
//
void setup() {
  size( 800, 600 );
  //fullScreen(); 
  //Assignment: Display Alogrithm
  display();
  population();
  textSetup();
}//End setup
//
void draw() {
  //Assigment #2: OS Level Mouse Click and Splash Screen
  if ( OS_on==true ) splashScreen(); //OS Level Mouse
  cursorDrawn();
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //OS Level Moouse CLick 
  if ( OS_on==false) OS_on=true ; //End OS Level Mouse Click
}//End mousePressed
//
//End Main program
