class ball{
    float xPos; 
    float yPos;
    color col;
    float dia;

    float speedX = random(0.3, 3);
    float speedY = random(0.3, 3);
    
    int[] directions = {1, -1};
    int indexX = int(random(directions.length));
    int directionX = directions[indexX];
    int indexY = int(random(directions.length));
    int directionY = directions[indexY];

    ball(float xPosI, float yPosI, color colI, float diaI){
        xPos = xPosI;
        yPos = yPosI;
        col = colI;
        dia = diaI;
    }

    void show(){
        noStroke();
        smooth();
        fill(col);
        ellipse(xPos, yPos, dia, dia);
    }

    void update(){
        if(yPos < 0){
            directionY = -directionY;
            col = c1;
        }
        if(xPos > width){
            directionX = -directionX; 
            col = c2;
        }
        if(yPos > height){
            directionY = -directionY;
            col = c3;
        }
        if(xPos < 0){
            directionX = -directionX;
            col = c4;
        }
        xPos += speedX*directionX;
        yPos += speedY*directionY;
    }
}