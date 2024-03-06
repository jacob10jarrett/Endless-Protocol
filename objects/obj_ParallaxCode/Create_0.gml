text_speed = 0.25
room_width = 1920; 
desired_effect_height = 500; 
char_width_approx = 200; 
binary_string_length = 2000; 

vertical_spacing = 80; 
rows_needed = desired_effect_height / vertical_spacing; 

// Generate an array of binary strings
binary_strings = ds_list_create();
for (var i = 0; i < rows_needed; i++) {
    var binary_str = "";
    for (var j = 0; j < binary_string_length; j++) {
        binary_str += string(irandom(1)); // Randomly generate each character as '0' or '1'
    }
    ds_list_add(binary_strings, binary_str);
}