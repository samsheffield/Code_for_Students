// Dragging multiple objects

Draggable d1, d2;
boolean alreadyDragging; // Will only allow one thing to be dragged at a time

void setup() {
	size(600, 600);
  d1 = new Draggable("img.png", 200, height/2, 100, 100);
  d2 = new Draggable("img2.png", 400, height/2, 100, 100);
}

void draw() {
	background(0);

  // If something is not already being dragged...
  if(alreadyDragging == false && mousePressed == true){
    // Choose the object to drag
    // Set the alreadyDragging flag to true so that no additional objects will be dragged
    if(d1.rollOver() == true){
      d1.selected = true;
      alreadyDragging = true;
    }
    else if (d2.rollOver() == true){
      d2.selected = true;
      alreadyDragging = true;
    }
  }
  d1.update();
  d2.update();
  d1.draw(); 
  d2.draw();  
}

// Releasing the mouse makes it possible to choose a new object to drag
// Use this to reset any selected object and also the alreadyDragging flag. 
void mouseReleased(){
  alreadyDragging = false;
  d1.selected = false;
  d2.selected = false;
}
