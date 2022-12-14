//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
Boolean OS_on=false, splashScreenStart=false, homeScreenStart=false;
//
//Colored Variables:
Boolean nightMode=false;
color purple=#FF00FF, resetDefaultInk=#FFFFFF, white=#FFFFFF, red=#FF0000, green=#00FF00;
//
void setup() {
  //frameRate(7); //Checking if the screen bugs out by adding more white.
  size(1200, 900);
  //fullScreen(); //displayWidth //displayHeight
  appWidth = width;
  appHeight = height;
  //Assignment: Display Alogrithm from Hello World
  //display(); 
  //Display Algorithm will populate smaller and larger dimensions 
  display();
  population();
  textSetup();
  imagePopulation();
}//End setup
//
void draw() {
  //Assginment #2: OS Level Mouse Click and Splash Screen
  if ( OS_on==true && splashScreenStart==false) splashScreen(); 
  if ( splashScreenStart==true ) { 
    homeScreen(); 
    homeScreenStart=true;
  }
  //
}//End draw
//
void keyPressed() {
  //Splash Screen SPACE Bar
  if ( OS_on==true && key==' ' ) { 
    splashScreenStart = true;
    backgroundWhiteScreen();
    backgroundImage();
    gridBackground();
  }
  //
  //Key Board Short Cuts 
  if ( key==CODED && keyCode==ESC) {   
    exit();  
    println("bye!");
  }
  if ( key=='Q' || key=='q' ) { 
    exit();  
    print("bye!");
  }
  if ( key=='N' || key=='n' ) {
    if ( nightMode ) { 
      nightMode=false;
      backgroundImage();
    } else { 
      nightMode=true;
      backgroundImage();
    }
  }
}//End keyPressed
//
void mousePressed() {
  //OS Level Mouse Click
  if ( OS_on==false ) OS_on=true;//End OS Level Mouse Click
  if ( homeScreenStart==true && mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight) {
    exit();
  }
  //cursor();
}//End mousePressed
//
//End MAIN Program
