class ParticleSystem {
  ArrayList<Particle> particles;

  // Particle image pool
  PImage[] particleImages = {loadImage("s.png"), loadImage("k.png"), loadImage("a.png"), loadImage("y.png"), loadImage("l.png"), loadImage("r.png"), loadImage("e.png"), loadImage("n.png")};

  ParticleSystem() {
    particles = new ArrayList<Particle>();
  }

  void addParticle(float _mouseX, float _mouseY) {
    PVector origin = new PVector(_mouseX, _mouseY);

    // Use the difference between the last and current mouse position to determine angle of movement
    PVector pMousePosition = new PVector(pmouseX, pmouseY);
    PVector mousePosition = new PVector(mouseX, mouseY);
    PVector mouseDirection = PVector.sub(mousePosition, pMousePosition);

    // Use the distance between previous and current position to set particle movement speed
    float particleSpeed = PVector.dist(pMousePosition, mousePosition) * .0025;

    // Choose random particle image
    int randomImage = (int)random(particleImages.length);

    // New Particle
    particles.add(new Particle(origin, -degrees(mouseDirection.heading2D()), particleSpeed, particleImages[randomImage]));
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}