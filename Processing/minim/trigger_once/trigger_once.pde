// Triggering a sample only once with Minim 

import ddf.minim.*;

Minim minim;
AudioSample sample1;

boolean sample1Played; 

void setup(){
  size(600, 600);
  minim = new Minim(this);

  // Load sound files from the data folder
  sample1 = minim.loadSample("BD.mp3", 512);
}

void draw(){
  background(0);

  fill(#00FFAA);
  rect(width/2, 0, width/2, height);

  if( mouseX > width/2){
    // If the sample has not already played...
    if(sample1Played == false){
      sample1.trigger();  // Trigger sample
      sample1Played = true; // Can't play sample again until reset
    }    
  }
  else{
    sample1Played = false; // Reset. Sample can be played again.
  }

  //
}