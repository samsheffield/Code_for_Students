ParticleSystem ps;

boolean moving; // Only add particles when dragging

void setup() {
  size(600, 800, P3D);
  ps = new ParticleSystem();
  cursor(HAND);
}

void draw() {
  background(0);
  // Add particles when dragging
  if(moving)
    ps.addParticle(mouseX, mouseY);
  ps.run();

  // Reset ability to drag
  moving = false; 
}

void mouseDragged(){
	moving = true;
}