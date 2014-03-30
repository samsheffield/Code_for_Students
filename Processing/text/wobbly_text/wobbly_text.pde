PFont font;
WobbleText text1, text2;
int fontSize = 16;

void setup(){ 
	size(600, 200);

    font = loadFont("Kong16.vlw");
    textFont(font, fontSize); 

    text1 = new WobbleText("It was a dark and stormy night...", 20, 60, .3, 5, fontSize);
    text2 = new WobbleText("Just kidding. It was quite sunny!", 20, 140, .1, 2, fontSize);
}

void draw(){
    background(0);
    fill(255);
    text1.wobble();
    text2.wobble();
}
