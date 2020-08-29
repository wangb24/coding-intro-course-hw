
void setup() {
    size(1024, 1024);
    //size(100, 100);
}

void draw() {
    //make random color
    color c = color(random(255), random(255), random(255));
    background(c);
    fill(c);

    //stroke    
    strokeWeight(6);
    stroke(0, 0, 0, 100);

    //drawing
    line(335, 245, 195, 440);
    quad(335, 245, 470, 450, 785, 445, 645, 240);
    line(345, 265, 236, 415);
    line(236, 415, 236, 670);
    line(195, 440, 236, 440);
    line(236, 670, 440, 700);
    line(440, 700, 440, 410);
    line(440, 700, 735, 680);
    line(735, 680, 735, 445);


    //wait 2 second before next random color
    delay(2000);  
}




























































































































void mousePressed() {
    PFont font;
    font = createFont("Monospaced.bold", 52);
    fill(0, 0, 0, 255);
    textFont(font,52);
    text("Hello World!", 128, 128);
}
