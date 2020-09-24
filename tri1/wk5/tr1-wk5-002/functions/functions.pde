// starting position
// float xpos ;
// float ypos;
// color c1;
// float diam;
// float speed = 10;

// float[] dirOptions = {1, -1};
// int index = int(random(dirOptions.length));
// float direction = dirOptions[index];

ball ball1;
ball ball2;

void setup() {

     size(1024, 1024);
     
//     xpos = width/2;
//     ypos = height/2;
//     c1 = color(random(188,255), random(188,255), random(188,255)); 

    ball1 = new ball(width/2, height/2, 103, color(random(188,255), random(188,255), random(188,255)));
    ball2 = new ball(width/2, height/4, 172, color(random(188,255), random(188,255), random(188,255)));

}

void draw() {

//     rect(300, 300, width/2, height/2)
//     ball(xloc, yloc, d, colorOfBall)

    background(31, 24, 32);
    ball1.display();
    ball1.update();

    ball2.display();
    ball2.update();

}
