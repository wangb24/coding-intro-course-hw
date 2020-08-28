void setup() {
    size(1024, 1024);
    //size(100, 100);
}

void draw() {
    //create random background color
    background(random(255), random(255), random(255));
    
    int x = 256;
    int y = 384;
    
    //256, 384 L:-50 R:-100
    //create top part
    triangle(x, y, 50, y-30, x3, y3);

    //wait 1 second before next random color
    delay(1000);  
}
