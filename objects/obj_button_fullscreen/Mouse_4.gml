if (window_get_fullscreen()) {
    window_set_fullscreen(false);
    button_text = "Fullscreen: Off";
} else {
    window_set_fullscreen(true);
    button_text = "Fullscreen: On";
}
