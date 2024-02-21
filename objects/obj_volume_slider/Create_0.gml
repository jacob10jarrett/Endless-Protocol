minVolume = 0;  
maxVolume = 1;  

// Set a default volume level if the soundtrack hasn't been played yet
defaultVolume = 1; // Example default volume level

// Check if the global soundtrack is initialized and a song has been played
if (array_length_1d(global.soundtrack) > 0 && audio_is_playing(global.soundtrack[0])) {
    // If a song from the soundtrack has been played, use its current gain as the slider's currentValue
    currentValue = audio_sound_get_gain(global.soundtrack[0]);
} else {
    // If no song has been played yet, use the default volume level as the slider's currentValue
    currentValue = defaultVolume;
}

// Initialize the dragging state
isDragging = false;  

// Calculate the initial position of the slider handle based on the currentValue
handleX = x + (currentValue * (sprite_get_width(spr_slider_track) - sprite_get_width(spr_slider_handle)));