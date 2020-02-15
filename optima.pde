import peasy.*;
import controlP5.*;

PeasyCam cam;
ControlP5 cp5;

// An Array of Liner objects
Liner[] liners;
// A Table object

Table table;
PImage bg;
float bx;
float by;
boolean overBox = false;
boolean locked = false;
PImage central;
float fov = PI/3.0;
float cameraZ = (height/2.0) / tan(fov/2.0);


void setup() {
  fullScreen(P3D);
  
  //size(1200,800,P3D);
  cam = new PeasyCam(this, 190);
  cam.setSuppressRollRotationMode();
  
  cp5 = new ControlP5(this);
  
  bx = width/2.0;
  by = height - 100;
  //central = loadImage("centr.jpg");
  //central.resize(floor(central.width*0.25), floor(central.height*0.25));
  
  
  //PImage[] imgs = {loadImage("centr.jpg")};

  //cp5.addButton("CentralBranch")
  // .setValue(0)
  // .setPosition(140,300)
  // .setImages(imgs)
  // .updateSize()
  // ;
  //bg = loadImage("mb.jpg");
  //bg.resize(width, height);
  background(255);
  loadData();
}

void draw() {
  //background(bg);
  
  imageMode(CENTER);
  background(0,0,100); 
  
  noStroke();
  
  fill(0, 0, 60, 10); 
  
  perspective(fov, float(width/2)/float(height/2), 
            cameraZ/10.0, cameraZ*25.0);
  
  //noFill();
  hint(DISABLE_DEPTH_TEST);
  box(100,100,100);
  
  // Display all liners
  for (int i = 0; i < liners.length; i++) {
    //liners[i].display();
    if (cen) {
      if (liners[i].loc.equals("cen")) {
        liners[i].display();
      }
    }
    if (net) {
      if (liners[i].loc.equals("net")) {
        liners[i].display();
      }
    } 
     if (swt) {
      if (liners[i].loc.equals("swt")) {
        liners[i].display();
      }
    } 
     if (lcy) {
      if (liners[i].loc.equals("lcy")) {
        liners[i].display();
      }
    } 
     if (dth) {
      if (liners[i].loc.equals("dth")) {
        liners[i].display();
      }
    }
    if (other){
      if ((liners[i].loc.equals("dth") == false) && (liners[i].loc.equals("lcy") == false) 
        && (liners[i].loc.equals("swt") == false) && (liners[i].loc.equals("net") == false) 
        && (liners[i].loc.equals("cen") == false)) {
        liners[i].display();
      }
    }

  }
  
  if (keyPressed && key == 'c') {
      //cam.reset();
      cam.rotateY(-.08);
    }
  else { 
    drawLabel(); 
    drawTicks();
  }
  //drawLabel();
  
  drawLegend();
  
  //drawBase();
  
}
