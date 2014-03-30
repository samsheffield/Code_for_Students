import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress remoteLocation;

OscMessage myOSC;

void setup() {
    size(400, 400);

    oscP5 = new OscP5(this, 5555); 
    remoteLocation = new NetAddress("127.0.0.1", 6666); 
}

void draw() {
    background(127); 
}

void keyPressed(){
	myOSC = new OscMessage("/keyPressed"); 
    if(key == 'a' || key == 'A'){
    	myOSC.add(1); 
    }
    else if(key == 's' || key == 'S'){
    	myOSC.add(2); 
    }
    else if(key == 'd' || key == 'D'){
    	myOSC.add(3); 
    }
    else if(key == 'f' || key == 'F'){
    	myOSC.add(4); 
    }
    oscP5.send(myOSC, remoteLocation);
}

// Resets the selection to a default value. Removing this keyReleased() function will allow the receiver to keep the last option selected
void keyReleased(){
	myOSC = new OscMessage("/keyPressed"); 
    myOSC.add(0);
    oscP5.send(myOSC, remoteLocation);
}