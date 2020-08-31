color back = color(random(255), random(255), random(255));
color c1 = color(random(255), random(255), random(255));
color c2 = color(random(255), random(255), random(255));
color c3 = color(random(255), random(255), random(255));
color c4 = color(random(255), random(255), random(255));


void setup() {
    size(1024, 1024);
    frameRate(120);
}

void draw() {
    background(back);
    strokeWeight(0);
    //top
    fill(c1);
    triangle(0, 0, width, 0, mouseX, mouseY);
    //left
    fill(c2);
    triangle(0, 0, width/2, height, mouseX, mouseY);
    //right
    fill(c3);
    triangle(width, 0, width/2, height, mouseX, mouseY);
}