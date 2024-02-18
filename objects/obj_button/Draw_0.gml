if (is_selected) {
    draw_set_colour(c_orange); // Set the color for the highlight
    draw_rectangle(x - sprite_width / 1.9, y - sprite_height / 1.9, x + sprite_width / 1.9, y + sprite_height / 1.9, false);
    draw_set_font(fnt_titlescreen2);
	draw_set_colour(c_orange); // Set the font color to be darker when selected
} else {
    draw_set_colour(c_white); 
	draw_set_font(fnt_titlescreen);
}

draw_self();

draw_set_font(fnt_titlescreen);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// The text color is already set above based on selection state
draw_text(x, y, button_text);

// Reset the drawing settings
draw_set_colour(c_white); // Reset color to default
draw_set_halign(fa_left);
draw_set_valign(fa_top);
