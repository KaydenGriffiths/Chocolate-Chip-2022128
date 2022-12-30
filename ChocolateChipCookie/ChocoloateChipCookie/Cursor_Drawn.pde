void cursorDrawnIn() {
  if ( StartStory && mouseX>=resetButtonX && mouseX<=resetButtonX+resetButtonWidth && mouseY>=resetButtonY && mouseY<=resetButtonY+resetButtonHeight||mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight||mouseX>=startButtonX && mouseX<=startButtonX+startButtonWidth && mouseY>=startButtonY && mouseY<=startButtonY+startButtonHeight) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}//End cursorDrawnIn
//
//End Cursor Drawn Subprogram
