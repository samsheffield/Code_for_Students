class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  // Particle image pool
  PImage[] particleImages = {loadImage("s.png"), loadImage("k.png"), loadImage("a.png"), loadImage("y.png"), loadImage("l.png"), loadImage("r.png"), loadImage("e.png"), loadImage("n.png")};

  ParticleSystem(PVector location) {
    origin = location.get();
    particles = new ArrayList<Particle>();
  }

  void addParticle(float _mouseX, float _mouseY) {
    origin.x = _mouseX;
    origin.y = _mouseY;
    int randomImage = (int)random(particleImages.length);
    particles.add(new Particle(origin, particleImages[randomImage]));
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