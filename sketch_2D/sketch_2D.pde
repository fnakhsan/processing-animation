int x,y;
float w,h,s;

void setup(){
  frameRate(24);
  background(#000000);
  size(800,800);
  x = 0;
  y = 0;
  w = 0.5;
  h = 0.5;
  s = 0;
}

void draw() {
  background(#000000);
  
  //pan
  //pan();
  
  //zoom
  //scale(w,h);
  //zoom();
  
  //rotate
  //translate(400,400);
  //rotate(radians(s));
  //putar();
}

void name(){
  //F
  noStroke();
  fill(#FFFFFF);
  rect(0,0,10,50);
  rect(10,0,30,10);
  rect(10,20,15,10);
  
  //N
  fill(#FFFFFF);
  rect(50,0,50,50);
  fill(#000000);
  triangle(60,0,90,30,90,0);
  fill(#000000);
  triangle(60,50,60,20,90,50);
  
  //A
  fill(#FFFFFF);
  triangle(110,50,130,0,150,50);
  fill(#000000);
  triangle(120,50,130,20,140,50);
  fill(#FFFFFF);
  rect(125,30,10,5);
}

void pan() {
  background(#000000);
  
  //name();
  
  //F
  noStroke();
  fill(#FFFFFF);
  rect(x,y,10,50);
  rect(x,y,40,10);
  rect(x,y+20,25,10);
  
  //N
  fill(#FFFFFF);
  rect(x+50,y,50,50);
  fill(#000000);
  triangle(x+60,y,x+90,y+30,x+90,y);
  fill(#000000);
  triangle(x+60,y+50,x+60,y+20,x+90,y+50);
  
  //A
  fill(#FFFFFF);
  triangle(x+110,y+50,x+130,y,x+150,y+50);
  fill(#000000);
  triangle(x+120,y+50,x+130,y+20,x+140,y+50);
  fill(#FFFFFF);
  rect(x+125,y+30,10,5);
  
  //geser
  x = x+1;
  y = y+1;
  if(x>800 && y>800){
    x = -150;
    y = -150;
  }
}

void zoom(){
  name();
  
  w = w + 0.2;
  h = h + 0.2;
  
  if(w > 15 && h > 16){
    w = 0;
    h = 0;
  }
}

void putar(){
  name();
  
  s = s + 3;
  
  if(s > 359.9){
    s = 0;
  }
}
