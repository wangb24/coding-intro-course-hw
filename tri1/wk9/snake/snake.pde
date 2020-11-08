float wh = 800;

int rows = 15;
int framerate = 10;
boolean ifWallDie = false;
int initSnakeLength = 3;

float xloc[] = new float[rows];
float yloc[] = new float[rows];


// int status = 0; 

// colors
color cback = color(15);
color csnake = color(212);
color cApple = color(255, 0, 0);

// snake
int maxLength = rows * rows;
segment snake[] = new segment[maxLength]; 
float snakeWidth = (wh/rows);
int snakeLength = initSnakeLength;
boolean up = false;
boolean down = false;
boolean left = false;
boolean right = false;

// apple
apple food = new apple(rows -5, rows -5);
float appleWidth = snakeWidth/2;
int appleX;
int appleY;

// game
int score;
boolean alive = true;
boolean checkIfFrameUsed = false;
boolean initPress = true;
int initFrameCount = 999999999;

void setup() {
    frameRate(framerate);
    rectMode(CENTER);
    noStroke();
    smooth();
    size(800, 800);
    for (int j = 0; j < rows; j++){
        xloc[j] = j*(wh/rows) + (wh/rows)/2;
        yloc[j] = j*(wh/rows) + (wh/rows)/2;
    }
    for (int i = 0; i < maxLength; i++){
        if(i < initSnakeLength){
            snake[i] = new segment(5, 5, true);
        }else{
            snake[i]= new segment(5, 5, false);
        }
    }

}

void draw() {
    if(alive){
        score = snakeLength - initSnakeLength;
        // testKeyDown();
        background(cback);
        // don't move things above this
        food.show();
        for(int i = 0; i < snakeLength; i++){
            snake[i].ifShowSnake(true);
            snake[i].show();
        }
        checkEat();
        checkOutOfBound();
        moveSnake();
        checkCollision();
    }else if(!alive){
        println("you died: " + score);
    }

    checkIfFrameUsed = false;

    // debug below
    // println("frameRate: "+frameRate);
    // println(checkIfFrameUsed);
}

void keyPressed() {
    if(!checkIfFrameUsed){
        if (key == 'w' && !down){
            up = true;
            down = false;
            left = false;
            right = false;
            checkIfFrameUsed = true;
        }else if (key == 's' && !up){
            down = true;
            up = false;
            left = false;
            right = false;
            checkIfFrameUsed = true;
        }else if (key == 'a' && !right){
            left = true;
            down = false;
            up = false;
            right = false;
            checkIfFrameUsed = true;
        }else if (key == 'd' && !left){
            right = true;
            down = false;
            left = false;
            up = false;
            checkIfFrameUsed = true;
        }
    }
    if(initPress){
        if(
            key == 'w' ||
            key == 'a' ||
            key == 's' ||
            key == 'd'
        ){
            initFrameCount = frameCount;
            initPress = false;
        }
    }

    // debug
    if (key == 'v'){
        snakeLength += 1;
    }

}
