color c;
float r;
String s;
boolean stroke;
boolean enableDraw;

void setup (){
  size (800, 800);
  background(255);
  rectMode (CENTER);
  ellipseMode (CENTER);
  
  c = color(255);
  r = 20;
  s = "rectangle";
  stroke = true;
  enableDraw = false;
}

void setColor(){
  if (key == 'r' ){
    c = color(255, 0, 0);
  }
  else if (key == 'g' ){
    c = color(0, 255, 0);
  }
  else if (key == 'b' ){
    c = color(0, 0, 255);
  }
  else if(key == 'y' ){
    c = color(255, 255, 0);
  }
  else if (key == 'p' ){
    c = color(255, 0, 255);
  }
  else if (key == 'w' ){
    c = color(255);
  }
  
  fill(c);
  println(red(c)+","+green(c)+","+blue(c));
}

void setSize(){
  if(keyCode == UP){
    if (r>= 300){
      r=300;
    }else{
      r = r+10;
    }
  }
  else if (keyCode == DOWN){
    if (r<= 5){
      r=5;
    }
    else {
      r = r-10;
    }
  }
  println(r);
}

void setShape(){
  if (key == '1'){
    s="rectangle";
  }
  else if (key == '2'){
    s="circle";
  }
  else if (key == '3'){
    s="triangle";
  }
  
  println(s);
}

void setStroke(){
  if(key=='f'){
    stroke = !stroke;
  }
}

void setEnableDraw(){
  if (key == 'd' ){
    enableDraw = !enableDraw;
  }
}

void blank(){
  if (keyCode ==  BACKSPACE ){
    println("DELETE");
    background(255);
  }
}

void keyPressed(){
  blank();
  setEnableDraw();
  setColor();
  setSize();
  setShape();
  setStroke();
  
}

void mousePressed(){
  drawShape();
}

void drawShape(){
  if(enableDraw){
    if(stroke){
      strokeWeight(2);
      stroke(0);
    } 
    else if (stroke==false){
      noStroke();
    }
    fill(c);
    if (s=="rectangle"){
      rect(mouseX,mouseY,r,r);
    }
    else if (s=="circle"){
      ellipse(mouseX,mouseY,r,r);
    }
    else if (s=="triangle"){
      triangle(mouseX, mouseY - r, mouseX - r, mouseY + r, mouseX + r, mouseY + r);
    }
  }
}

void draw(){
  drawShape();
  
}
  
  


    
    
