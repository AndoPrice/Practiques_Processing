void setup(){
  size(800, 800);
}

void draw(){
  background (255);
  for (int x=0; x<2*width; x+=20){
    line(0, x, x, 0);
  }
}
