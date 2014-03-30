float x1 = 300;
float y1 = 300;
float r1 = 10;

void setup() {
	size(600, 600);
}

void draw() {
  background(0);

  // Check to see if circle is draggable. NOTE: == true is optional
	if(mousePressed == true && rollOver(x1, y1, r1) == true){
    x1 = mouseX;
    y1 = mouseY;
  }
  ellipse(x1, y1, r1*2, r1*2);
}

// // Returns either true or false when a mouse rolls over a circle
boolean rollOver(float _buttonX, float _buttonY, float _buttonRadius){
  if(dist(mouseX, mouseY, _buttonX, _buttonY) < _buttonRadius){
    return true;
  }
  else{
    return false;
  }
}

