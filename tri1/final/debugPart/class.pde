class Ball{
  float xpos;
  float ypos;
  float diam;
  color c1;
  float speed = 10;
  
  // make direction cannot be zero
  //Int direction = int(random(-1,1));
   int[] directionOptions = {-1, 1};
   int index = int(random(directionOptions.length));
   int direction = directionOptions[index];


  
  Ball (float tempXpos, float tempYpos, float tempDiam, color tempC1){
    xpos = tempXpos;
    ypos = tempYpos;
    diam = tempDiam;
    c1 = tempC1;
  }
  
  //Draws the ball to the screen.
  void display(){
    fill(c1);
    ellipse(xpos,ypos,diam,diam);
  }
  
  void update(){
    if(xpos > width || xpos < 0){
     direction = -direction; 
    }
    xpos = xpos + speed*direction;
  }
}


