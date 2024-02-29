if (display_length >= string_length(text)) {
    global.text1_completed = true;
}

if (is_typing) {
    type_timer += 1;
    if (type_timer >= type_speed) {
        type_timer = 0;
        display_length += 1;
        if (display_length >= string_length(text)) {
            is_typing = false; // Stop typing once all text is displayed
        }
    }
}