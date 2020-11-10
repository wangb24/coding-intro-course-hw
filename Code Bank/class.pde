// in the main code
<object_name> <instance_name>;
   // in setup
   <instance_name> = new <object_name>(<inputs>);
   
   // in draw
   <instance_name>.<function_name>(<input>);
   <instance_name>.<variables> = ##;


// class here
class <object_name>{
	// this is place to declare all variables
	<variables>;
	float xPos;
	float yPos;
	color col;
	
	// this is place to build constructor for the object
	<object_name>(float inputX, float inputY, color inputCol) {
	    // set variables to the input
	    xPos = inputX;
	    yPos = inputY;
	    col = inputCol;
	}
	
	// this is place to put functions or methods for the object
	/*
	<return_type> <function_name>(<input>){
	    <function_here>
	    return();
	}
	*/
	void <function_name>(<input>) {
	    <function_here>
	}
}

// examples

/** Example

ball instance;

void setup(){
    instance = new ball(50, 50, 20, color(123, 188, 193));
}

void draw(){
    instance.display();
}

class ball{
    float xPos;
    float yPos;
    float size;
    color col;

    ball(float inputXPos, float inputYPos, float inputSize, color inputCol){
        xPos = inputXPos;
        yPos = inputYPos;
        size = inputSize;
        col = inputCol;
    }

    void display(){
        fill(col);
        ellipse(xPos, yPos, size, size);
    }
}

*/