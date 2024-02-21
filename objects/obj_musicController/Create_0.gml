randomize(); 

global.soundtrack[0] = snd_song1;
global.soundtrack[1] = snd_song2;
global.soundtrack[2] = snd_song3;
global.soundtrack[3] = snd_song4;

played_songs = ds_list_create();
playlist = ds_list_create(); 
currentSongIndex = -1;

// Define the shuffle_playlist function
function shuffle_playlist() {
    ds_list_clear(playlist);

    var indices = [];
    for (var i = 0; i < array_length_1d(global.soundtrack); i++) {
        indices[i] = i;
    }

    // Shuffle the indices array
    for (var i = array_length_1d(indices) - 1; i > 0; i--) {
        var j = irandom(i);
        var temp = indices[j];
        indices[j] = indices[i];
        indices[i] = temp;
    }

    // Add the shuffled indices to the playlist
    for (var i = 0; i < array_length_1d(indices); i++) {
        ds_list_add(playlist, indices[i]);
    }
}

shuffle_playlist();
