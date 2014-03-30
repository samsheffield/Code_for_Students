import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress remoteLocation;

OscMessage myOSC;

void setup() {
    size(600, 600);
    oscP5 = new OscP5(this, 5555); 
    remoteLocation = new NetAddress("127.0.0.1", 6666); 
}

void draw() {
    myOSC = new OscMessage("/mouseButton"); 
    if(mousePressed){
      if (mouseButton == LEFT) {
        myOSC.add(1); 
      } 
      else if (mouseButton == RIGHT) {
        myOSC.add(2);
      } 
      else if (mouseButton == CENTER){
        myOSC.add(3);
      }
    }
    // Remove the else{} if you don't want the effect on the other computer to reset
    else{
      myOSC.add(0);
    }
    
    oscP5.send(myOSC, remoteLocation); 
}