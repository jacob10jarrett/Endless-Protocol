currentRoom = rm_titlescreen;

// Attempt to read the saved fullscreen setting from "settings.ini"
var file = file_text_open_read("settings.ini");
if (file != -1) {
    var line = file_text_read_string(file);
    file_text_close(file);
    
    // Extract the setting value after "="
    var setting_value = string_delete(line, 1, string_pos("=", line));
    var fullscreen_setting = (setting_value == "true");
    
    // Apply the saved fullscreen setting
    window_set_fullscreen(fullscreen_setting);
} else {
    // Default behavior if the settings file doesn't exist
    // Consider setting to false or true depending on your default preference
    window_set_fullscreen(false); // or true, based on your game's default setting
}
