


void setup(){
  background(192);
  size(500,500);
  drawPicture();
}

void drawPicture(){
  drawLines();
  drawCrossBars();
  drawYellowLines();
}

void drawYellowLines(){
  float y = height / 4;
  float x = width / 3;
  float lineHeight = height / 50;
  float lineWidth = width / 3;
  stroke(255,255,0);
  fill(255,255,0);
  rect(x,y,lineWidth,lineHeight);
  y = height * 3 / 4;
  rect(x,y,lineWidth,lineHeight);
}

void drawCrossBars(){
  float x = 2.0 * width / 5 - width/50 * 3;
  float y = width/50;
  float barHeight = height / 100;
  float Yspacing = 3 * height / 50;
  float Xspacing = width/50;
  final float GLOW_RATE = 1.2;
  final float GLOW_RATE_SPACING = 1.1;
  final float MAKE_ROUND = width/50 * 2;
  
  while(x > 0 && y < height){
    float barWidth = abs(x - width/2)*2;
    rect(x,y,barWidth,barHeight,MAKE_ROUND,MAKE_ROUND,MAKE_ROUND,MAKE_ROUND);
    x -= Xspacing;
    y += Yspacing;
    barHeight *= GLOW_RATE;
    Xspacing *= GLOW_RATE_SPACING;
    Yspacing *= GLOW_RATE_SPACING;
  }
}

void drawLines(){ 
  // variables and constants
  float x1,x2,x3,x4;
  final float TOP_WIDTH = width/50;
  final float BOTTOM_WIDTH = width/50 * 3;
  // draw left line
  fill(0);
  stroke(0);
  x1 = 2.0 * width / 5;
  x2 = x1 + TOP_WIDTH;
  x3 = width/10;
  x4 = x3 + BOTTOM_WIDTH;
  quad(x1,0,x2,0,x4,height,x3,height);
  
  // draw right line
  float middle = width/2;
  x1 += (middle - x1)*2;
  x2 += (middle - x2)*2;
  x3 += (middle - x3)*2;
  x4 += (middle - x4)*2;
  quad(x1,0,x2,0,x4,height,x3,height);
}

void draw(){
}

void mousePressed(){
  drawVerticalLines();
}

void drawVerticalLines(){
  float x = width / 3;
  float lineWidth = width / 100;
  fill(255,0,0);
  stroke(255,0,0);
  rect(x,0,lineWidth,height);
  float middle = width/2;
  x += (middle - x)*2 - lineWidth;
  rect(x,0,lineWidth,height);
}

void mouseReleased(){
  background(192);
  drawPicture();
}
