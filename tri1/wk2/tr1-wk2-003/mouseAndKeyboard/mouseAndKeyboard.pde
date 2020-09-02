// set screen height and width
float h = 1024;
float w = 1024;

// colors
color back = color(random(255), random(255), random(255));
color c1 = color(random(255), random(255), random(255));
color c2 = color(random(255), random(255), random(255));
color c3 = color(random(255), random(255), random(255));
color c4 = color(random(255), random(255), random(255));

// float xloc = h/2; //class  example
// float yloc = w/2; //class example
// float cw = 50; //class example
// float ch = 50; //class example

/* notes
float --- decimal 
int --- full number
color --- color
etc.
*/

/* class example
void setup() {
    size(1024, 1024);
}

void draw() {
    ellipse(xloc, yloc, cw, ch);
}

void mousePressed() {
    cw = cw + 1;
}

void keyPressed() {
    ch = ch + 1;
}
*/

// classwork starts here

float xloc = 0;
float yloc = 0;
float coeff = 10;
float cw = 20;
float ch = 20;

void setup() {
    size(1024, 1024);
}

void draw() {
    background(back);
    fill(c1);
    strokeWeight(0);
    ellipse(xloc, yloc, cw, ch);

}

void mousePressed() {
    xloc = xloc + coeff;
}

void keyPressed() {
    yloc = yloc + coeff;    
}