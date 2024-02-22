if (!global.initialized) {
    global.shuffle_playlist();
    global.initialized = true; // Prevents the function from being called again
}

// obj_musicController Step Event
if (global.currentSongIndex == -1 || !audio_is_playing(global.currentSoundInstance)) {
    global.currentSongIndex++;

    if (global.currentSongIndex >= ds_list_size(global.playlist)) {
        shuffle_playlist(); // Ensure this properly shuffles your playlist
        global.currentSongIndex = 0;
    }

    var nextSong = global.soundtrack[global.playlist[| global.currentSongIndex]];
    global.currentSoundInstance = audio_play_sound(nextSong, global.sliderValue, false);
}

// Adjust the volume of the currently playing sound based on the slider value
if (audio_is_playing(global.currentSoundInstance)) {
    audio_sound_gain(global.currentSoundInstance, global.sliderValue, 0); // Immediate volume adjustment
}

// Consider adding a condition to check if the volume adjustment is desired before stopping the sound
if (global.sliderValue <= 0 && audio_sound_get_gain(global.currentSoundInstance) <= 0) {
    audio_stop_sound(global.currentSoundInstance);
}
