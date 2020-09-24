class ball{
    float xpos ;
    float ypos;
    float diam;
    color c1;
    float speed = 10;

    float[] dirOptions = {1, -1};
    int index = int(random(dirOptions.length));
    float direction = dirOptions[index];

    ball(float tempXpos, float tempYpos, float tempDiam, color tempC1){
        
        xpos = tempXpos;
        ypos = tempYpos;
        diam = tempDiam;
        c1 = tempC1;

    }

    void display(){
        fill(c1);
        ellipse(xpos, ypos, diam, diam);

    }

    void update(){
        if (xpos > width || xpos < 0){
            direction = direction * -1;
        }

        xpos = xpos + speed * direction;
    }

}
