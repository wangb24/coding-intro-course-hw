class cir{
	float xPos;
	float yPos;
	float sqW;
    color sqC = color(random(188,255), random(188,255), random(188,255));

	cir(float xPosInput, float yPosInput, float sqWInput) {
	    xPos = xPosInput;
	    yPos = yPosInput;
	    sqW = sqWInput;
	}
	
	void display() {
        fill(sqC);

        if(moveL){
			xPos -= cirVel;
		}
		if(moveR){
			xPos += cirVel;
		}
		if(moveU){
			yPos -= cirVel;
		}
		if(moveD){
			yPos += cirVel;
		}

		if (xPos > width) {
			xPos = 0; 
		} else if (xPos < 0) {
			xPos = width; 
		} else if (yPos > height) {
			yPos = 0; 
		} else if (yPos < 0) {
			yPos = height; 
		}
		

	    ellipse(xPos, yPos, sqW, sqW);
	}

	void increase(){
		sqW += incVel;
	}
}