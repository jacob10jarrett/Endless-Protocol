if (mouse_check_button_pressed(mb_left)) {
    // Check if the mouse is on the handle
    if (point_in_rectangle(mouse_x, mouse_y, handleX, y - sprite_get_height(spr_slider_handle)/2, handleX + sprite_get_width(spr_slider_handle), y + sprite_get_height(spr_slider_handle)/2)) {
        isDragging = true;
    }
}

if (isDragging) {
    if (mouse_check_button(mb_left)) {
        // Update handle position based on mouse X, clamped to the slider track
        handleX = clamp(mouse_x, x, x + sprite_get_width(spr_slider_track) - sprite_get_width(spr_slider_handle));
        
        // Calculate new volume based on handle position
        currentValue = (handleX - x) / (sprite_get_width(spr_slider_track) - sprite_get_width(spr_slider_handle));
        audio_master_gain(currentValue);  // Update the volume
    } else {
        isDragging = false;  // Stop dragging when the mouse button is released
    }
}