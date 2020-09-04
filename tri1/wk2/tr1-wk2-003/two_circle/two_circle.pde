
float x = 1024;
float y = 1024;
float c = 256;
color back1 = color(random(255), random(255), random(255));
color c1 = color(random(255), random(255), random(255));
color c2 = color(random(255), random(255), random(255));
color c3 = color(random(255), random(255), random(255));
color c4 = color(random(255), random(255), random(255));
color c5 = color(random(255), random(255), random(255));
color c6 = color(random(255), random(255), random(255));
color cc1 = c5;
color cc2 = c6;
color ccback = c4;

void setup() {
    size(1024, 1024);
}

void draw() {
    float c1x = x/2 - 64;
    float cy = y/2;
    float c2x = x/2 + 64;
    if (sqrt(sq(mouseX-c1x)+sq(mouseY-cy)) < c/2 && sqrt(sq(mouseX-c2x)+sq(mouseY-cy)) > c/2 ) {
        ccback = c1;
        cc1 = c2;
        cc2 = c3;
    }else if (sqrt(sq(mouseX-c1x)+sq(mouseY-cy)) > c/2 && sqrt(sq(mouseX-c2x)+sq(mouseY-cy)) < c/2) {
        ccback = c2;
        cc1 = c3;
        cc2 = c1;
    }else if (sqrt(sq(mouseX-c1x)+sq(mouseY-cy)) < c/2 && sqrt(sq(mouseX-c2x)+sq(mouseY-cy)) < c/2 ) {
        ccback = c3;
        cc1 = c1;
        cc2 = c2;
    }else{
        ccback = c4;
        cc1 = c5;
        cc2 = c6;
    }
    background(ccback);

    fill(cc1);
    ellipse(c1x, cy, c, c);

    fill(cc2);
    ellipse(c2x, cy, c, c);

}
