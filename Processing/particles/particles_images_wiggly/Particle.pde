// A simple Particle class

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float speed;

  PImage particleImage;
  color tintColor;

  float rotationSpeed, angle;

  Particle(PVector _location, float _angle, float _speed, PImage _particleImage) {
    location = _location.get();
    angle = _angle;
    speed = _speed;

    particleImage = _particleImage;
    tintColor = color(random(50, 255), random(50, 255), random(50, 255));

    velocity = new PVector(random(-1,1),random(-2,0));
    acceleration = new PVector(0,0);
    lifespan = 255.0;
    
    rotationSpeed = random(-5, 5);
    
  }

  void run() {
    update();
    display();
  }

  // Method to update location
  void update() {
    angle += random(-rotationSpeed, rotationSpeed);
    acceleration.x =  speed * cos(radians(angle));
    acceleration.y =  -speed * sin(radians(angle));
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.0;
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
    rotateZ(radians(angle/2));
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