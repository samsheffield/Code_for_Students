class Arrow{
	float x, y;
  PImage arrowImage;
  PVector targetPosition;

	Arrow(float _x, float _y){
    x = _x;
    y = _y;
    arrowImage = loadImage("arrow.png");
    targetPosition = new PVector(0, 0);
	}

  // Give the Arrow some point to face (float)
  void face(float _x, float _y){
    targetPosition.set(_x, _y);
  }

  // Give the Arrow some point to face (PVector)
  void face(PVector _targetPosition){
    targetPosition.set(_targetPosition);
  }

  void draw() {
    PVector v1 = new PVector(x, y);    // Rotation/ positioning point
    PVector v3 = PVector.sub(targetPosition, v1);   // Store the difference between the the v1 and targetPosition points

    pushMatrix();
    translate(v1.x, v1.y);  // Position the image with v1's x and y properties
    rotate(v3.heading());   // Calculating the angle of rotation (in radians) and rotate
    imageMode(CENTER);      // Rotate around center
    image(arrowImage, 0, 0);
    popMatrix();
    imageMode(CENTER);      // Reset imageMode so that it doesn't conflict with other images
  }

}