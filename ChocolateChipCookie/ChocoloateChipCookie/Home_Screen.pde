int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float quitX, quitY, quitWidth, quitHeight;
float quitButtonImageX, quitButtonImageY, quitButtonImageWidth, quitButtonImageHeight;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
int dayModeTint=255, dayModeOpacity=50;
int tintRed=64, tintGreen=64, tintBlue=40, tintNightModeOpacity=85;
//
/* Home Screen Expectations 
 - Background image using tint()                                 -DONE
 - 9 evenly spaced rectangles, Assignment #3                     -DONE
 - Quit Button and Reset BUtton (Splash Screen Start Button)
 - In each: image, text, 2D shape, Button
 - Narrative trhough the 9 rectangles
 - See Case Study
 - Note: must have one image with aspect ratio < -  you suck at this 
 */
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
  if ( nightMode==false )tint( dayModeTint, dayModeOpacity); //Day Mode, see ternary operator
  if ( nightMode==true ) tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity); //Night Mode, see ternary operator
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
void homeScreen() {
  //println("Arrived at Home Screen" ); //Testing for Splash Screen Start Button
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) { //QuitButton Hoverover
    fill(white);
    noStroke();
    rect(quitX, quitY, quitWidth, quitHeight);
    strokeWeight(1);
    noFill();
    //
    quitButtonImage();
    noFill();
  } else {
    fill(white);
    noStroke();
    rect(quitX, quitY, quitWidth, quitHeight);
    strokeWeight(1);
    noFill();
    //
    quitButtonText();
    noFill();
  }
}//End homeScreen
//
//End Home Screen Subprogram
