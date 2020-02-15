void drawBase() {
  fill(120,12,100,100); 
  translate(-70, 50, -70);
  rotateX(radians(90));
  rect(0, 0, 130, 130);
}

void controller() {
  if (keyPressed) {
    if (keyCode == LEFT) {
      cam.reset();
      cam.rotateX((double)(PI / 4.0));
    }
  }
}
