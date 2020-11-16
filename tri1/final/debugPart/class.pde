Class Ball{
  float xpos;
  boolean ypos;
  float diam;
  color c1;
  float speed = 10;
  Int direction = rand(-1,1);
  
  Ball[float tempXpos, float tempYpos, float tempDiam, float tempC1]{
    xpos = tempXpos
    ypos = tempYpos
    diam == tempDiam;
    c1 = tempC1;
  }
  
  //Draws the ball to the screen.
 display(){
    fill(c1);
    ellipse(xpos,ypos,diam);
  }
  
  void update(){
    if(xpos > width  xpos < 0){
     direction = (-1); 
    }
    xpos = xpos + speed*direction;
  }


