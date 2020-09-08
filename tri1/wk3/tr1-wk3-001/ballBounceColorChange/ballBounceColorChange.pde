
float x = 1024;
float y = 1024;
float c = 256;

float bx = x/2;
float by = y/2;
float status = 0;

color back1 = color(random(255), random(255), random(255));
color c1 = color(random(255), random(255), random(255));
color c2 = color(random(255), random(255), random(255));
color c3 = color(random(255), random(255), random(255));

float r1;
float b1;

void setup() {
    size(1024, 1024);
}

void draw() {
    r1 = bx*(255/x);
    b1 = (x-bx)*(255/x);
    background(r1, 0, b1);
    fill(c1);
    ellipse(bx, by, 128, 128);
    if(status == 0){
        bx = bx + 1;
    }else if(status == 1){
        bx = bx - 1;
    }
    if(bx <= 64){
        status = 0;
    }else if(bx >= y-64){
        status = 1;
    }else{
    }
}
