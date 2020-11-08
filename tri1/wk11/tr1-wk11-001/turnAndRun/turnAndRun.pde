PVector position;
PVector direction1;
PVector direction2;
PVector direction3;
float rotationAngle=.5;
PVector vel;
PVector acc;


void setup() {
  size(600, 600);
  position=new PVector (width/2, height/2);
  direction1=new PVector (0, -1);
  direction2=new PVector (-0.5, .5);
  direction3=new PVector (0.5, .5);
  vel=new PVector (0, 0);
  acc=new PVector (0, -1);
}

void draw() {
  background(255, 255, 255);

  stroke(0);
  strokeWeight(5);
  direction1.setMag(30);//change the magnitude of the vector
  direction2.setMag(30);
  direction3.setMag(30);

  position.add(vel);
  triangle(position.x+direction1.x, position.y+direction1.y, position.x+direction2.x, position.y+direction2.y, position.x+direction3.x, position.y+direction3.y);
  outOfBounce();
}


void keyPressed() {
  if (keyCode==RIGHT) {
    direction1.rotate(rotationAngle);
    direction2.rotate(rotationAngle);
    direction3.rotate(rotationAngle);
    acc.rotate(rotationAngle);
  } else if (keyCode==LEFT) {
    direction1.rotate(-rotationAngle);
    direction2.rotate(-rotationAngle);
    direction3.rotate(-rotationAngle);
    acc.rotate(-rotationAngle);
  } else if (keyCode==UP) {
    vel.add(acc);
  } else if (keyCode==DOWN) {
    vel.sub(acc);
  } else if (keyCode==ENTER) {
    vel.set(0,0);
  }
}

void outOfBounce() {
  if (position.x>width) {
    position.x=0;
  } else if (position.x<0) {
    position.x=width;
  } else if (position.y>height) {
    position.y=0;
  } else if (position.y<0) {
    position.y=height;
  }
}
