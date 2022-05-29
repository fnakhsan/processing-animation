PImage img1, img2, img3, img4, img5, img6;

void setup(){
  frameRate(30);
  background(#000000);
  size(800,800,P3D);
  img1 = loadImage("dice-six-faces-one.png");
  img2 = loadImage("dice-six-faces-two.png");
  img3 = loadImage("dice-six-faces-three.png");
  img4 = loadImage("dice-six-faces-four.png");
  img5 = loadImage("dice-six-faces-five.png");
  img6 = loadImage("dice-six-faces-six.png");

}

void draw() {
  background(#000000);
  translate(width/2,height/2,0);
  
  //yaw
  //rotateY(frameCount * .05);
  //pitch
  //rotateX(frameCount * .05);
  //roll
  //rotateZ(frameCount * .05);
  
  rotateY(radians(mouseX));
  rotateX(-radians(mouseY));
  
  //front
  beginShape();
  texture(img2);
  vertex(-100,-100,100, 0, 0);
  vertex(100,-100,100, 512, 0);
  vertex(100,100,100, 512, 512);
  vertex(-100,100,100, 0, 512);
  endShape();
  
  //back
  beginShape();
  texture(img5);
  vertex(-100,-100,-100, 0, 0);
  vertex(100,-100,-100, 512, 0);
  vertex(100,100,-100, 512, 512);
  vertex(-100,100,-100, 0, 512);
  endShape();
  
  //top
  beginShape();
  texture(img1);
  vertex(-100,-100,-100, 0, 0);
  vertex(100,-100,-100, 512, 0);
  vertex(100,-100,100, 512, 512);
  vertex(-100,-100,100, 0, 512);
  endShape();
  
  //bottom
  beginShape();
  texture(img6);
  vertex(-100,100,-100, 0, 0);
  vertex(100,100,-100, 512, 0);
  vertex(100,100,100, 512, 512);
  vertex(-100,100,100, 0, 512);
  endShape();
  
  //left
  beginShape();
  texture(img3);  
  vertex(-100,-100,-100, 0, 0);
  vertex(-100,100,-100, 512, 0);
  vertex(-100,100,100, 512, 512);
  vertex(-100,-100,100, 0, 512);
  endShape();
  
  //right
  beginShape();
  texture(img4);
  vertex(100,-100,-100, 0, 0);
  vertex(100,100,-100, 512, 0);
  vertex(100,100,100, 512, 512);
  vertex(100,-100,100, 0, 512);
  endShape();
}
