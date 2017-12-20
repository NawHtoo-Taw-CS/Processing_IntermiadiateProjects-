void quitButton() {
  fill(boarder);
  

  // Hovering Effect
  if (mouseX > 65 && mouseX < 65 && mouseY > 65 && mouseY < 65) {
    boarder = yellow;
    inside = purple;
  } else {
    boarder = purple;
    inside = yellow;
  } // End of IF for Hovering Effect
}