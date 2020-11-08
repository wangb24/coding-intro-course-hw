class bullet{
    //config
    float buSize = size_of_bullet;
    float buSpeed = max_number_of_bullets;
    int buIndex; 

    boolean buOut = false;
    boolean buInit = true;
    
    PVector buPos = new PVector(triPos.x, triPos.y);
    PVector buVel = new PVector(0, -1);

    bullet(int buIndexI){
        buIndex = buIndexI;
    }

    private void init(){
        if (buInit){
            buPos.set(triPos.x, triPos.y);
            buVel.set(triIndex.x, triIndex.y);
            buVel.setMag(buSpeed);
            buInit = false;
        }
    }

    void show(){  // display
        if(buOut){
            init();
            buOutOfScreen();
            fill(colBu);
            buPos.add(buVel);
            ellipse(buPos.x, buPos.y, buSize, buSize);
        }else if(!buOut){
            buPos.set(-999, -999);
            buInit = true;
        }
    }

    void buOutOfScreen(){
        if(buPos.x > w){
            buOut = false;
        }else if (buPos.x < 0){
            buOut = false;
        }
        if (buPos.y > h){
            buOut = false;
        }else if(buPos.y < 0){
            buOut = false;
        }
    }

    void out(){  // control
        if(!buOut){
            buOut = true;
        }
    }

    void test(){
        println("bullet class works");
    }
}
