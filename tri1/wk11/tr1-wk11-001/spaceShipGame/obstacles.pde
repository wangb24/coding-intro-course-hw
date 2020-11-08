class obstacles{

    boolean out = false;
    float obsSize = constant_size_of_obstacles;
    
    boolean obsRandomSize = random_size_of_obstacles;
        float obsSizeMin = min_size_of_obs;
        float obsSizeMax = max_size_of_obs;
    
    boolean obsMove = obstacles_are_moving;
    boolean obsRandSpeed = obstacles_random_speed;
        float obsMinSpeed = obstacles_min_speed/frameRate;
        float obsMaxSpeed = obstacles_max_speed/frameRate;

    boolean obsRandDir = obstacles_random_direction;

    boolean obsOrbit = obstacles_random_orbit;
        float obsOrbitMin = obstacles_orbit_min_radius;
        float obsOrbitMax = obstacles_orbit_max_radius;
        float obsMoveR = obstacles_orbit_radius;
    
    boolean realRandomOrbit = true;

    float obsAngularSpeed = obstacles_constant_speed/frameRate;
    int obsDirection = 1;

    float obsX;
    float obsY;

    int obsIndex;

    PVector obsPos = new PVector(0, -1);
    PVector obsPosIndex = new PVector(0, -1);

    obstacles(int obsIndexI){
        obsIndex = obsIndexI;
    }

    private void newObs(){
        if (!out){
            if (obsOrbit){
                obsOrbitMin = obsOrbitMax = obsMoveR;
            }
            obsPos.set(random(0, w), random(0,h));
            obsPosIndex.set(0,-1);
            obsPosIndex.setMag(random(obsOrbitMin,obsOrbitMax));
            if(obsRandomSize){
                obsSize = random(obsSizeMin, obsSizeMax);
            }
            if(obsRandSpeed){
                obsAngularSpeed = random(obsMinSpeed, obsMaxSpeed);
            }
            if(obsRandDir){
                float i = random(-1, 1);
                if (i<0){
                    obsDirection = -1;
                }else if (i>=0){
                    obsDirection = 1;
                }
            }
            if (!obsMove){
                obsPosIndex.set(0,0);
            }
            out = true;
        }
    }

    void show(){  // display
        newObs();
        if(out){
            if(obsRandSpeed && obsOrbit && realRandomOrbit && frameCount%(1*90) == 0){obsAngularSpeed = random(-obsMaxSpeed, obsMaxSpeed);}
            if(obsMove){
                obsPosIndex.rotate(obsAngularSpeed * obsDirection);
            }
            fill(colObs);
            obsX = obsPos.x + obsPosIndex.x;
            obsY = obsPos.y + obsPosIndex.y;
            ellipse(obsX, obsY, obsSize, obsSize);
        }
    }
}