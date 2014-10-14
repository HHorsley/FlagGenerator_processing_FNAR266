// Used code from Mahir Yavuz
// Import PDF Library
import processing.pdf.*;


// Variables
PImage flameOrange, flameRed, flameWhite, starRed, starWhite, iconCandle, iconWindow, iconCatapult, flameCirclePurp, flameCirclePurp2;
float r = 255; // Red
float g = 255; // Green
float b = 255; // Blue

int w = 800; // Width 800px
int h = w/2; // Height = Width / 2

void setup() {

  size(w, h);
  background(255);
  smooth();
  colorMode(RGB, 255);  

  flameOrange = loadImage("flameOrange.png");
  flameRed = loadImage("flameRed.png");
  flameWhite = loadImage("flameWhite.png");
  starRed = loadImage("starRed.png");
  starWhite = loadImage("starWhite.png");
  iconCandle = loadImage("iconCandle.png");
  iconWindow = loadImage("iconWindow.png");
  iconCatapult = loadImage("iconCatapult.png");
  flameCirclePurp = loadImage("flameCirclePurp.png");
  flameCirclePurp2 = loadImage("flameCirclePurp2.png");
  
}

void draw() {
}

void mouseClicked() {
  background(255);
  drawFlag();
}

void randomize() {
  //  Create random variables for r,g,b colors
  //  Custom ranges for blue color palette
  r = random(10,60);
  g = random(40,100);
  b = random(100, 200);
}

void drawFlag () {
  beginRecord(PDF, "flagGen-######.pdf"); // Start PDF Recording with Frame number

  noStroke(); // Turn off all the strokes

  int rectAmount = int(random(1, 4)); // Random amount of stripes
  int shapeId = int(random(0, 11)); // Pick a number for shapes


  if (rectAmount == 2) {
    randomize();
    fill(r, g, b);
    rect(w/2, 0, w/2, h);

    randomize();
    fill(r, g, b);
    rect(0, 0, w/2, h);
  }  

  if (rectAmount == 3) {
    randomize();
    fill(r, g, b);
    rect(0, h/4, w, h/4*2);

    randomize();
    fill(r, g, b);
    rect(0, 0, w, h/4);

    randomize();
    fill(r, g, b);
    rect(0, h/4*2, w, h/4);
    
    randomize();
    fill(r, g, b);
    rect(0, h/4*3, w, h/4*3);
  }

  
  if (shapeId == 1) {
    image(flameOrange, w/2-48.5, h/2-111.5, 97, 223);
    
  } else if (shapeId == 2) { 
    image(flameRed, w/2-48.5, h/2-111.5, 97, 223);
    
  } else if (shapeId == 3) {
    image(starRed, w/2-64, h/2-64, 128, 128);
    
  } else if (shapeId == 4) {
    image(starWhite, w/2-64, h/2-64, 128, 128);
    
  } else if (shapeId == 5) {
    image(flameWhite, w/2-48.5, h/2-111.5, 97, 223);
    
  } else if (shapeId == 6) {
    image(iconCandle, w/2-125, h/2-125, 250, 250);
    
  } else if (shapeId == 7) {
    image(iconWindow, w/2-125, h/2-125, 250, 250);
     
  } else if (shapeId == 8) {
    image(iconCatapult, w/2-125, h/2-125, 250, 250);
    
  } else if (shapeId == 9) {
    image(flameCirclePurp, w/2-127, h/2-127, 254, 254);
    
  } else if (shapeId == 10) {
    image(flameCirclePurp2, w/2-127, h/2-127, 254, 254);
    
  }


  endRecord(); // end pdf export
}

void keyPressed() {
  //    If key "i" is pressed export a PNG image
  if (key == 'i' || key == 'I') { 
    saveFrame("exp-######.png");
  }
}

