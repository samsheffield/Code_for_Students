class Ball{
	
	float x, y, diameter;
	boolean finished; // set to true to signal for removal from ArrayList

	Ball(float _x, float _y, float _diameter){
		x = _x;
		y = _y;
		diameter = _diameter;
	}

	// basic dropping movement which results in finished being set to true once past the set point (height-100)
	void update(){
		if(y < height-100){
			y += 5;
		}
		else{
			finished = true;
		}
	}

	void draw(){
		fill(0);
		ellipse(x, y, diameter, diameter);
	}
}