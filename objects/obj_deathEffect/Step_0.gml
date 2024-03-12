// Typewriter effect
if (letterIndex < maxLetters) {
    textTimer++;
    if (textTimer >= textSpeed) {
        textTimer = 0;
        letterIndex++;
        currentText = string_copy(currentMessage, 1, letterIndex);
    }
} else if (transitionTimer == -1) {
    // Start transition countdown once the full message is displayed
    transitionTimer = transitionDelay;
}

// Dot animation
dotTimer++;
if (dotTimer >= dotSpeed) {
    dotTimer = 0;
    dotStep = (dotStep + 1) % 4;
    dots = string_repeat(".", dotStep);
    if (dotStep == 0) {
        dots = ""; // Clear dots at the end of the cycle
    }
}

// Transition to title screen
if (transitionTimer > -1) {
    transitionTimer--;
    if (transitionTimer <= 0) {
		room_restart();
        room_goto(rm_titlescreen);
    }
}
