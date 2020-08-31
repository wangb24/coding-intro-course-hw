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
    //clear background
    background(back);
    //top left
    fill(c1);
    ellipse(mouseX-25, mouseY-25, 25, 25);
    //top right
    fill(c2);
    ellipse(mouseX+25, mouseY-25, 25, 25);
    //bottom left
    fill(c3);
    ellipse(mouseX-25, mouseY+25, 25, 25);
    //bottom right
    fill(c4);
    ellipse(mouseX+25, mouseY+25, 25, 25);
}