PShape shape1;
PImage kitten;
float rotation;

void setup() {
	size(400, 400, P3D);
	shape1 = loadShape("adi.svg");
	kitten = loadImage("kitten.jpg");
}

void draw() {
	// 2D background
	disable3D();
	image(kitten, 0, 0);

	// 3D middle
	enable3D();
	fill(#FFFF00);
	noStroke();
	pushMatrix();
	translate(width/2, height/2, 0); 
	rotateY(rotation);
	rotateX(rotation/5);
	box(100);
	popMatrix();
	rotation+=.05;

	// 2D shape foreground
	disable3D();
	shapeMode(CENTER);
	shape(shape1, mouseX, mouseY);
}

// Use this to turn on 3D
void enable3D(){
	hint(ENABLE_DEPTH_TEST);
	lights();
}

// Use this to turn off 3D
void disable3D(){
	hint(DISABLE_DEPTH_TEST);
	camera();
	noLights();
}