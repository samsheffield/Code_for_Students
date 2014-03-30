// Dragging images

PImage img;

float x1 = 100;
float y1 = 200;

void setup() {
	size(600, 600);
  img = loadImage("img.png");
}

void draw() {
	background(0);
  // Check to see if the image is draggable. NOTE: == true is optional
  if(mousePressed == true && rollOver(x1, y1, img.width, img.height) == true){
    x1 = mouseX;
    y1 = mouseY;
  }
  imageMode(CENTER);
  image(img, x1, y1);
}

// Returns either true or false when a mouse rolls over an image
// imageMode must be set to CENTER

boolean rollOver(float _x, float _y, float _w, float _h){
  if ( (mouseX > _x - _w/2 && mouseX < _x + _w/2) && (mouseY > _y-_h/2 && mouseY < _y + _h/2) ){
    return true;
  }
  else{
    return false;
  }
}