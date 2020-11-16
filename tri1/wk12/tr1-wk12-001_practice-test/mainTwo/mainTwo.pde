Ball[] balls;
int count = 1000;

int frate = 90;

cir cir = new cir(300, 300, 30);
float cirVel = 5;
float incVel = 0.27;
boolean moveL = false;
boolean moveR = false;
boolean moveU = false;
boolean moveD = false;

boolean win = false;
boolean check = true;
float time;
int score = 0;

void setup() {
	frameRate(frate);
	size(600,600);
	noStroke();
	smooth();
	
	balls = new Ball[count];
	
	for (int i = 0; i < count; i++) {
		balls[i] = new Ball(random(10,550), 10);
	}
		
}

void draw() {
	background(255);
	
    fill(0);
    textAlign(LEFT);
    text(score, 10, 30);
    
	for (int i = 0; i < count; i++) {
		balls[i].display();
		balls[i].check();
	}

	// added
    cir.display();

	for(int j = 0; j < count; j++){
		win = true; 
		if (balls[j].show){
			win = false;
			break;
		}
	}

	if(win){
		if(check){
			time = frameCount/float(frate);
			check = false;
		}
        textAlign(CENTER);
        fill(0);
        text(time+" seconds", width/2, height/2);
		println(time);
		
	}
}

void keyPressed() {
	if (key == 'w'){
		moveU = true;
	}else if (key == 's'){
		moveD = true;
	}
	if (key == 'a'){
		moveL = true;
	}else if(key == 'd'){
		moveR = true;
	}
}

void keyReleased() {
	if (key == 'w'){
		moveU = false;
	}
    if (key == 's'){
		moveD = false;
	}
	if (key == 'a'){
		moveL = false;
	}
    if(key == 'd'){
		moveR = false;
	}
}
