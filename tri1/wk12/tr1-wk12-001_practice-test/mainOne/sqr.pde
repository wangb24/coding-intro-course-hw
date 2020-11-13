class sqr{
	float xPos;
	float yPos;
	float sqW;
    color sqC = color(random(188,255), random(188,255), random(188,255));

    float sqXL;
    float sqXR;
    float sqYH;
    float sqYL;


	sqr(float xPosInput, float yPosInput, float sqWInput) {
	    xPos = xPosInput;
	    yPos = yPosInput;
	    sqW = sqWInput;
	}
	
	void display() {
	    rectMode(CENTER);
        fill(sqC);

        sqXL = xPos - sqW/2;
        sqXR = xPos + sqW/2;
        sqYH = yPos - sqW/2;
        sqYL = yPos + sqW/2;

	    rect(xPos, yPos, sqW, sqW);
	}
}