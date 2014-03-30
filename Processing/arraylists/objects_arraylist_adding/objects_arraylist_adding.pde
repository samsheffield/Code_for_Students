
// The <Ball> sets the type of object that is stored in the ArrayList.
ArrayList<Ball> balls;

void setup() {
  size(600, 600);
  balls = new ArrayList<Ball>();  // Create an empty ArrayList
}

void draw() {
  background(255);

  // With an array, we say balls.length. With an ArrayList,
  // we say balls.size(). The length of an ArrayList is dynamic.

  // ALSO, PAY CLOSE ATTENTION TO ball (THE OBJECT) VS balls (THE ARRAYLIST) BEING USED HERE.
  for (int i=0; i < balls.size(); i++) {
    Ball ball = balls.get(i);
    ball.display();
  }
}

void mousePressed() {
  // A new ball object is added to the ArrayList, by default to the end.
  balls.add(new Ball(mouseX, mouseY, 40));
}