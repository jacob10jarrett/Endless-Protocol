if (fading) {
    fadeAmount += 2; 
    if (fadeAmount >= 255) { 
        fading = false;
        room_goto(targetRoom);
    }
}