int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
int dayModeTint=255, dayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
void homeScreen() {
  println("Arrived at Home Screen" ); //Testing for Splash Screen Start Button
  /* Home Screen Expectations 
   - Background image using tint()
   - 9 evenly spaced rectangles, Assignment #3
   - Quit Button and Reset BUtton (Splash Screen Start Button)
   - In each: image, text, 2D shape, Button
   - Narrative trhough the 9 rectangles
   - See Case Study
   - Note: must have one image with aspect ratio < - - - - you suck at this 
   */
  //
}//End homeScreen
//
void backgroundWhiteScreen() {
  fill(white);
  noStroke();
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  strokeWeight(1); //Reset: 1 pixel
  fill(white); //Reset: white
}//End backgroundWhiteScreen
//
void backgroundImage() {
  //backgroundWhiteScreen();
  tint( dayModeTint, dayModeOpacity); //Day Mode, see ternary operator
  //tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //Night Mode, see ternary operator
  image( backGroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight );
}//end backgroundImage
//
void gridBackground() {
  strokeWeight(5);
  stroke(red);
  line( appWidth/3, appHeight*0, appWidth/3, appHeight);
  //
  strokeWeight(5);
  stroke(red);
  line( appWidth* 2/3, appHeight*0, appWidth* 2/3, appHeight);
  //
  strokeWeight(5);
  stroke(green);
  line( appWidth*0, appHeight*2/3, appWidth, appHeight*2/3);
  //
  strokeWeight(5);
  stroke(green);
  line( appWidth*0, appHeight/3, appWidth, appHeight/3);
  //
  //square(500,100,500);
}//End gridBackground
//End Home Screen Subprogram
