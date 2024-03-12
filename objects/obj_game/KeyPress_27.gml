if (room == rm_game2) {
	if (keyboard_check_pressed(vk_escape) && can_pause) {
	    global.paused = !global.paused; // Toggle paused state
	    if (global.paused) {
	        if (!instance_exists(obj_pauseMenu)) {
	            instance_create_layer(view_xview[0] + view_wview[0] / 2, view_yview[0] + view_hview[0] / 2, "Instances", obj_pauseMenu);
	        }
	        // Only create buttons if they don't already exist
	        if (!instance_exists(obj_button_resume)) {
	            var resumeButton = instance_create_layer(view_xview[0] + 960, view_yview[0] + 416, "Instances", obj_button_resume);
	            resumeButton.image_xscale = 0.3;
	            resumeButton.image_yscale = 0.2;
	        }
        
	        if (!instance_exists(obj_button_endProtocol)) {
	            var endButton = instance_create_layer(view_xview[0] + 960, view_yview[0] + 768, "Instances", obj_button_endProtocol);
	            endButton.image_xscale = 0.3;
	            endButton.image_yscale = 0.2;
	        }
	    } else {
	        // Consider hiding or destroying pause menu and buttons as needed
	        with (obj_button_resume) instance_destroy();
	        with (obj_button_endProtocol) instance_destroy();
	        with (obj_pauseMenu) instance_destroy(); // Ensure pause menu is also hidden or destroyed
	    }
	}
}
if (room == rm_titlescreen2) {
    room_goto(rm_titlescreen);  
}

if (room == rm_settings) {
    room_goto(rm_titlescreen2);
}

if (room == rm_credits) {
    room_goto(rm_titlescreen2);
}

if (room == rm_help) {
    room_goto(rm_titlescreen2);
}