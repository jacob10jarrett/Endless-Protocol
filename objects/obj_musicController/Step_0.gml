if (currentSongIndex == -1 || !audio_is_playing(global.soundtrack[playlist[| currentSongIndex]])) {
    currentSongIndex++;

    if (currentSongIndex >= ds_list_size(playlist)) {
        
        shuffle_playlist();
        currentSongIndex = 0; 
    }

    var nextSong = global.soundtrack[playlist[| currentSongIndex]];
    audio_play_sound(nextSong, 1, false);
}
