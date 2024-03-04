if (room == rm_titlescreen2) {
    if (audio_is_playing(snd_startup)) {
        audio_stop_sound(snd_startup); 
    }
    
    instance_destroy(); 
}