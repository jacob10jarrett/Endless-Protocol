isMuted = !isMuted;  

if (isMuted) {
    audio_master_gain(0);  
    button_text = "Unmute";  
} else {
    audio_master_gain(1);  
    button_text = "Mute"; 
}