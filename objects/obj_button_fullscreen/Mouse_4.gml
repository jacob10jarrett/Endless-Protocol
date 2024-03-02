// Toggle fullscreen state and update button text
var newState = !window_get_fullscreen();
window_set_fullscreen(newState);
button_text = newState ? "Fullscreen: On" : "Fullscreen: Off";

