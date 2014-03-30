
// The <Ball> sets the type of object that is stored in the ArrayList.
ArrayList<Ball> balls;

void setup() {
  size(600, 600);
  balls = new ArrayList<Ball>();  // Create an empty ArrayList
}

void draw() {
  background(255);
  // Show the arbitrarily chosen point to remove objects from the ArrayList
  line(0, height-100, width, height-100);

  // For drawing and moving balls
  for (int i=0; i < balls.size(); i++) {
    Ball ball = balls.get(i);
    ball.update();
    ball.draw();
  }

  // For removing balls. 
  for (int i=0; i < balls.size(); i++) {
    Ball ball = balls.get(i);

    // remove ball from balls when its finished property is set to true
    if(ball.finished == true){
      balls.remove(ball);
    }
  }

  // ALSO...
  // If we combine both for loops into a single one, the balls will still be removed, but it will cause all other instances to flicker temporarily (looks very bad)
  // However, sometimes it is okay to combine both loops but reverse the order (start at end and subtract). This removes the flicker 
  // but it will cause the objects to be drawn to the screen in reverse order (newer things behind older things)
}

void mousePressed() {
  balls.add(new Ball(mouseX, mouseY, 40));
}