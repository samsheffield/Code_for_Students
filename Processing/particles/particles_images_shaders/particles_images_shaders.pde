ParticleSystem ps;
PShader blur;

void setup() {
  size(600, 800, P3D);
  blur = loadShader("blur.glsl"); 
  ps = new ParticleSystem();
  cursor(HAND);
  background(10);
}

void draw() {
  filter(blur);
  fill(50, 5);
  noStroke();
  rect(0, 0, width, height);
  
  if(mousePressed)
    ps.addParticle(mouseX, mouseY);
  ps.run(); 
}