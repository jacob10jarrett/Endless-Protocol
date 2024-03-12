draw_set_font(fnt_titlescreen); // Set the font
draw_set_halign(fa_center); // Align text to the center
draw_set_valign(fa_top); // Align text to the top
draw_set_color(c_white); // Set text color

// Calculate position
var x_pos = room_width / 2;
var y_pos = 550; // Position above the "Protocol Completion: Successful" message

// Draw the message
draw_text(x_pos, y_pos, message);