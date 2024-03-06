if(showing_dialog == false) {
	if(dialog.count() <= 0) {
		instance_destroy();
		return;
	}
	
	current_dialog = dialog.pop();
	showing_dialog = true;
} else {
    if (keyboard_check_released(key_next) || global.button_next_pressed) {
        if (current_dialog.choices != undefined) {
        showing_dialog = false;
        alpha = 0;
		
        } else {
            showing_dialog = false;
            alpha = 0;
        }
		
        global.button_next_pressed = false;
	}
}