PShape shape1;
PImage kitten;

void setup() {
	size(400, 400);
	shape1 = loadShape("adi.svg"); // Load svg file saved in data folder (should be saved as default svg from Illustrator)
	kitten = loadImage("kitten.jpg");
}

void draw() {
	// The revealed image is the shape cut out of the svg file in illustrator
	image(kitten, 0, 0);
	shapeMode(CENTER); // Move rotation point to center
	shape(shape1, mouseX, mouseY); // draw the shape similarly to an image
}