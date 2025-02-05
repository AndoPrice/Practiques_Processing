void setup (){
  size(800,800);
  //frameRate(12);
}

void draw(){
  background(255);
  //println(mouseX);
  if(mouseX<width/2&&mouseY<height/2){
    background(255, 0, 0);
  }
  else if (mouseX>width/2&&mouseY<height/2){
    background(0,255,0);
  }
  else if (mouseX>width/2&&mouseY>height/2){
    background(255,255,0);
  }
  else{
    background(0,0,255);
  }
  line(width/2, 0, width/2, height);
  line(0,height/2, width, height/2);
  
}
