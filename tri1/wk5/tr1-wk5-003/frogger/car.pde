public class car{
    private float x, y, speed;
    private color cr;

    public float carWidth = 70;
    public float carHeight = 30;

    car(float xi, float yi, float speedi, color cri){
        x = xi;
        y = yi;
        speed = speedi;
        cr = cri;
    }

    public void show(){
        rectMode(CENTER);
        fill(cr);
        rect(x, y, carWidth, carHeight);
    }

    public void move(){
        x = x - speed;

    }

    public void reset(){
        if (x < -35){
            x = width + carWidth/2;
        }
    }
}
