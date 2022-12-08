//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
//
void setup() {
  size( 800, 600 );

  //fullScreen(); 
  //Assignment: Display Alogrithm
  display();
}//End setup
//
void draw() {
  if (mouseX > appWidth/3 && mouseY > appHeight/3 ) {
    cursor(CROSS);
  } else {
    cursor(HAND);
  }
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main program
