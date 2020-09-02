// set screen height and width
float h = 1024;
float w = 1024;

// colors
color back = color(random(255), random(255), random(255));
color c1 = color(random(255), random(255), random(255));
color c2 = color(random(255), random(255), random(255));
color c3 = color(random(255), random(255), random(255));
color c4 = color(random(255), random(255), random(255));


float wh = 100;
float half = wh/2;

void setup() {
    size(1024, 1024);
    background(back);
}

float x1;
float x2;
float x3;
float x4;
float y1;
float y2;
float y3;
float y4;

float status = 0;

void draw() {
    background(back);
    stroke(c1);
    strokeWeight(5);
    fill(0, 0, 0, 0);
    if (status == 0) {
        x1 = mouseX;
        x2 = mouseX;
        x3 = mouseX;
        x4 = mouseX;
        y1 = mouseY;
        y2 = mouseY;
        y3 = mouseY;
        y4 = mouseY;
    }else if (status == 1) {
        x1 = mouseX - half;
        x2 = mouseX;
        x3 = mouseX + half;
        x4 = mouseX;
        y1 = mouseY;
        y2 = mouseY - half;
        y3 = mouseY;
        y4 = mouseY + half; 
    }
    rect(mouseX-half, mouseY-half, wh, wh);
    line(mouseX, mouseY-half, x1, y1);
    line(mouseX+half, mouseY, x2, y2);
    line(mouseX, mouseY+half, x3, y3);
    line(mouseX-half, mouseY, x4, y4);
}

void keyPressed() {
    status = 0;
}

void mousePressed() {
    status = 1;
}
