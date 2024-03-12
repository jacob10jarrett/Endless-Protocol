if (visible) {
    var cam = view_camera[0];
    var camX = camera_get_view_x(cam);
    var camY = camera_get_view_y(cam);
    var camW = camera_get_view_width(cam);
    var camH = camera_get_view_height(cam);

    // Draw pause menu background (e.g., semi-transparent rectangle)
    draw_set_alpha(.5); // Semi-transparent
    draw_rectangle_color(camX, camY, camX + camW, camY + camH, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1); // Reset transparency

    // Optionally draw some text or instructions
	draw_set_font(fnt_titlescreen);
    draw_set_colour(c_white);
	draw_set_halign(fa_center);
    draw_text(camX + camW / 2, camY + camH / 2 - 100, "Game Paused");
	draw_set_halign(fa_left);
}