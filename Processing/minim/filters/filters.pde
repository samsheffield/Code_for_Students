import ddf.minim.*;
// the effects package is needed because the filters are there for now.
import ddf.minim.effects.*;

Minim minim;
AudioPlayer player;

LowPassSP lowpassSP;
LowPassFS lowpassFS;
BandPass bandpass;
HighPassSP highpassSP;
NotchFilter notchfilter;

float xPosition;

void setup()
{
  size(640, 480);
  minim = new Minim(this);
  player = minim.loadFile("marcus_kellis_theme.mp3"); // soundfile from Minim examples
  player.loop();

  // Filter options
  lowpassSP = new LowPassSP(400, player.sampleRate());
  lowpassFS = new LowPassFS(400, player.sampleRate());
  bandpass = new BandPass(400, 100, player.sampleRate());
  highpassSP = new HighPassSP(400, player.sampleRate());
  notchfilter = new NotchFilter(400, 100, player.sampleRate());

  // Add filter
  player.addEffect(bandpass);
}

void draw(){
  background(0);
  // Manipulate filter
  // map the mouse position to the range [100, 10000], an arbitrary range of passBand frequencies
  xPosition = map(mouseX, 0, width, 100, 5000);
  bandpass.setFreq(xPosition);

}