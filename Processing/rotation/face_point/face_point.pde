PImage arrow;
PVector targetPosition = new PVector(50, 0); // Used to position the target
float targetSpeed = 2; // Used to set speed of y movement

void setup() {
  size(400, 400);
  arrow = loadImage("arrow.png");
  noStroke();
  fill(#220066);
}

void draw() {
  background(255);
  PVector v1 = new PVector(width/2, height/2);    // Rotation/ positioning point
  PVector v3 = PVector.sub(targetPosition, v1);   // Store the difference between the the v1 and targetPosition points

  pushMatrix();
  translate(v1.x, v1.y);  // Position the image with v1's x and y properties
  rotate(v3.heading());   // Calculating the angle of rotation (in radians) and rotate
  imageMode(CENTER);      // Rotate around center
  image(arrow, 0, 0);
  popMatrix();

  moveTarget();  // Move the target
  ellipse(targetPosition.x, targetPosition.y, 20, 20); // target is just an ellipse
}

// Move the target down until it reaches the bottom of the screen
// Then, move it back to the top and choose a random x position
void moveTarget(){
  if(targetPosition.y < height){
    targetPosition.y += targetSpeed;
  }
  else{
    targetPosition.x = random(50, width-50);
    targetPosition.y = 0;
  }
}