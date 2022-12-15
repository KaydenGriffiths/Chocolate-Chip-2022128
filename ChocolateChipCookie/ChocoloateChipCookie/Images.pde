PImage backGroundImage, quitButtonImage, soggyCat;
//
void imagePopulation() {
  backGroundImage = loadImage ("../Github/Chocolate-Chip-2022128/Images/lobter.jpg");
  soggyCat = loadImage ("../Github/Chocolate-Chip-2022128/Images/Soggy-Cat.jpg");
}//End imagePopulation
//
void quitButtonImage() {
  quitButtonImage = soggyCat;
  rect( quitButtonImageX, quitButtonImageY, quitButtonImageWidth, quitButtonImageHeight);
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
    image(  quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageWidthCalculated, quitButtonImageHeightAdjusted);
    //
  }
  //No Aspect Ratio
  //Image( quitButtonImage, quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight);
  //
}//End quitButtonImage
//
//End images Subprogram
