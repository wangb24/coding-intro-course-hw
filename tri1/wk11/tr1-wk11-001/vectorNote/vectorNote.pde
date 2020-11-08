
PVector position;
PVector direction;

float angularSpeed = 0.01;

void setup() {
    frameRate(120);
    size(600, 600);
    position = new PVector(width/2, height/2);
    direction = new PVector(0, -1);
}

void draw() {
    background(255);

    stroke(0);
    strokeWeight(5);

    direction.setMag(width/10);
    //direction.rotate(angularSpeed);

    line(position.x, position.y, position.x+direction.x, position.y+direction.y);
}

void keyPressed() {
    if(keyCode == RIGHT){
        direction.rotate(angularSpeed);
    }else if(keyCode == LEFT){
        direction.rotate(-angularSpeed);
    }
}