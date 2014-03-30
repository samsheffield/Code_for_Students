import ddf.minim.*;

Minim minim;
AudioPlayer player;

float gain;

void setup(){
  size(640, 480);
  minim = new Minim(this);
  player = minim.loadFile("marcus_kellis_theme.mp3"); // soundfile from Minim examples
  
  // see if your computer can support either setVolume() or setGain()
  // My computer reported: Master Gain with current value: 0.0 dB (range: -80.0 - 6.0206) but no Volume control
  println(player.getControls());
  player.loop();
}

void draw(){
  background(0);
  // Changing the range of input from mouseY so that... 
  // it is much smaller (-6 ~ 6)
  // it is inverted (bigger numbers near top of screen)
  gain = map(mouseY, 0, height, 6.0206, -6.0206);
  println("Gain: " + gain);
  player.setGain(gain);
}
