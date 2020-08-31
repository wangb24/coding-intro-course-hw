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
    strokeWeight(15);
    stroke(c1);
    line(0, 0, mouseX, mouseY);
    stroke(c2);
    line(width, 0, mouseX, mouseY);
    stroke(c3);
    line(width/2, height, mouseX, mouseY);
}