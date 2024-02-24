draw_set_font(fnt_titlescreen); 
draw_set_color(c_white); 
draw_set_halign(fa_left); 
draw_set_valign(fa_top); 

var text_to_display = string_copy(full_text, 1, display_length);
var wrap_width = room_width - 40;
draw_text(x, y, text_to_display); 
