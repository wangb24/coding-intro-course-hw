color col = color(random(188,255), random(188,255), random(188.255));
Ball b = new Ball(100,100,300,col);

void setup(){
    size(500,500);
}

void draw(){
    noStroke();
    smooth();
    background(0);
    b.display();
    b.update();
}