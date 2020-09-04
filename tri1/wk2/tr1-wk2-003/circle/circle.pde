
float x = 1024;
float y = 1024;
float c = 256;
color back1 = color(random(255), random(255), random(255));
color c1 = color(random(255), random(255), random(255));
color c2 = color(random(255), random(255), random(255));
color c3 = color(random(255), random(255), random(255));

void setup() {
    size(1024, 1024);
}

void draw() {
    if (sqrt(sq(mouseX-x/2)+sq(mouseY-y/2))< c/2) {
        background(c1);
        fill(c2);
    }else if (sqrt(sq(mouseX-x/2)+sq(mouseY-y/2))>= c/2) {
        background(c2);
        fill(c1);
    }
    ellipse(x/2, y/2, c, c);
}