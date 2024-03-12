if (global.paused && !visible) {
    visible = true; // Make the pause menu visible

    // Create buttons only if they don't exist
    if (!instance_exists(obj_button_resume)) {
        resumeButtonInstance = instance_create_layer(room_width / 2, room_height / 2 - 50, "Pause", obj_button_resume);
        resumeButtonInstance.image_xscale = 0.3;
        resumeButtonInstance.image_yscale = 0.2;
    }
    if (!instance_exists(obj_button_endProtocol)) {
        endProtocolButtonInstance = instance_create_layer(room_width / 2, room_height / 2 + 50, "Pause", obj_button_endProtocol);
        endProtocolButtonInstance.image_xscale = 0.3;
        endProtocolButtonInstance.image_yscale = 0.2;
    }
} else if (!global.paused && visible) {
    visible = false; // Make the pause menu invisible
    with (resumeButtonInstance) instance_destroy();
    with (endProtocolButtonInstance) instance_destroy();
    resumeButtonInstance = noone;
    endProtocolButtonInstance = noone;
}