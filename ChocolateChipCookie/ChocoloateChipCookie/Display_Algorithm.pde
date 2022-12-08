void display() {
  //Purpose: CANVAS fits in monitor & dimension size is known
  //Output #1: Console confirms CANVAS will fit in the monitor
  //Output #2: Console confirms display orientation (landscape-square, or portrait)
  //Output #3: Console confirms dimension sizes (smaller and larger)
  //Output #4: if error with any of above, program will exit(); or be broken trying :thumbs-up:
  //            Hint: "Bru, turn your phun."

  appWidth = width;
  appHeight = height;
  println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "height:"+displayHeight);
  //
  String ls="landscapes or Square", p="Potrait", DO="Display Orientation is:", instruct ="Breh, turn your phon";
  //
  if ( appWidth >= appHeight && appWidth < displayWidth) { //Declaring Landscape & Square 
    println("Display: Good to Go");
    println(DO, ls);
    smallerDimension=appHeight;
    largerDimension=appWidth;
    //Display Algorithm will populate smaller and larger dimensions
    println("Smaller Dimension is:", smallerDimension, "Larger Dimension is:", largerDimension);
  } else {
    if (appWidth < displayWidth) {
      println(DO, p);
      println(instruct);
    }
  }
  if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor display} else {
    appWidth=0;
    appHeight=0;
    println("STOP, is broken");
  } else {
    //Empty ELSE
  }
}//End display
//
//End Display ALgorithm Subprogram
