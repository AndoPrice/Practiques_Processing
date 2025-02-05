float x;
float y;

void setup(){
  size(800,800);
  x = width/2; 
  y = height/2-100; 
}



void draw(){
  background(255);
  x= mouseX;
  y= mouseY;
  drawHead(x,y);
  drawBody(x,y);
  drawFace(x,y);
  drawArms(x,y);
}

void drawFace(float x, float y){
  noFill(); stroke(0,0,255);
  rectMode(CENTER); fill(0,0,200);
  rect(x,y, 50,50);
  
  rectMode(CORNER);
  rect(x+40,y+25,50,-10);
  rect(x-90,y+25,50,-10);
  
  fill(0, 0, 200);
  arc(x,y+35, 200, 200, TWO_PI - 2*PI/3, TWO_PI - PI/3, CHORD);

  fill(0);
  circle(x, y, 50);
  fill(0,255,0);
  circle(x, y, 5);
  
}

void drawHead(float x, float y){
  fill(245);
  stroke(0,0,250);
  circle(x, y+35, 200);
}

void drawBody(float x, float y){
  fill(245);
  stroke(0,0,250);
  rectMode(CENTER);
  rect(x, y+150, 200, 220);
  
  fill(0,0,200);
  rect(x, y+50, 100, 10);
  rect(x, y+70, 100, 10);
  rect(x, y+90, 100, 10);
  
  rect(x, y+160, 50, 100);
  fill(90);
  circle(x,y+135, 50);
  circle(x,y+185, 50);
  stroke(0);
  line(x+25, y+185, x-25, y+185);
  line(x+22, y+175, x-22, y+175);
  line(x+22, y+195, x-22, y+195);
  line(x+25, y+135, x-25, y+135);
  line(x+25, y+125, x-22, y+125);
  line(x+25, y+145, x-22, y+145);
  
  fill(0);
  rect(x, y+235, 25,25);
  fill(90);
  circle(x,y+235, 25);
  stroke(0);
  line(x+12.5, y+235, x-12.5, y+235);
  line(x+10, y+240, x-10, y+240);
  line(x+10, y+230, x-10, y+230);
  
  
  
  
  fill(245);
  beginShape();
  vertex(x-80, y+260);
  vertex(x-70, y+270);
  vertex(x+70, y+270);
  vertex(x+80, y+260);
  endShape();
  
}

void drawArms (float x,float y){
  rectMode(CENTER);
  fill(245);
  stroke(0,0,250);
  triangle(x-100, y+260, x-125, y+300, x-75, y+300);
  triangle(x+100, y+260, x+125, y+300, x+75, y+300);
  rect(x-100,y+80, 40, 80);
  rect(x+100,y+80, 40, 80);
  rect(x-100,y+240, 40, 80);
  rect(x+100,y+240, 40, 80);
  rect(x-100, y+160, 22, 80);
  rect(x+100, y+160, 22, 80);
}
