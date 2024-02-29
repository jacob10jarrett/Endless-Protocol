// Set drawing properties
draw_set_font(fnt_titlescreen); 
draw_set_color(c_red);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var text_to_display = string_copy(full_text, 1, display_length);
var line_spacing = 4; // Adjust based on your font and preference
var wrap_width = room_width - 40; // Ensure this is less than the room width to avoid clipping

// Use draw_text_ext to automatically handle newline characters
draw_text_ext(x, y, text_to_display, line_spacing, wrap_width);


