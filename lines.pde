int colors;
int type;

void setup() {
  size(1080, 960);
  
  
    color(255, 0, 0);
    color(0, 255, 0);
    color(0, 0, 255);
  
  type = 0;
}

void draw() {
  blendMode(BLEND);
  
  if(type == 0) {
    background(255);
    blendMode(EXCLUSION);
  } else {
    background(0);
    blendMode(SCREEN);
  }
  noFill();
  strokeWeight(20);
  for(int i = 0; i < 3; i++) {
    stroke(33, 50, 0);
    beginShape();
    for(int w = -20; w < width + 20; w += 5) {
      int h = height / 2;
      h += 200 * sin(w * 0.03 + frameCount * 0.07 + i * TWO_PI / 3) * pow(abs(sin(w * 0.001 + frameCount * 0.02)), 5);
      curveVertex(w, h);
    }    
    endShape();
  }
  
}

void mousePressed() {
  if(type == 0) {
    type = 1;
  } else {
    type = 0;
  }
}
