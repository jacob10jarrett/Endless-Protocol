draw_set_font(fnt_titlescreen3); // Use an appropriate font
draw_set_halign(fa_center); // Align text to the left
draw_set_valign(fa_top); // Align text to the top
draw_set_color(c_white); // Set text color

var displayMessage = string_replace_all(message, "#", "\n"); // Replace marker with newline
var x_pos = 960;
var y_pos = 100; // Adjust as needed

// Draw the message
draw_text(x_pos, y_pos, displayMessage);