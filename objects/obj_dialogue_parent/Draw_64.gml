if (showing_dialog == true) {
    var text_x = 30;
    var text_y = 18;
    var height = 32;
    var border = 5;
    var padding = 16;
    
    // Calculate dialogue box height
    height = string_height_ext(current_dialog.message, 16, display_get_gui_width() - 192) + padding * 2;
    
    if (current_dialog.sprite != -1 && sprite_get_height(current_dialog.sprite) > height) {
        height = sprite_get_height(current_dialog.sprite) + padding * 2;
    }
    
    // Adjust text_x if a sprite is present
    if (current_dialog.sprite != -1) {
        text_x += sprite_get_width(current_dialog.sprite) + padding;
    }
    
    // Drawing dialogue box and text
    draw_set_alpha(alpha);
    draw_set_font(fnt_titlescreen3);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), height + (current_dialog.choices != undefined ? 100 : 0), false); // Adjusted for choices
    draw_set_color(c_white);
    draw_rectangle(border, border, display_get_gui_width() - border, height - border + (current_dialog.choices != undefined ? 100 : 0), false);
    draw_set_color(c_black);
    draw_rectangle(border * 2, border * 2, display_get_gui_width() - (border * 2), height - (border * 2) + (current_dialog.choices != undefined ? 100 : 0), false);
    
    if (current_dialog.sprite != -1) {
        draw_sprite(current_dialog.sprite, 0, border * 3, border * 3);
    }
    
    draw_set_color(c_white);
    draw_text_ext(text_x, text_y, current_dialog.message, 16, display_get_gui_width() - 192);
    
    alpha = lerp(alpha, 1, 0.06);
    draw_set_alpha(1);
}
