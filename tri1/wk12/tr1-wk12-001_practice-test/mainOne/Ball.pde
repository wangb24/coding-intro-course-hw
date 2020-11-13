
class Ball{
	float xpos;
	float ypos;
	float directionX = random( - 2,2);
	float directionY = random( - 2,2);
	color c1 = color(random(255), random(255), random(255));
	
	Ball(float x, float y) {
		xpos = x;
		ypos = y;
	}
	
	void display() {
		fill(c1);
		ellipse(xpos, ypos, 10, 10);
		
		xpos += directionX;
		ypos += directionY;
		
		if (xpos > width) {
        	xpos = 0; 
		} else if (xpos < 0) {
	        xpos = width; 
		} else if (ypos > height) {
	        ypos = 0; 
		} else if (ypos < 0) {
	        ypos = height; 
		}
	}

    // added
    void bounce(){
		float x = abs(directionX) + 0.5;
		float y = abs(directionY) + 0.5;
		
		if (
			((xpos+5 >= sqr.sqXL &&
			xpos+5 <= sqr.sqXL + x) ||
			(xpos-5 <= sqr.sqXR &&
			xpos-5 >= sqr.sqXR - x)) &&
			(ypos-5 >= sqr.sqYH &&
			ypos+5 <= sqr.sqYL)
		){
			directionX = -directionX;
		}
		
		if(
			(
				(
					ypos+5 >= sqr.sqYH &&
					ypos+5 <= sqr.sqYH + y
				) || (
					ypos-5 <= sqr.sqYL &&
					ypos-5 >= sqr.sqYL - y
				)
			) && (
				xpos+5 >= sqr.sqXL &&
				xpos-5 <= sqr.sqXR
			)
		){
			directionY = -directionY;
		}

		// if(
		// 	xpos+5 > sqr.sqXL &&
        //     xpos-5 < sqr.sqXR &&
		// 	ypos+5 > sqr.sqYH &&
        //     ypos-5 < sqr.sqYL
		// ){
		// 	if(
		// 		xpos+5 > sqr.sqXL &&
		// 		xpos-5 < sqr.sqXR 

		// 	){
		// 		directionX = -directionX;
		// 	}
		// 	if(
		// 		ypos+5 > sqr.sqYH &&
		// 		ypos-5 < sqr.sqYL
		// 	){
		// 		directionY = -directionY;
		// 	}
		// }
    }
}