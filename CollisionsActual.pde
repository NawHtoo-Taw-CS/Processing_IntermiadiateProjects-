import processing.sound.*;




int rect1X = 50;
int rect1Y = 50;
int rect2X = 300;
int rect2Y = 50;
int rect3X = 550;
int rect3Y = 50;
int rectSize = 200;

int ellipse1X = 150; 
int ellipse1Y = 600; 
int ellipse2X = 400;
int ellipse2Y = 600;
int ellipse3X = 650;
int ellipse3Y = 600;
int ellipseSize = 100;


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



void setup() {
  size(800,800);
   smooth();
  noStroke();
}

void mouseReleased() {
  drag1 = false;
  drag2 = false;
  drag3 = false;
  Stop1 = true;
  Stop2 = true;
  Stop3 = true;
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
  
  fill(100);
  rect(-20,-20,840,840);
  noStroke();
  fill(0);
  rect(rect1X,rect1Y,rectSize,rectSize);
  rect(rect2X,rect2Y,rectSize,rectSize);
  rect(rect3X,rect3Y,rectSize,rectSize);
  
  fill (255,0,0);
  
  if(dist(ellipse1X, ellipse1Y, mouseX, mouseY) < sz / 2) {
    cursor (ARROW);
    if(mousePressed  && Stop1) {
      Stop2 = false;
      Stop3 = false;
      drag1 = true;
      fill(255,255,0);
      
    }
    if(ellipse1X >= rect1X && ellipse1X <= rect1X + 200 && ellipse1Y >= rect1Y && ellipse1Y <= rect1Y + 200){
        
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
  if(ellipse1X >= rect1X && ellipse1X <= rect1X + 200 && ellipse1Y >= rect1Y && ellipse1Y <= rect1Y + 200){
        fill(0,255,0); }
  ellipse (ellipse1X,ellipse1Y,ellipseSize,ellipseSize);
  
  fill (255,0,0);

if (dist(ellipse2X, ellipse2Y, mouseX, mouseY) < sz / 2) {
    cursor (ARROW);
    if(mousePressed  && Stop2) {
      Stop1 = false;
      Stop3 = false;
      drag2 = true;
      fill(255,255,0);
      
    
    } else {
      strokeWeight(2);
    }
    stroke(255); 
  } else {
    cursor (ARROW);
  noStroke();
  }
  if(ellipse2X >= rect2X && ellipse2X <= rect2X + 200 && ellipse2Y >= rect2Y && ellipse2Y <= rect2Y + 200){
        fill(0,255,0); }
  ellipse (ellipse2X,ellipse2Y,ellipseSize,ellipseSize);

  fill(255,0,0);

if(dist(ellipse3X, ellipse3Y, mouseX, mouseY) < sz / 2) {
    cursor (ARROW);
    if(mousePressed  && Stop3) {
      Stop1 = false;
      Stop2 = false;
      drag3 = true;
      fill(255,255,0);
    } else {
      strokeWeight(2);
    }
    stroke(255);
  } else {
    cursor(ARROW);
  noStroke();
  }
  if(ellipse3X >= rect3X && ellipse3X <= rect3X + 200 && ellipse3Y >= rect3Y && ellipse3Y <= rect3Y + 200){
        fill(0,255,0); }
  ellipse (ellipse3X,ellipse3Y,ellipseSize,ellipseSize);

  }