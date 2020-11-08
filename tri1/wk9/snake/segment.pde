class segment{
    int xPos;
    int yPos;
    int xPosOld;
    int yPosOld;
    // int speed;
    boolean ifShow; 

    segment(int xI, int yI, boolean showI) {
        xPos = xI;
        yPos = yI;
        ifShow = showI;
    }

    void show(){
        if(ifShow){
            rectMode(CENTER);
            noStroke();
            smooth();
            fill(csnake);
            ellipse(xloc[xPos], yloc[yPos], snakeWidth, snakeWidth);
        }else{
            
        }
    }

    void updateSnake(){
        xPosOld = xPos;
        yPosOld = yPos;
    }

    void move(){
        if(down && yPos < rows-1){
            yPos += 1;
        // }else if (down && yPos >= rows -1) {
        //     alive = false;
        }

        if(up && yPos > 0){
            yPos -= 1;
        // }else if (up && yPos <= 0 ) {
        //     alive = false;
        }

        if(left && xPos > 0){
            xPos -= 1;
        // }else if (left && xPos <= 0){
        //     alive = false;
        }

        if(right && xPos < rows-1){
            xPos += 1;
        // }else if (right && xPos >= rows -1){
        //     alive = false;
        }
    }

    void ifShowSnake(boolean showI){
        ifShow = showI;
    }

    void newLoc(int newXLoc, int newYLoc){
        xPos = newXLoc;
        yPos = newYLoc;
    }
}
