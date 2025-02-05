void setup(){
  size(800, 800);
}

void draw(){
  background (255);
  for (int d= width; d>0; d-=20){
    circle(width/2, height/2, d);
  }
}
