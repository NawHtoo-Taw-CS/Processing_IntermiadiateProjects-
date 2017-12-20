import processing.sound.*;

int totalEffects = 1;
SoundFile[] effect = new SoundFile[totalEffects];



int rect1X = 50;
int rect1Y = 50;
int rect2X = 300;
int rect2Y = 50;
int rect3X = 550;
int rect3Y = 50;

int rect4X = 50;
int rect4Y = 200;
int rect5X = 300;
int rect5Y = 200;
int rect6X = 550;
int rect6Y = 200;
int rectSize = 100;

int ellipse1X = 150; 
int ellipse1Y = 500; 
int ellipse2X = 150;
int ellipse2Y = 600;
int ellipse3X = 150;
int ellipse3Y = 700;

int ellipse4X = 600; 
int ellipse4Y = 500; 
int ellipse5X = 600;
int ellipse5Y = 600;
int ellipse6X = 600;
int ellipse6Y = 700;
int ellipseSize = 50;


int x = 100;
int y = 100;
int sz =100;


int xPos=200;
int xDir=1;
int circle1R = 255, circle1G, circle1B;
int circle2R = 255, circle2G, circle2B;
int circle3R = 255, circle3G, circle3B;

boolean drag1=false,drag2=false,drag3=false;
boolean Stop1=true,Stop2=true,Stop3=true;

boolean drag4=false,drag5=false,drag6=false;
boolean Stop4=true,Stop5=true,Stop6=true;



void setup() {
  size(800,800);
   smooth();
  noStroke();
  
  effect[0] = new SoundFile(this, "gun.mp3");
  
}

void mouseClicked() {
  

}

void mouseReleased() {
  effect[0].play();
  drag1 = false;
  drag2 = false;
  drag3 = false;
  Stop1 = true;
  Stop2 = true;
  Stop3 = true;
  
  drag4 = false;
  drag5 = false;
  drag6 = false;
  Stop4 = true;
  Stop5 = true;
  Stop6 = true;
}

void draw() {
  
  if (drag1) {
      ellipse1X = mouseX;
      ellipse1Y = mouseY;
      strokeWeight(5);
      fill(255);
  }
  if (drag2) {
      ellipse2X = mouseX;
      ellipse2Y = mouseY;
      strokeWeight(5);
  }
  if (drag3) {
      ellipse3X = mouseX;
      ellipse3Y = mouseY;
      strokeWeight(5);
  }
  if (drag4) {
      ellipse4X = mouseX;
      ellipse4Y = mouseY;
      strokeWeight(5);
  }
  if (drag5) {
      ellipse5X = mouseX;
      ellipse5Y = mouseY;
      strokeWeight(5);
  }
  if (drag6) {
      ellipse6X = mouseX;
      ellipse6Y = mouseY;
      strokeWeight(5);
  }
  
  fill(100);
  rect(-20,-20,840,840);
  noStroke();
  fill(0);
  rect(rect1X,rect1Y,rectSize,rectSize);
  rect(rect2X,rect2Y,rectSize,rectSize);
  rect(rect3X,rect3Y,rectSize,rectSize);
  
  rect(rect4X,rect4Y,rectSize,rectSize);
  rect(rect5X,rect5Y,rectSize,rectSize);
  rect(rect6X,rect6Y,rectSize,rectSize);
  
  fill (255,0,0);
  
  if(dist(ellipse1X, ellipse1Y, mouseX, mouseY) < sz / 2) {
    cursor (ARROW);
    if(mousePressed  && Stop1) {
      //effect[0].play();
      Stop2 = false;
      Stop3 = false;
      drag1 = true;
      drag4 = false;
      drag5 = false;
      drag6 = false;
      fill(255,255,0);
      
      
    }
    if(ellipse1X >= rect1X && ellipse1X <= rect1X + 100 && ellipse1Y >= rect1Y && ellipse1Y <= rect1Y + 100){
        
        circle1R =0; 
        circle1G =255;
        circle1B =0;
      }
    else {
      strokeWeight(2);
    }
    stroke(255); 
  } else {
    cursor(ARROW);
  noStroke();
  }
  if(ellipse1X >= rect1X && ellipse1X <= rect1X + 100 && ellipse1Y >= rect1Y && ellipse1Y <= rect1Y + 100){
        fill(0,255,0); }
  ellipse (ellipse1X,ellipse1Y,ellipseSize,ellipseSize);
  
  fill (255,0,0);

if (dist(ellipse2X, ellipse2Y, mouseX, mouseY) < sz / 2) {
    cursor (ARROW);
    if(mousePressed  && Stop2) {
      //effect[0].play();
      Stop1 = false;
      Stop3 = false;
      drag2 = true;
      drag4 = false;
      drag5 = false;
      drag6 = false;
      fill(255,255,0);
      
    
    } else {
      strokeWeight(2);
    }
    stroke(255); 
  } else {
    cursor (ARROW);
  noStroke();
  }
  if(ellipse2X >= rect2X && ellipse2X <= rect2X + 100 && ellipse2Y >= rect2Y && ellipse2Y <= rect2Y + 100){
        fill(0,255,0); }
  ellipse (ellipse2X,ellipse2Y,ellipseSize,ellipseSize);

  fill(255,0,0);

if(dist(ellipse3X, ellipse3Y, mouseX, mouseY) < sz / 2) {
    cursor (ARROW);
    if(mousePressed  && Stop3) {
      //effect[0].play();
      Stop1 = false;
      Stop2 = false;
      drag3 = true;
      drag4 = false;
      drag5 = false;
      drag6 = false;
      fill(255,255,0);
    } else {
      strokeWeight(2);
    }
    stroke(255);
  } else {
    cursor(ARROW);
  noStroke();
  }
  if(ellipse3X >= rect3X && ellipse3X <= rect3X + 100 && ellipse3Y >= rect3Y && ellipse3Y <= rect3Y + 100){
        fill(0,255,0); }
  ellipse (ellipse3X,ellipse3Y,ellipseSize,ellipseSize);
  
  fill(255,0,0);


if(dist(ellipse4X, ellipse4Y, mouseX, mouseY) < sz / 2) {
    cursor (ARROW);
    if(mousePressed  && Stop4) {
      //effect[0].play();
      Stop2 = false;
      Stop3 = false;
      drag1 = false;
      drag4 = true;
      drag5 = false;
      drag6 = false;
      fill(255,255,0);
      
      
    }
    if(ellipse4X >= rect4X && ellipse4X <= rect4X + 100 && ellipse4Y >= rect4Y && ellipse4Y <= rect4Y + 100){
        
        circle1R =0; 
        circle1G =255;
        circle1B =0;
      }
    else {
      strokeWeight(2);
    }
    stroke(255); 
  } else {
    cursor(ARROW);
  noStroke();
  }
  if(ellipse4X >= rect4X && ellipse4X <= rect4X + 100 && ellipse4Y >= rect4Y && ellipse4Y <= rect4Y + 100){
        fill(0,255,0); }
  ellipse (ellipse4X,ellipse4Y,ellipseSize,ellipseSize);
  
  fill (255,0,0);
  
  
  if(dist(ellipse5X, ellipse5Y, mouseX, mouseY) < sz / 2) {
    cursor (ARROW);
    if(mousePressed  && Stop5) {
      //effect[0].play();
      Stop1 = false;
      Stop2 = false;
      drag3 = false;
      drag4 = false;
      drag5 = true;
      drag6 = false;
      fill(255,255,0);
    } else {
      strokeWeight(2);
    }
    stroke(255);
  } else {
    cursor(ARROW);
  noStroke();
  }
  if(ellipse5X >= rect5X && ellipse5X <= rect5X + 100 && ellipse5Y >= rect5Y && ellipse5Y <= rect5Y + 100){
        fill(0,255,0); }
  ellipse (ellipse5X,ellipse5Y,ellipseSize,ellipseSize);
  
  fill (255,0,0);
  
  if(dist(ellipse6X, ellipse6Y, mouseX, mouseY) < sz / 2) {
    cursor (ARROW);
    if(mousePressed  && Stop6) {
      //effect[0].play();
      Stop2 = false;
      Stop3 = false;
      drag1 = false;
      drag4 = false;
      drag5 = false;
      drag6 = true;
      fill(255,255,0);
      
      
    }
    if(ellipse6X >= rect6X && ellipse6X <= rect6X + 100 && ellipse6Y >= rect6Y && ellipse6Y <= rect6Y + 100){
        
        circle1R =0; 
        circle1G =255;
        circle1B =0;
      }
    else {
      strokeWeight(2);
    }
    stroke(255); 
  } else {
    cursor(ARROW);
  noStroke();
  }
  if(ellipse6X >= rect6X && ellipse6X <= rect6X + 100 && ellipse6Y >= rect6Y && ellipse6Y <= rect6Y + 100){
        fill(0,255,0); }
  ellipse (ellipse6X,ellipse6Y,ellipseSize,ellipseSize);
  
  fill (255,0,0);
}
  