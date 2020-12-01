# Check out of screen

## code

when the `xPos` is less than 0 or greater than screen width, the object is out of screen in x direction

when the `yPos` is less than 0 or greater than screen height, the object is out of screen in y direction



## example

when the object position is outside the screen, the object goes other side of screen

``` pde
void checkOutOfScreen(){
    if(xPos < 0>){
        xPos = width;
    }
    if (xPos > width){
        xPos = 0;
    }
    if (yPos < 0){
        yPos = height;
    }
    if (yPos > height){
        yPos = 0;
    }
}
```
