if (fadeAmount > 0) {
    draw_set_colour(c_black);
    draw_set_alpha(fadeAmount / 255);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    draw_set_alpha(1); 
}