// Toggle fullscreen state and update button text
var newState = !window_get_fullscreen();
window_set_fullscreen(newState);
button_text = newState ? "Fullscreen: On" : "Fullscreen: Off";

// Save the new setting to a file
var file = file_text_open_write("settings.ini");
if (file != -1) {
    file_text_write_string(file, "fullscreen=" + string(newState));
    file_text_write_string(file, "\n"); // Ensure there's a newline at the end
    file_text_close(file);
}