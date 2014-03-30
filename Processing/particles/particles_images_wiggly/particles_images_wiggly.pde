ParticleSystem ps;

boolean moving;

void setup() {
  size(600, 800, P3D);
  ps = new ParticleSystem();
  cursor(HAND);
   background(0);
}

void draw() {
	
 fill(0,10);
 rect(0,0,width, height);
  if(moving)
    ps.addParticle(mouseX, mouseY);
  ps.run();
  moving = false; 
}

void mouseDragged(){
	moving = true;
}