
int count = 50;

final color c1 = color(random(188, 255), random(100, 188), random(100, 188));
final color c2 = color(random(100, 188), random(188, 255), random(199, 188));
final color c3 = color(random(100, 188), random(100, 188), random(188, 255));
final color c4 = color(random(190, 255), random(190, 255), random(190, 255));
final color cback = color(random(88), random(88), random(88));

ball[] b = new ball[count];

void setup() {
    size(800, 800);
    for(int i = 0; i < count; i++){
        b[i] = new ball(random(width), random(height), color(255), 30);
    }
}

void draw() {
    background(cback);
    for(int i = 0; i < count; i++){
        b[i].show();
        b[i].update();
    }
}
