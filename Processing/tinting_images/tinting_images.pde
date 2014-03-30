PImage drop; // Grayscale images work best with tint (white = fully saturated -> black = not saturated)

void setup(){
	size(400, 200);
	drop = loadImage("drop.png");
	imageMode(CENTER);
}

void draw(){
	background(50);

	// apply tint color like fill()
	tint(#63ffde);
	image(drop, width/4, height/2);

	tint(#ff0000);
	image(drop, width/2, height/2);

	// use noTint() to remove any tinting
	noTint();
	image(drop, width-width/4, height/2);
}