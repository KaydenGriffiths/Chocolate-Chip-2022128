void cursorDrawn() {
    if (mouseX==startX && mouseY==startY && mouseX < startWidth && mouseY < startHeight ) {
    cursor(CROSS);
  } else {
    cursor(HAND);
  }
}//End cursorDrawn
//
//End Cursor Drawn Subprogram
