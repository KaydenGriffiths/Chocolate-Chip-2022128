PImage backGroundImage, quitButtonImage, soggyCat;
//
void imagePopulation() {
  backGroundImage = loadImage ("../Github/Chocolate-Chip-2022128/Images/lobter.jpg");
  soggyCat = loadImage ("../Github/Chocolate-Chip-2022128/Images/Soggy-Cat.jpg");
}//End imagePopulation
//
void imageNightMode() { 
  if ( nightMode==false ) { 
    tint( dayModeTint, dayModeOpacity);
  } else {
    tint(tintRed, tintGreen, tintBlue, tintNightModeOpacity);
  }
}//End imageNightMode
//
void quitButtonImage() {
  quitButtonImage = soggyCat;
  //rect( quitButtonImageX, quitButtonImageY, quitButtonImageWidth, quitButtonImageHeight);
  //Aspect Ratio
  float  quitButtonImageWidth=100, quitButtonImageHeight=125;
  float quitButtonImageWidthAdjusted=0.0, quitButtonImageHeightAdjusted=0.0;
  float quitButtonImageWidthCalculated=0.0, quitButtonImageHeightCalculated=0.0;
  float largerDimension=0.0, smallerDimension=0.0;
  float imageWidthRatio=0.0, imageHeightRatio=0.0;
  //
  if ( quitButtonImageWidth >= quitButtonImageHeight ) {//Landscape or Square
    largerDimension = quitButtonImageWidth;
    smallerDimension = quitButtonImageHeight;
    //
    quitButtonImageWidthAdjusted = quitButtonImageRectWidth;
    imageHeightRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageHeightCalculated = quitButtonImageWidthAdjusted * imageHeightRatio;
    //
    float centerX=appWidth/2;
    quitButtonImageRectX = centerX - quitButtonImageWidthAdjusted/2;
    imageNightMode();
    image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidthAdjusted, quitButtonImageHeightCalculated);
    //
  } else { //Portrait
    largerDimension = quitButtonImageHeight;
    smallerDimension = quitButtonImageWidth;
    // 
    quitButtonImageHeightAdjusted = quitButtonImageRectHeight;
    imageWidthRatio = smallerDimension / largerDimension; //value<1, main point of algorithm
    quitButtonImageWidthCalculated = quitButtonImageHeightAdjusted * imageWidthRatio;
    //
    float centerX=appWidth/2;
    quitButtonImageRectX = centerX - quitButtonImageWidthCalculated/2;
    //imageNightMode();
    image(  quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidthCalculated, quitButtonImageHeightAdjusted);
    //
  }
  //No Aspect Ratio
  //Image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight);
  //
}//End quitButtonImage
//
void quitButtonHoverOver() {
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) { //QuitButton Hoverover
    fill(white);
    noStroke();
    rect(quitX, quitY, quitWidth, quitHeight);
    quitButtonImage();
    noFill();
  } else {
    fill(white);
    noStroke();
    rect(quitX, quitY, quitWidth, quitHeight);
    quitButtonText();
    noFill();
  }
}//End quitButtonHoverOver
//
void startButtonHoverOver() {
  if ( mouseX>=startButtonX && mouseX<=startButtonX+startButtonWidth && mouseY>=startButtonY && mouseY<=startButtonY+startButtonHeight ) {
    fill(white);
    noStroke();
    rect( startButtonX, startButtonY, startButtonWidth, startButtonHeight );
    startButtonText();
    noFill();
  } else {
    fill(white);
    noStroke();
    rect(startButtonX, startButtonY, startButtonWidth, startButtonHeight);
    startButtonText();
    noFill();
  }
}//End startButtonHoverOver
//
void resetButtonHoverOver() { //resetButton
  if (mouseX>=resetButtonX && mouseX<=resetButtonX+resetButtonWidth && mouseY>=resetButtonY && mouseY<=resetButtonY+resetButtonHeight ) {
    fill(white);
    noStroke();
    rect( resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight );
    resetButtonText();
    noFill();
  } else {
    fill(white);
    noStroke();
    rect( resetButtonX, resetButtonY, resetButtonWidth, resetButtonHeight);
    resetButtonText();
    noFill();
  }
}//End resetButtonHoverOver
//
//End images Subprogram
