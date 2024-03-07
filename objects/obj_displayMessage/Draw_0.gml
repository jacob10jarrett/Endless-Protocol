if (showMessage)
{
    draw_set_colour(messageColor);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	draw_set_font(fnt_titlescreen3);

    var _x = camera_get_view_width(camera_get_active()) / 2 + camera_get_view_x(camera_get_active());
    var _y = camera_get_view_height(camera_get_active()) / 2 + camera_get_view_y(camera_get_active()) - 100; // Moved up by 100 units

    draw_text(_x, _y, message);
}



