animationTimer++;

// Update the displayText by adding one letter from fullText every few steps
if(animationTimer >= 8 && animationStep < string_length(fullText)){ // Adjust the speed as needed
    displayText += string_char_at(fullText, animationStep + 1);
    animationStep++;
    animationTimer = 0;
}

// Once the full word is displayed, start blinking logic
if(animationStep >= string_length(fullText)){
    blinkTimer++;
    if(blinkTimer >= 30){ // Control the speed of blinking
        blinkState = !blinkState;
        blinkTimer = 0;
    }
}

// Initiate the transition after the animation and blinking are complete
if(animationStep >= string_length(fullText) && blinkState && !transitionToThanksRoom){
    transitionToThanksRoom = true;
}

// Handle the room transition after a delay
if(transitionToThanksRoom){
    transitionTimer++;
    if(transitionTimer > room_speed * 7){ 
        room_goto(rm_reboot);
    }
}