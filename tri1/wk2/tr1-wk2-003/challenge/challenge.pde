
float x = 1024;
float y = 1024;
float sqx = x * 0.2;
float sqy = y * 0.2;
color back1 = color(random(255), random(255), random(255));
color c1 = color(random(255), random(255), random(255));
color c2 = color(random(255), random(255), random(255));
color c3 = color(random(255), random(255), random(255));

void setup() {
    size(1024, 1024);
}

void draw() {
    strokeWeight(0);
    if (mouseX > width/2-sqx/2 && mouseX < width/2+sqx/2 && mouseY > height/2-sqy/2 && mouseY < height/2+sqy/2) {
        background(c2);
        fill(c1);
        rect(width/2 - sqx/2, height/2 - sqy/2, sqx, sqy);

    }else {
        background(c1);
        fill(c2);
        rect(width/2 - sqx/2, height/2 - sqy/2, sqx, sqy);
    }
}
