# vector

## code

``` pde
PVector <vector_name>;

void setup(){
    <vector_name> = new PVector(<deltaX>, <deltaY>);
}
```

### other useful functions

``` pde
<vector_name>.setMag(<magnitude_of_vector>);

<vector_name>.rotate(<rotate_angle_in_rad>);

<vector_name>.set(<new_deltaX>, <new_deltaY>);

// the x and y component of the vector
// type = float
<vector_name>.x
<vector_name>.y
```

## example

``` pde

PVector position;
PVector direction;

float angularSpeed = 0.01;

void setup() {
    size(600, 600);
    position = new PVector(width/2, height/2);
    direction = new PVector(0, -1);
}

void draw() {
    background(255);
    strokeWeight(5);

    direction.setMag(width/10);

    line(position.x, position.y, position.x+direction.x, position.y+direction.y);
}

void keyPressed() {
    if(keyCode == RIGHT){
        direction.rotate(angularSpeed);
    }else if(keyCode == LEFT){
        direction.rotate(-angularSpeed);
    }
}

```