draw_set_halign(fa_right);
draw_set_valign(fa_top);

// Format the time into minutes:seconds:milliseconds
var minutes = string_format((currentTime div 60000) mod 60, 2, 0);
var seconds = string_format((currentTime div 1000) mod 60, 2, 0);
var milliseconds = string_format(currentTime mod 1000, 3, 0);

// Fixed position based on the game window's dimensions
var x_pos = display_get_gui_width() - 20; // 10 pixels from the right edge
var y_pos = 10; // 10 pixels from the top

// Display the formatted time at fixed GUI coordinates
draw_text(x_pos, y_pos, minutes + ":" + seconds + ":" + milliseconds);

// Reset alignment if necessary
draw_set_halign(fa_left);
draw_set_valign(fa_top);