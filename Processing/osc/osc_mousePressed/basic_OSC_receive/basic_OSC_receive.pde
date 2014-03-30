import oscP5.*;
OscP5 oscP5;

int oscPressed; // A variable to store an incoming int (0: not pressed, 1: pressed)

void setup() {
    size(400, 400);    
    oscP5 = new OscP5(this, 6666); 
}

void draw() {
    background(#00FFFF);
    if(oscPressed == 1){
        ellipse(width/2, height/2, 100, 100);
    }
    else{
        ellipse(width/2, height/2, 120, 120);
    }
}

void oscEvent(OscMessage theOscMessage) {

    if (theOscMessage.checkAddrPattern("/mousePressed")) {
        oscPressed = theOscMessage.get(0).intValue();
    }
}