class Ball{
	
	float x, y, diameter;

	Ball(float _x, float _y, float _diameter){
		x = _x;
		y = _y;
		diameter = _diameter;
	}

	void display(){
		ellipse(x, y, diameter, diameter);
	}
}