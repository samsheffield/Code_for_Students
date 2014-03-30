// Dragging rectangles

float x1 = 100;
float y1 = 200;
float w1 = 100;
float h1 = 100;

void setup() {
	size(600, 600);
}

void draw() {
	background(0);
  // Check to see if the rect is draggable. NOTE: == true is optional
  if(mousePressed == true && rollOver(x1, y1, w1, h1) == true){
    x1 = mouseX;
    y1 = mouseY;
  }
  rectMode(CENTER);
  rect(x1, y1, w1, h1);
}

// Returns either true or false when a mouse rolls over a rect
// rectMode must be set to CENTER

boolean rollOver(float _x, float _y, float _w, float _h){
  if ( (mouseX > _x - _w/2 && mouseX < _x + _w/2) && (mouseY > _y-_h/2 && mouseY < _y + _h/2) ){
    return true;
  }
  else{
    return false;
  }
}