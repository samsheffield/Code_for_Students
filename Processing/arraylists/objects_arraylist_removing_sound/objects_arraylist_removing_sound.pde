// For sound
import ddf.minim.*; 
Minim minim;  // Main sound playback object
AudioSample removeSound; // AudioSample is a short, triggerable sound

ArrayList<Ball> balls;

void setup() {
  size(600, 600);
  balls = new ArrayList<Ball>();

  minim = new Minim(this); // Start Minim
  removeSound = minim.loadSample("SD.wav", 512); // Load sample from data folder. 512 is a default buffer size and you shouldn't need to change it.
}

void draw() {
  background(255);
  line(0, height-100, width, height-100);

  for (int i=0; i < balls.size(); i++) {
    Ball ball = balls.get(i);
    ball.update();
    ball.draw();
  } 

  for (int i=0; i < balls.size(); i++) {
    Ball ball = balls.get(i);
    if(ball.finished == true){
      balls.remove(ball);
      removeSound.trigger(); // Trigger sound!
    }
  }
  
}

void mousePressed() {
  balls.add(new Ball(mouseX, mouseY, 40));
}