void setup(){
  size (800, 600);
}

void draw(){
  background(255);
  for(int y = 0; y<width; y+=30){
    line(0,y,width, y);
  }
  for(int x = 0; x<width; x+=30){
    line(x, 0, x, height);
  }
}
