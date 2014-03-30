// Typewriter effect

class ClickyText{
  String s;
  float x,y, speed, fontSize;
  int currentCharacter; 
  boolean finished;

  ClickyText(String _s, float _x, float _y, float _speed, float _fontSize){
    s = _s;
    x = _x;
    y = _y;
    speed = _speed;
    fontSize = _fontSize;
  }

  void click(){
    pushMatrix();
    translate(x, y);

    // If not finished, add a new character at an interval
    if(frameCount % speed == 0 && !finished){   // % is an easy way to create a timer
      currentCharacter++; 
    }

    // If there are still characters left in the text...
    if (currentCharacter < s.length()){
      // Display all currently visible characters
      for (int i = 0; i < currentCharacter; i++){

        // s.charAt(i) retrieves the current character from the text
        // fontSize*i handles the character spacing
        text(s.charAt(i), fontSize*i, 0); 
      }
    }
    else{
      // If the test is finished
      text(s, 0, 0);
      finished = true;
    }
    popMatrix();
  }
}