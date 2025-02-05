void setup(){
  size (800, 800);
}

void draw(){
  background(255);
  for(int x = 0; x<width; x+=1){
    stroke(random(255),random(255), random(255));
    line(0,x,width, x);
  }
}
