ParticleSystem ps;

void setup() {
  size(600, 800, P3D);
  ps = new ParticleSystem(new PVector(width/2,50));
  cursor(HAND);
}

void draw() {
  background(0);
  if(mousePressed)
    ps.addParticle(mouseX, mouseY);
  ps.run(); 
}