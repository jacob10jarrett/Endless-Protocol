if (!variable_global_exists("initialized")) {
    global.initialized = false;
}

if (!global.initialized) {
    randomize(); 

    global.soundtrack[0] = snd_song1;
    global.soundtrack[1] = snd_song2;
    global.soundtrack[2] = snd_song3;
    global.soundtrack[3] = snd_song4;

    global.played_songs = ds_list_create();
    global.playlist = ds_list_create(); 
    global.currentSongIndex = -1;
    global.sliderValue = 1;

    global.shuffle_playlist = function() {
        ds_list_clear(global.playlist);

        var indices = [];
        for (var i = 0; i < array_length_1d(global.soundtrack); i++) {
            indices[i] = i;
        }

        for (var i = array_length_1d(indices) - 1; i > 0; i--) {
            var j = irandom(i);
            var temp = indices[j];
            indices[j] = indices[i];
            indices[i] = temp;
        }

        for (var i = 0; i < array_length_1d(indices); i++) {
            ds_list_add(global.playlist, indices[i]);
        }
    };

// Now that the function is defined, it's safe to call it
global.shuffle_playlist();
global.initialized = true;
}