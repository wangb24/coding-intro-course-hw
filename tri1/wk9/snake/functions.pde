private boolean pass = false;

void moveSnake(){
    if (!pass){
        for (int j = 0; j < maxLength; ++j) {
            snake[j].updateSnake();
        }
    }else if(pass){
        for (int k = 0; k < maxLength; k++){
            snake[k].updateSnake();
        }
        pass = false;
    }

    snake[0].move();
    for (int i = 1; i < maxLength; i++){
        snake[i].xPos = snake[i - 1].xPosOld;
        snake[i].yPos = snake[i - 1].yPosOld;
    }
}

void testKeyDown(){
    if(keyPressed){
        if (key == 'w' && !down){
            up = true;
            down = false;
            left = false;
            right = false;
        }else if (key == 's' && !up){
            down = true;
            up = false;
            left = false;
            right = false;
        }else if (key == 'a' && !right){
            left = true;
            down = false;
            up = false;
            right = false;
        }else if (key == 'd' && !left){
            right = true;
            down = false;
            left = false;
            up = false;
        }
    }
}

void checkEat(){
    if(snake[0].xPos == appleX && snake[0].yPos == appleY){
        food.newApple();
    }
}

void checkCollision(){
    if(initFrameCount + initSnakeLength - frameCount < 0){
        for(int i = 1; i < snakeLength; i++){
            if(
                snake[0].xPos == snake[i].xPos &&
                snake[0].yPos == snake[i].yPos
            ){
                alive = false;
            }
        }
    }
}

void checkOutOfBound(){
    if (ifWallDie){
        if (down && snake[0].yPos >= rows -1) {
            alive = false;
        }
        if (up && snake[0].yPos <= 0 ) {
            alive = false;
        }
        if (left && snake[0].xPos <= 0) {
            alive = false;
        }
        if (right && snake[0].xPos >= rows -1){
            alive = false;
        }
    }
    if(!ifWallDie){
        if (down && snake[0].yPos == rows -1) {
            snake[0].newLoc(snake[0].xPos, 0);
            snake[0].yPosOld = rows - 1;
            pass = true;
        }
        if (up && snake[0].yPos == 0 ) {
            snake[0].newLoc(snake[0].xPos, rows - 1);
            snake[0].yPosOld = 0;
            pass = true;
        }
        if (left && snake[0].xPos == 0) {
            snake[0].newLoc(rows - 1, snake[0].yPos);
            snake[0].xPosOld = 0;
            pass = true;
        }
        if (right && snake[0].xPos == rows -1){
            snake[0].newLoc(0, snake[0].yPos);
            snake[0].xPosOld = rows - 1;
            pass = true;
        }
    }
}