Boolean cen=true, net=true, swt=true, lcy=true, dth=true, other=true;
final float margin_to_left = 160;
final float margin_to_top = 100;
boolean[] state = {true, true, true, true, true, true, true, true, true, true};
int func_num = 2; 
int gap = 25; 

//void mousePressed(){
//  //clicking on language box
//  for(int i = 0; i < 5; i++){
//    if ( mouseX > margin_to_left-125 && mouseX < margin_to_left-125+15 && 
//    mouseY > 460 + gap*i && mouseY < 460+gap*i+15) {
//      state[i] = true;
//      if (branch != i){
//        branch = i;
//        func_num = 2;
//      }
//      else{branch = 99;}
//    }
//  }}

void keyPressed() {
  if (key =='1') {
    cen = !cen; // Central
  }
  if (key =='4') {
    net = !net; // Northeast
  }
  if (key =='5') {
    swt = !swt; // Southwest
  }
  if (key =='3') {
    lcy = !lcy; // Lake City
  }
  if (key =='2') {
    dth = !dth; // Douglass-Truth
  }
  
  
  // press w/s to rotate up/down
  // press a/d to rotate left/right
  
  //vertical rotation
  if (key =='w') {
    cam.rotateX(-0.45); 
    }
  if (key =='s') {
    cam.rotateX(0.45); 
    }
    
  //horizontal rotation
  if (key =='a') {
    cam.rotateY(0.45); 
    }
  if (key =='d') {
    cam.rotateY(-0.45); 
    }
}
