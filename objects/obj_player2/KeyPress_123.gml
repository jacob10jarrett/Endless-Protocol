if (keyboard_check_pressed(vk_f12)) { 
    var cam = view_camera[0]; 
    var view_width = room_width; 
    var view_height = room_height; 
    camera_set_view_size(cam, view_width, view_height); 
    camera_set_view_pos(cam, 0, 0); 
}
