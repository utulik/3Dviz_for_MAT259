float topleft=25; 
String [] branches = {"Central", "Northeast", "Southwest", "Lake City", "Douglass-Truth"};
color clr[] = {#9B59B6, #3498DB, #FEB308, #E74C3C, #2ECC71};
int branch = 99;

// code borrowed from Meilin Shi
void drawLegend() {
  hint(DISABLE_DEPTH_TEST);
  cam.beginHUD();
  cp5.draw();
  
  
    // title
  textAlign(LEFT);
  fill(50);
  pushMatrix();
  translate(topleft, topleft, 0);
  textSize(50);
  text("Slow Readers of SPL", 0, 30);
  textSize(18);
  String s = "This project explores the duration of lengthy (>75 days) book loans in Seattle Public Library. The lines represent the duration of a book loan, the longer and wider the line, the more time the borrower reads the book. Diverging colors represent different branches, where the books are held";
  text(s, 0, 50, 550, 300);
  strokeWeight(2);
  line(0, 35, 500, 35);
  textSize(20);
  text("MAT 259 ~ Evgeny Noi", 0, 220);
  popMatrix();
  
  // key bindigns
  pushMatrix();
  textSize(25);
  translate(topleft, height-topleft, 0);
  
  textAlign(LEFT);
  //fill(198, 61, 92);
  fill(clr[0]);
  text("Press '1' for Central Branch", 0, -100);
  fill(clr[1]);
  text("Press '2' for Douglas-Truth Branch", 0, -75);
  fill(clr[2]);
  text("Press '3' for Lake City Branch", 0, -50);
  fill(clr[3]);
  text("Press '4' for Northeast Branch", 0, -25);
  fill(clr[4]);
  text("Press '5' for Southwest Branch", 0, 0);
  popMatrix();
  
  // Controls for cam view
  pushMatrix();
  textSize(20);
  translate(width-600, height-topleft, 0);
  // draw a textbox
  fill(0,0,0,10); 
  stroke(0,0,0); 
  rect(-10, -130, 535, 100); 
  textAlign(LEFT);
  fill(0,0,0);
  text("Press 'a / d' to rotate left/right on the Y-axis", 0, -100);
  text("Press 'w / s' to rotate up/down on the X-axis", 0, -75);
  text("Press and hold 'c' to continuously rotate on the Y-axis", 0, -50);
  popMatrix();
  
  //for(int i = 0; i<branches.length; i++){
  //  stroke(clr[i]);
  //  strokeWeight(2);
  //  if(branch == i){noFill();}
  //  else{fill(clr[i]);}
  //  rect(margin_to_left-125,460+gap*i,15,15);
  //  fill(255);
  //  textAlign(LEFT);
  //  textSize(16);
  //  pushMatrix();
  //  translate(0,i*gap,0);
  //  text(branches[i],margin_to_left-100,475);
  //  popMatrix();
  //}
  
   

  
  cam.endHUD();
  hint(ENABLE_DEPTH_TEST);
}
