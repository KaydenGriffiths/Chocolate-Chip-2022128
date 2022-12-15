void population() {
  float centerX = appWidth/2, centerY = appWidth/2;
  startWidth = appWidth*1/2;
  startHeight = appHeight/10 ;
  startX = centerX - startWidth/2;
  startY = centerY - startHeight/2;
  //
  quitWidth = appWidth/4 ;
  quitHeight = appHeight/10 ;
  quitX = centerX - quitWidth/2;
  quitY = centerY - 5*quitHeight;
  //
  quitButtonImageRectWidth = quitWidth;
  quitButtonImageRectHeight = quitHeight; 
  quitButtonImageRectX = quitX; //Will need to be fixed
  quitButtonImageRectY = quitY;
  //
  backgroundX = appWidth * 0;
  backgroundY = appHeight * 0;
  backgroundWidth = appWidth;
  backgroundHeight = appHeight;
}//End population
//
//End population
