void drawLabel() {
  fill(120);
  textSize(30);
  // X axis - year
  pushMatrix();
  textAlign(CENTER);
  translate(0, -51, 50);
  scale(0.075);
  text("Books bar codes", 0, 0, 0);
  popMatrix();
  
  pushMatrix();
  textAlign(LEFT, BOTTOM);
  translate(50, -50, 50);
  scale(0.075);
  rotate(45.55);
  text("Days from 2012-12-31", 0, 0, 0);
  popMatrix();
  
  pushMatrix();
  textAlign(LEFT, TOP);
  translate(50, 50, 45);
  scale(0.075);
  text("time (returned)", 0, 0, 0);
  popMatrix();
  pushMatrix();
  textAlign(LEFT, TOP);
  translate(50, 50, -45);
  scale(0.075);
  text("time (borrowed)", 0, 0, 0);
  popMatrix();
  
  //pushMatrix();
  //fill(0);
  //textAlign(CENTER); 
  //translate(0,-90, 0);
  //scale(0.4);
  //text("The SLOW readers of SPL", 0, 0, 0);
  //popMatrix();
}

void drawTicks() {
  textSize(30);
  fill(200);
  // code borrowed from Sarah Wells 
  // draw ticks for y-axis
  for(int i=0; i<1709; i+=200){
  pushMatrix();
  translate(-50, map(i, 0, 1709, -50, 50), 50);
  scale(0.075);
  //textSize(2);
  textAlign(RIGHT, TOP);
  text(i, 0, 0, 0);
  popMatrix();
  
  // draw ticks for x-axis
  for(int j=8; j<22; j+=2){
  textSize(30);
  fill(200);
  pushMatrix();
  translate(50, 50, map(j, 7, 23, -50, 50));
  scale(0.075);
  //textSize(2);
  textAlign(RIGHT, BOTTOM);
  text(j, 0, 0, 0);
  popMatrix();
  }
}
}
