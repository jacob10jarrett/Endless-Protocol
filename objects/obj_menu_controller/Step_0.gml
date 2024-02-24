counter += 1;

// Check for any key press or mouse click to change to the title screen
if (show_press_any_button && (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left))) {
    room_goto(rm_titlescreen2); 
    show_press_any_button = false;
}
