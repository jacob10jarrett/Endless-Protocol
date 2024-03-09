if (!global.initialized) {
    global.shuffle_playlist();
    global.initialized = true; // Prevents the function from being called again
}

// obj_musicController Step Event
if (global.currentSongIndex == -1 || !audio_is_playing(global.currentSoundInstance)) {
    global.currentSongIndex++;

    // Check if we've reached the end of the playlist
    if (global.currentSongIndex >= ds_list_size(global.playlist)) {
        global.shuffle_playlist(); // Reshuffle the playlist
        global.currentSongIndex = 0; // Reset the song index to the start of the playlist
    }

    var nextSongIndex = ds_list_find_value(global.playlist, global.currentSongIndex); // Correctly get the next song index from the playlist
    var nextSong = global.soundtrack[nextSongIndex]; // Access the next song using the retrieved index
    global.currentSoundInstance = audio_play_sound(nextSong, global.sliderValue, false);
}

// Adjust the volume of the currently playing sound based on the slider value
if (audio_is_playing(global.currentSoundInstance)) {
    audio_sound_gain(global.currentSoundInstance, global.sliderValue, 0); // Immediate volume adjustment
}

// Stop the sound if the volume slider is at 0
if (global.sliderValue <= 0 && audio_sound_get_gain(global.currentSoundInstance) <= 0) {
    audio_stop_sound(global.currentSoundInstance);
}
