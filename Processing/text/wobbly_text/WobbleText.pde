class WobbleText {
    String s; // The text
    float x, y, wobbleSpeed, wobbleRange;
    int fontSize;
    
    float[] characterY = new float[0];  // Stores y position for each character
    float[] directionY = new float[0];  // Stores the direction of y movement for each character

    WobbleText(String _s, float _x, float _y, float _wobbleSpeed, float _wobbleRange, int _fontSize){
        s = _s;
        x = _x;
        y = _y;
        fontSize = _fontSize;
        wobbleSpeed = _wobbleSpeed; 
        wobbleRange = _wobbleRange;
        
        // For every character in the text...
        for (int i = 0; i < s.length(); i++){
            // Choose a random y position for each character to start from and add to the array.
            characterY = append(characterY, random(-wobbleRange, wobbleRange));

            // Choose a random direction to move that is either -1 or 1
            float randomNumber = round(random(1));
            if(randomNumber == 0){
                randomNumber = -1; // Get rid of 0!
            }
            directionY = append(directionY, randomNumber); // Add the random direction to the array.
        } 
    }

    void wobble(){
        pushMatrix();
        translate(x, y);

        // For every character in the text...
        for (int i =0; i < s.length(); i++){  
            // Change y direction if we exceed the max range. 
            // abs() always returns a positive value so we only need to be concerned if the character's y is greater than the max.
            if(abs(characterY[i]) > wobbleRange){
                directionY[i] *= -1; // Reverse direction!
            }

            // s.charAt(i) actually retrieves the characters from the text
            // fontSize * i handles the letter spacing
            // characterY[i] positions the character on the y axis
            text(s.charAt(i), fontSize*i, characterY[i]);

            // Update movement!
            characterY[i] += directionY[i] * wobbleSpeed;
        } 
        popMatrix();  
    }
}