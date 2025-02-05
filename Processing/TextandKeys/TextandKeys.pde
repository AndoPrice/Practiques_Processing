int x =0;
int y= 0;

void setup(){
  size(800,600);
  background(255);
}

void draw(){
  background(255);
  circle(x,y,150);
}

void keyPressed(){
  fill(random(255), random(255), random(255));
  textSize(random(20,60));
  text(key, random(width), random(height));
  if(keyCode ==LEFT){
    x-=5;
  }
  else if(keyCode == RIGHT){
    x+=5;
  }
  else if(keyCode == UP){
    y-=5;
  }
  else if(keyCode ==DOWN){
    y+=5;
  }
}
