// A simple Particle class

class Particle {
  PVector location;
  PVector movement;
  float lifespan;
  float speed;

  PImage particleImage;
  color tintColor;

  float rotationSpeed, angle;

  Particle(PVector _location, float _angle, float _speed, PImage _particleImage) {
    location = _location.get();
    lifespan = 255.0;

    angle = _angle;
    speed = _speed;

    particleImage = _particleImage;
    tintColor = color(0, random(128, 255), random(50, 128));

    rotationSpeed = random(-5, 5);
    movement = new PVector(0,0);
    
  }

  void run() {
    update();
    display();
  }

  // Method to update location
  void update() {
    angle += rotationSpeed;
    movement.set(speed * cos(radians(angle)), -speed * sin(radians(angle)));
    location.add(movement);
    lifespan--;
    
  }

  // Method to display
  void display() {
    imageMode(CENTER);
    // Changes the color of an image. Lifespan is used to create fading effect
    tint(tintColor);
    // Scale the size based on lifespan
    float particleScale = map(lifespan, 0, 255, 0, 1);

    pushMatrix();
    translate(location.x, location.y);
    // 3D rotate! Just for fun... (be sure to set P3D in size function)
    rotateX(radians(angle));
    rotateY(radians(angle/4));
    rotateZ(radians(angle/2));

    // Scale the image over time
    scale(particleScale);
    image(particleImage, 0, 0);
    popMatrix();

    noTint(); // Reset tint to not interfere with any other image
    imageMode(CORNER); // Reset imageMode to default so that it doesn't accidentally interfere with any other images
  }
  
  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}