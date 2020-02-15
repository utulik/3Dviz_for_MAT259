class Liner{
  //int bibo; // order for bibNumber (created to add 3rd dimension: z-axis)
  float brado; // order for ItemLocation and barcode (created to differentiate books that belong to different branches: x-axis)
  float orig; // origin of the line (defined as cout - min(cout)) in days 
  float dest; // destination of the line (defined as cin - min(cout)) in days
  int dur; // duration of loan in days
  int col_code; // numeric code int: for 28 locations, used for coloring
  float hh;
  float hhi; 
  //int dew; // dewey rounded to int. Might be used for coloring later
  //int tord; // order for datetime(cout) used in looping to draw top-->bottom
  String loc; //item location in string  
  
  Liner(float brado, float orig, float dest, int dur, int col_code, float hh, float hhi, String loc){
    //this.bibo = bibo;
    this.brado = brado;
    this.orig = orig;
    this.dest = dest;
    this.dur = dur;
    this.col_code = col_code; 
    this.hh = hh; 
    this.hhi = hhi;
    this.loc = loc; 
    //this.dew = dew; 
  }

  void display() {
    colorMode(HSB, 360, 100, 100);
    
    pushMatrix();
    
    //CENTRAL LOCATION (CEN) 
    
    if ((dur > 75) && (col_code==4)) {
      
      // draw a line from the original check-in to check-out time
      //stroke(198, 61, 92);
      stroke(clr[0]);
      strokeWeight(map(dur, 0, 1286, 0.5, 3.5)); 
      //line(brado, orig, hh,  brado, dest, hhi);
      beginShape();
      curveVertex(brado, orig, hh); 
      curveVertex(brado, orig, hh);
      
      curveVertex(brado, (orig+dest)/2, hh); 
      
      curveVertex(brado, dest, hhi);
      curveVertex(brado, dest, hhi);
      endShape(); 
      
      
      // draw point of origin and destination in time
      strokeWeight(5);
      point(brado, orig, hh);
      point(brado, dest, hhi);
      
    }
    
    //NET LOCATION (NET) 
    
    else if ((dur > 75) && (col_code==18)) {
      
      // draw a line from the original check-in to check-out time
      //stroke(53, 70, 99);
      stroke(clr[3]);
      strokeWeight(map(dur, 0, 1286, 0.5, 3.5)); 
      //line(brado, orig, hh,  brado, dest, hhi);
      beginShape();
      curveVertex(brado, orig, hh); 
      curveVertex(brado, orig, hh);
      
      curveVertex(brado, (orig+dest)/2, hh); 
      
      curveVertex(brado, dest, hhi);
      curveVertex(brado, dest, hhi);
      endShape(); 
      
      
      // draw point of origin and destination in time
      strokeWeight(5);
      point(brado, orig, hh);
      point(brado, dest, hhi);
      
    }
    
    //swt LOCATION (swt) 
    
    else if ((dur > 80) && (col_code==24)) {
      
      // draw a line from the original check-in to check-out time
      stroke(clr[4]);
      //stroke(79, 69, 77);
      strokeWeight(map(dur, 0, 1286, 0.5, 3.5)); 
      //line(brado, orig, hh,  brado, dest, hhi);
      beginShape();
      curveVertex(brado, orig, hh); 
      curveVertex(brado, orig, hh);
      
      curveVertex(brado, (orig+dest)/2, hh); 
      
      curveVertex(brado, dest, hhi);
      curveVertex(brado, dest, hhi);
      endShape(); 
      
      
      // draw point of origin and destination in time
      strokeWeight(5);
      point(brado, orig, hh);
      point(brado, dest, hhi);
      
    }
    
    //lcy LOCATION (lcy) 
    
    else if ((dur > 75) && (col_code==13)) {
      
      // draw a line from the original check-in to check-out time
      //stroke(1, 68, 76);
      stroke(clr[2]);
      strokeWeight(map(dur, 0, 1286, 0.5, 3.5)); 
      //line(brado, orig, hh,  brado, dest, hhi);
      beginShape();
      curveVertex(brado, orig, hh); 
      curveVertex(brado, orig, hh);
      
      curveVertex(brado, (orig+dest)/2, hh); 
      
      curveVertex(brado, dest, hhi);
      curveVertex(brado, dest, hhi);
      endShape(); 
      
      
      // draw point of origin and destination in time
      strokeWeight(5);
      point(brado, orig, hh);
      point(brado, dest, hhi);
      
    }
    
    //dth LOCATION (dth) 
    
    else if ((dur > 75) && (col_code==7)) {
      
      // draw a line from the original check-in to check-out time
      //stroke(326, 21, 13);
      stroke(clr[1]);
      strokeWeight(map(dur, 0, 1286, 0.5, 3.5)); 
      //line(brado, orig, hh,  brado, dest, hhi);
      beginShape();
      curveVertex(brado, orig, hh); 
      curveVertex(brado, orig, hh);
      
      curveVertex(brado, (orig+dest)/2, hh); 
      
      curveVertex(brado, dest, hhi);
      curveVertex(brado, dest, hhi);
      endShape(); 
      
      
      // draw point of origin and destination in time
      strokeWeight(5);
      point(brado, orig, hh);
      point(brado, dest, hhi);
      
    }
    
    else if (dur > 75) {
      stroke(0, 0, 65);
      strokeWeight(0.5);
      
      beginShape();
      curveVertex(brado, orig, hh); 
      curveVertex(brado, orig, hh);
      
      curveVertex(brado, (orig+dest)/2, hh); 
      
      curveVertex(brado, dest, hhi);
      curveVertex(brado, dest, hhi);
      endShape(); 
      
      
      // draw point of origin and destination in time
      strokeWeight(3);
      point(brado, orig, hh);
      point(brado, dest, hhi);
      }
      
    popMatrix();
    
  
  }
    
}  
