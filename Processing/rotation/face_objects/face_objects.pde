Arrow arrow1, arrow2, arrow3;

void setup() {
  size(400, 600);
  arrow1 = new Arrow(width/2, height/4);
  arrow2 = new Arrow(width/2, height/2);
  arrow3 = new Arrow(width/2, height-height/4);
}

void draw() {
  background(255);

  // update rotation of arrow objects
  arrow1.face(mouseX, mouseY);
  arrow2.face(mouseX, mouseY);

  // It is possible to use the face() method of Arrow as well
  PVector ms = new PVector(mouseX, mouseY); // Just a demonstration. Not very practical!
  arrow3.face(ms); // PVector is the argument instead of two floats

  // draw all arrows
  arrow1.draw();
  arrow2.draw();
  arrow3.draw();
}