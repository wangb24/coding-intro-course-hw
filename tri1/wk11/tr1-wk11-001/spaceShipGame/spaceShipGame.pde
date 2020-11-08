/*
This code is a homework for Intro to Computer Science Class at Rabun Gap-Nacoochee School
Created by https://github.com/wangb24
*//*
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. For more information of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
*/

// config

// colors (r, g, b)
color background_color = color(0,0,0);
color ship_color = color(255,255,255);
color bullet_color = color(255,255,255);
color obstacle_color = color(255,185,150);

// ship
float height_of_triangle = 50;
float width_of_triangle = 30;
float acceleration_of_the_ship = 0.05;
float maximum_speed_of_the_ship = 10;
boolean moving_direction_turns_with_ship = true;

// bullet
int max_number_of_bullets = 5;
float size_of_bullet = 5;
float speed_of_bullet = 7;

// obstacles
int max_number_of_obstacles = 5;
float constant_size_of_obstacles = 50; //only works if 'random_size_of_obstacles' set to false
boolean random_size_of_obstacles = true;
    float min_size_of_obs = 30;
    float max_size_of_obs = 70;
float obstacles_orbit_radius = 70; // this does not work if "obstacles_random_orbit" is set to false
boolean obstacles_random_orbit = true;
    float obstacles_orbit_min_radius = 50;
    float obstacles_orbit_max_radius = 130;
boolean obstacles_are_moving = true;
boolean obstacles_random_speed = true;
    float obstacles_min_speed = QUARTER_PI; // in rad/sec
    float obstacles_max_speed = 2 * PI; // in rad/sec
    float obstacles_constant_speed = PI; // in rad/sec; only works when 'obstacles_random_speed' is set to false
boolean obstacles_random_direction = true;




// code starts here 
// code starts here
// code starts here
// screen size
float w = 800;
float h = 800;

// colors
color colBack = background_color;
color colTri = ship_color;
color colBu = bullet_color;
color colObs = obstacle_color;

// triangle
float triH = height_of_triangle;
float triW = width_of_triangle;
float triLeg = sqrt(sq(triH)+sq(triW/2));
float triVertexAngle = 2 * acos(triH/triLeg);

// uncomment following lines to use vertex angle instead of triangle width
// triVertexAngle = PI/6;
// triLeg = triH / cos(triVertexAngle/2);


// PVector rectPos;
PVector triPos;
PVector triIndex;
PVector triAngleL;
PVector triAngleR;

// motions
PVector triVel;
PVector triAcc;
float triAccValue = acceleration_of_the_ship;
float maxVel = maximum_speed_of_the_ship;
float angularSpeed = 0.013;
boolean shipTurnL = false;
boolean shipTurnR = false;
boolean shipMoveF = false;
boolean shipMoveB = false;
boolean shipMakeBullet = false;

// class: bullet
int maxBulletCount = max_number_of_bullets;
bullet bullet[] = new bullet[maxBulletCount];

// class: obstacles
int maxObs = max_number_of_obstacles;
obstacles[] obs = new obstacles[maxObs];

// game rule
int score = 0;



void setup() {
    size(800, 800);
    frameRate(90);
    noStroke();
    smooth();
    
    // rectPos = new PVector(3*w/4, h/2);

    // triangle
    triPos = new PVector(0.5 * w, 0.5 * h);
    
    triIndex = new PVector(0,-1);
    triIndex.setMag(0.5 * triH);
    
    triAngleL = new PVector(0,1);
    triAngleL.setMag(triLeg);
    triAngleL.rotate(0.5 * triVertexAngle);

    triAngleR = new PVector(0,1);
    triAngleR.setMag(triLeg);
    triAngleR.rotate(-0.5 * triVertexAngle);
    
    // motion
    triVel = new PVector(0,-1);
    triVel.setMag(0);
    // triVel.limit(maxVel); // this does not work Index:001
    
    triAcc = new PVector(0,-1);
    triAcc.setMag(triAccValue);
    
    // class: bullet
    for (int i = 0; i < maxBulletCount; i+=1){
        bullet[i] = new bullet(i);
    }

    // class: obstacles
    for (int j = 0; j < maxObs; j+=1){
        obs[j] = new obstacles(j);
    }
}

void draw() {
    triVel.limit(maxVel);
    updateShip();
    // background
    background(colBack);
    strokeWeight(4);
    
    // triangle
    fill(colTri);
    triangle(triPos.x + triIndex.x, triPos.y + triIndex.y, triPos.x + triIndex.x + triAngleL.x, triPos.y + triIndex.y + triAngleL.y, triPos.x + triIndex.x + triAngleR.x, triPos.y + triIndex.y + triAngleR.y);
    
    // motion
    triPos.add(triVel);
    checkOutOfScreen();

    // class: bullet
    for (int b = 0; b < maxBulletCount; b+=1){
        bullet[b].show();
    }

    // class: obstacles
    for (int o = 0; o < maxObs; o+=1){
        obs[o].show();
    }
    collisionDetection();
}

void keyPressed() {
    // triangle
    if(key == 'd' || keyCode == RIGHT){
        shipTurnR = true;
    }else if(key == 'a' || keyCode == LEFT){
        shipTurnL = true;
    }
    if (key =='w' || keyCode == UP){
        shipMoveF = true;
	}else if (key == 's' || keyCode == DOWN){
	    shipMoveB = true;
	}
    if (key == 'q' || key == ' ' || key == 'e'){
        shipMakeBullet = true;
    }
	if (key == 'r' || key == 'f' || keyCode == SHIFT){
	    triVel.setMag(0);
	}
}
void keyReleased(){
    if(key == 'a' || keyCode == LEFT){
        shipTurnL = false;
    }
    if(key=='d' || keyCode == RIGHT){
        shipTurnR = false;
    }
    if(key == 'w' || keyCode == UP){
        shipMoveF = false;
    }
    if(key == 's' || keyCode == DOWN){
        shipMoveB = false;
    }
    if(key == 'q' || key == ' ' || key == 'e'){
        shipMakeBullet = false;
    }
}

private void updateShip(){
    if(shipTurnL){
        triIndex.rotate(-angularSpeed);
        triAngleL.rotate(-angularSpeed);
        triAngleR.rotate(-angularSpeed);
        triAcc.rotate(- angularSpeed);
        if(moving_direction_turns_with_ship){
            triVel.rotate(- angularSpeed);
        }
    }else if(shipTurnR){
        triIndex.rotate(angularSpeed);
        triAngleL.rotate(angularSpeed);
        triAngleR.rotate(angularSpeed);
        triAcc.rotate(angularSpeed);
        if(moving_direction_turns_with_ship){
            triVel.rotate(angularSpeed);
        }        
    }
    if(shipMoveF){
	    triVel.add(triAcc);
    }else if(shipMoveB){
	    triVel.sub(triAcc);
    }
    if(shipMakeBullet){
        newBullet();
        shipMakeBullet = false;
    }
}

private void checkOutOfScreen(){
    if (triPos.x >= w) {
        triPos.x = 1;
    }else if (triPos.x <= 0){
        triPos.x = w-1;
    }
    if (triPos.y >= h) {
        triPos.y = 1;
    }else if (triPos.y <= 0){
        triPos.y = h-1;
    }
}

private void newBullet(){
    for (int i = 0; i < maxBulletCount; i++){
        if(!bullet[i].buOut){
            bullet[i].out();
            i = maxBulletCount;
        }
    }
}

void collisionDetection(){
    for(int i = 0; i < maxObs; i++){
        for (int j = 0; j < maxBulletCount; j++){
            if(
                dist(obs[i].obsX, obs[i].obsY, bullet[j].buPos.x, bullet[j].buPos.y) < (0.5* obs[i].obsSize + 0.5* bullet[j].buSize)
            ){
                bullet[j].buOut = false;
                obs[i].out = false;
                score +=1;
                println(score);
            }
        }
    }
}