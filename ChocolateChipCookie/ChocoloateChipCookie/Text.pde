String spaceBar = "Press the SPACE BAR to Continue";
PFont arial;
//
void textSetup() {
  //Assignment #2: Minimum Expectation = one font
  String [] fontList = PFont.list();
  arial = createFont ("Arial", 55);
}//End textSetup
//
void spaceBarText() {
  rect( startX, startY, startWidth, startHeight );
  fill(purple);
  textAlign(CENTER, CENTER);
  //
  int size = 25; // size = 19, when, size(600,400);
  textFont(arial, size );
  text( spaceBar, startX, startY, startWidth, startHeight );
  fill(white);
}//End spaceBarText
//
//End Text Subprogram
