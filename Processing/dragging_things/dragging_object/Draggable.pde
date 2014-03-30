class Draggable{

  float x, y, w, h;
  PImage img;
  boolean selected;

  Draggable(String _imageFile, float _x, float _y, float _w, float _h){
    img = loadImage(_imageFile);
    x = _x;
    y = _y;
    w = _w; // w and h could also be set after loading an image by using img.width and img.height
    h = _h;
  }

  void update(){
    // Only move if selected
    if(selected == true){
      x = mouseX;
      y = mouseY;
    }
  }

  void draw(){
    imageMode(CENTER);
    image(img, x, y);
    imageMode(CORNER); // Reset positioning so that it doesn't accidentally affect anything else
  }

  // Returns either true or false when a mouse rolls over an object
  // imageMode must be set to CENTER
  boolean rollOver(){
    if ( (mouseX > x - w/2 && mouseX < x + w/2) && (mouseY > y - h/2 && mouseY < y + h/2)){
      return true;
    }
    else{
      return false;
    }
  }
}