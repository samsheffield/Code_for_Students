PFont font;
ClickyText text1, text2;
int fontSize = 16;

void setup(){ 
	size(600, 200);

  font = loadFont("Kong16.vlw");
  textFont(font, fontSize); 

  text1 = new ClickyText("It was a dark and stormy night...", 20, 60, 8, fontSize);
  text2 = new ClickyText("Just kidding. It was quite sunny!", 20, 140, 2, fontSize);
}

void draw(){
  background(0);
  fill(255);
  text1.click();

  // Wait until the first text finished to start the second one
  if(text1.finished == true){
    text2.click();
  }
  
}
