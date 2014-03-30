import oscP5.*;
OscP5 oscP5;

int oscMouseButton;

void setup() {
    size(300, 300);    
    oscP5 = new OscP5(this, 6666); // New OSC object. Listening for OSC from sender on port 6666
}

void draw() {
    if(oscMouseButton == 1){
      background(#FF0000);
    }
    else if(oscMouseButton == 2){
      background(#00FF00);
    }
    else if(oscMouseButton == 3){
      background(#0000FF);
    }
    else{
      background(0); 
    }
}

void oscEvent(OscMessage theOscMessage) {
 
    if (theOscMessage.checkAddrPattern("/mouseButton")) {
        oscMouseButton = theOscMessage.get(0).intValue();
    }
}