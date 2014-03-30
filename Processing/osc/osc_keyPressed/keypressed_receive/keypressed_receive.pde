import oscP5.*;
OscP5 oscP5;

int oscKeyPressed;

void setup() {
    size(400, 400);    
    oscP5 = new OscP5(this, 6666);
    background(0);
}

void draw() {

    // The logic. Your video playback could be controlled here.
    if(oscKeyPressed == 1){
        background(#FF0000);
    }
    else if(oscKeyPressed == 2){
        background(#00FF00);
    }

    else if(oscKeyPressed == 3){
        background(#0000FF);
    }
    else if(oscKeyPressed == 4){
        background(#FFFFFF);
    }
    else{
        background(0); // Reset to some default
    }
}

void oscEvent(OscMessage theOscMessage) {

    if (theOscMessage.checkAddrPattern("/keyPressed")) {
        oscKeyPressed = theOscMessage.get(0).intValue();
    }
}