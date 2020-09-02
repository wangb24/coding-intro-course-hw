// set screen height and width
float h = 1024;
float w = 1024;

// colors
color back = color(random(255), random(255), random(255));
color c1 = color(random(255), random(255), random(255));
color c2 = color(random(255), random(255), random(255));
color c3 = color(random(255), random(255), random(255));
color c4 = color(random(255), random(255), random(255));

float wh = 30;

void setup() {
    size(1024, 1024);
    background(back);
}

void draw() {
    
}

void keyPressed() {
    background(back);
    strokeWeight(0);
    fill(c1);
    ellipse(w*0.25, h*0.25, wh, wh);
    ellipse(w*0.75, h*0.25, wh, wh);
    ellipse(w*0.25, h*0.75, wh, wh);
    ellipse(w*0.75, h*0.75, wh, wh);
}

void mousePressed() {
    background(back);
    strokeWeight(0);
    fill(c2);
    rect(w*0.25-wh/2, h*0.25-wh/2, wh, wh);
    rect(w*0.75-wh/2, h*0.25-wh/2, wh, wh);
    rect(w*0.25-wh/2, h*0.75-wh/2, wh, wh);
    rect(w*0.75-wh/2, h*0.75-wh/2, wh, wh);
}