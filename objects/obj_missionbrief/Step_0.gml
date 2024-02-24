// Typing animation logic
if (is_typing) {
    type_timer += 1;

    if (type_timer >= type_speed) {
        if (display_length < string_length(full_text)) {
            display_length += 1; // Display next character
            type_timer = 0; // Reset timer for next character
        } else if (alarm[0] == -1) { // Check if alarm isn't already set
            alarm[0] = 360; // Set delay for "Next" button, adjust as needed
            is_typing = false; // Stop typing animation
        }
    }
}

var total_pages = ceil(string_length(full_text) / chars_per_page);

if (keyboard_check_pressed(vk_space)) {
    if (current_page < total_pages - 1) {
        current_page += 1; // Go to next page
        display_length = min((current_page + 1) * chars_per_page, string_length(full_text));
    } else if (alarm[0] == -1 && display_length >= string_length(full_text)) {
        // If on the last page and full text is displayed, set alarm for "Next" button
        alarm[0] = 360; // Adjust delay as needed
    }
}

if (mouse_check_button_pressed(mb_left)) {
    if (is_typing) {
        // Skip to the end of the current page or text
        display_length = min((current_page + 1) * chars_per_page, string_length(full_text));
        is_typing = false; // Stop typing animation
    } else if (current_page < total_pages - 1) {
        // If not typing and not on last page, go to next page
        current_page += 1;
        display_length = min((current_page + 1) * chars_per_page, string_length(full_text));
    } else if (alarm[0] == -1 && display_length >= string_length(full_text)) {
        // If not typing, on last page, and alarm not set, set alarm for "Next" button
        alarm[0] = 360;
    }
}
