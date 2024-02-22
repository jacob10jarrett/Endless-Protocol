if mouse_check_button_pressed(mb_left) {
	var button_x = x+sprite_width*value;
	var button_y = y;
	var button_radius = sprite_get_width(spr_slider_handle)/2;
	if point_in_circle(mouse_x, mouse_y, button_x, button_y, button_radius) {
		selected = true;
	}
}

if !mouse_check_button(mb_left) {
	selected = false;
}

if selected {
    value = clamp((mouse_x-x)/sprite_width, 0, max_value);
    global.sliderValue = value; // This now directly sets the volume level
}
