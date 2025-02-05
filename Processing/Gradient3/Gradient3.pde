void setup(){
  size(800, 800);
}

void draw(){
  background(255);
  for(float x= 0; x<width; x++){
    for(float y = 0; y<height; y++){
      float d = dist(x,y, width/2, height/2);
      if(d<400){
        stroke(255*d/400,255*d/400,0);
      }
      else{
        stroke(255);
      }
      point(x,y);
    }
  }
  noLoop();
}
