PImage backGroundImage, quitButtonImage, soggyCat;
//
void imagePopulation() {
 // backGroundImage = loadImage ("../Kayden/Documents/GitHub/Chocolate-Chip-Cookie/Images/GPO-CREW-PICTURE.png");
  //soggyCat = loadImage ("../Kayden/Documents/GitHub/Chocolate-Chip-Cookie/Images/GPO-CREW-PICTURE.png");
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
void quitButtonHoverOver() {
  if ( mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) { //QuitButton Hoverover
    fill(white);
    noStroke();
    rect(quitX, quitY, quitWidth, quitHeight);
    //quitButtonImage();
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
    //startButtonText();
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
    //resetButtonText();
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
