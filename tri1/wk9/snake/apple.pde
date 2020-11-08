class apple{
    
    apple(int appleXI, int appleYI){
        appleX = appleXI;
        appleY = appleYI;
    }
    
    void show(){
        noStroke();
        fill(cApple);
        ellipse(xloc[appleX], yloc[appleY], appleWidth, appleWidth);
    }

    void newApple(){
        snakeLength += 1;
        appleX = int(random(0, rows));
        appleY = int(random(0, rows));
    }
}