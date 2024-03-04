if (isFading) {
    fadeAlpha += fadeSpeed;
    if (fadeAlpha >= 1) {
        fadeAlpha = 1;
        displayText = true;
    }

    draw_set_alpha(fadeAlpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1); // Reset alpha to default
}

if (displayText) {
    var text_x = room_width / 2;
    var text_y = room_height / 2;
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	draw_set_font(fnt_titlescreen3)
    draw_text(text_x, text_y, "A game by 3.0 Games");
}
