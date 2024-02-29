// Typing animation logic
if (is_typing) {
    type_timer += 1;

    if (type_timer >= type_speed) {
        if (display_length < string_length(full_text)) {
            display_length += 1; // Display next character
            type_timer = 0; // Reset timer for next character
        } else {
            // Typing animation complete
            is_typing = false;
            obj_button_next.visible = true; // Show "Next" button after complete
        }
    }
}


// Prevent re-triggering typing animation on click
if (mouse_check_button_pressed(mb_left) && !obj_button_next.visible) {
    // Skip to the end of the text if it's still typing
    if (is_typing) {
        display_length = string_length(full_text);
        is_typing = false;
        obj_button_next.visible = true;
    }
}
