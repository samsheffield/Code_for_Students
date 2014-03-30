// Using 3 mouse buttons
void setup(){
  size(200, 200);
}
void draw() {
  background(#ff0000);
  if (mousePressed){
  	if (mouseButton == LEFT) {
    	fill(0);
  	} else if (mouseButton == RIGHT) {
    	fill(255);
  	} else if (mouseButton == CENTER){
    	fill(126);
  	}
  }
  rect(50, 50, 100, 100);
}