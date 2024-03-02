// Set drawing properties
draw_set_font(fnt_titlescreen); 
draw_set_color(c_red);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(x, y, string_copy(text, 1, display_length));


