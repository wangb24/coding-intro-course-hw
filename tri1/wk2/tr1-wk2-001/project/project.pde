color back = color(random(255), random(255), random(255));
color c1 = color(random(255), random(255), random(255));
color c2 = color(random(255), random(255), random(255));
color c3 = color(random(255), random(255), random(255));
color c4 = color(random(255), random(255), random(255));


void setup() {
    size(1024, 1024);
    frameRate(120);
}

//four circle
/*
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
*/

//three line
/*
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
*/

//three triangles
/*
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
*/


