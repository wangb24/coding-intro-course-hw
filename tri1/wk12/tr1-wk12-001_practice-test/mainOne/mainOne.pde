Ball[] balls;
int count = 1000;
sqr sqr = new sqr(300, 300, 100);

void setup() {
	size(600,600);
	
	balls = new Ball[count];
	
	for (int i = 0; i < count; i++) {
		balls[i] = new Ball(random(10,550), 10);
	}
	
	// added
	
}

void draw() {
	background(255);
	
	for (int i = 0; i < count; i++) {
		balls[i].display();
		balls[i].bounce();
	}

	// added
    sqr.display();
}