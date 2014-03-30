PImage arrow;

void setup() {
  size(400, 400);
  arrow = loadImage("arrow.png");
}

void draw() {
  background(255);
  PVector v1 = new PVector(width/2, height/2);    // Rotation/ positioning point
  PVector v2 = new PVector(mouseX, mouseY);       // Point to face toward
  PVector v3 = PVector.sub(v2, v1);               // Store the difference between the points

  pushMatrix();
  translate(v1.x, v1.y);  // Position the image with v1's x and y properties
  rotate(v3.heading());   // Calculating the angle of rotation (in radians) and rotate
  imageMode(CENTER);      // Rotate around center
  image(arrow, 0, 0);
  popMatrix();
}
