draw_set_color(c_red);

var view_y = camera_get_view_y(view_camera[0]);

for (var i = 0; i < ds_list_size(binary_strings); i++) {
    var binary_string = ds_list_find_value(binary_strings, i);
    var ypos = y + (i * vertical_spacing) - view_y;
    
    if (ypos + vertical_spacing >= 0 && ypos <= room_height + view_y) {
        draw_text(x, ypos, binary_string);
    }
}


draw_set_color(c_white);
