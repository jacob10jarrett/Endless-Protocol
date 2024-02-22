if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self)) {
    global.currentSongIndex++;

    if (global.currentSongIndex >= ds_list_size(global.playlist)) { // Ensure 'playlist' is also accessible
        global.shuffle_playlist(); // This function needs to be accessible here
        global.currentSongIndex = 0;
    }

    var nextSong = global.soundtrack[global.playlist[| global.currentSongIndex]];

    if (audio_is_playing(global.currentSoundInstance)) {
        audio_stop_sound(global.currentSoundInstance);
    }

    global.currentSoundInstance = audio_play_sound(nextSong, global.sliderValue, false);
}