int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float quitButtonImageX, quitButtonImageY, quitButtonImageWidth, quitButtonImageHeight;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
int dayModeTint=255, dayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
float startButtonX, startButtonY, startButtonWidth, startButtonHeight;
float resetButtonWidth, resetButtonHeight, resetButtonX, resetButtonY;
float quitX, quitY, quitWidth, quitHeight;
//
/* Home Screen Expectations 
 - Background image using tint()                                 -DONE
 - 9 evenly spaced rectangles, Assignment #3                     -DONE
 - Quit Button and Reset BUtton (Splash Screen Start Button)     -QUIT Button DONE, Waiting on RESET Button
 - In each: image, text, 2D shape, Button
 - Narrative trhough the 9 rectangles
 - See Case Study
 - Note: must have one image with aspect ratio                   -DONE (in class lesson)
 */
void backgroundWhiteScreen() {
  fill(white);
  noStroke();
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  strokeWeight(1); //Reset: 1 pixel
  fill(white); //Reset: white
}//End backgroundWhiteScreen
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
}//End gridBackground
//
void rectangleGrid() {
  rect(appWidth*0, appHeight*0, appWidth/3, appHeight/3);
  rect(appWidth*0, appHeight/3, appWidth/3, appHeight/3);
  rect(appWidth*0, appHeight*2/3, appWidth/3, appHeight/3);
  //
  rect(appWidth/3, appHeight*0, appWidth/3, appHeight/3);
  rect(appWidth/3, appHeight/3, appWidth/3, appHeight/3);
  rect(appWidth/3, appHeight*2/3, appWidth/3, appHeight/3);
  //
  rect(appWidth*2/3, appHeight*0, appWidth/3, appHeight/3);
  rect(appWidth*2/3, appHeight/3, appWidth/3, appHeight/3);
  rect(appWidth*2/3, appHeight*2/3, appWidth/3, appHeight/3);
}//End rectangleGrid
//
void backgroundImage() {
  //backgroundWhiteScreen();
  image( backGroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  //rectangleGrid();
  gridBackground();
}//end backgroundImage
//
void homeScreen() {
  quitButtonHoverOver();
  startButtonHoverOver();
  resetButtonHoverOver();
}//End homeScreen
//
//End Home Screen Subprogram
