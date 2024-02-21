var mx = mouse_x;
var my = mouse_y;
if (point_in_rectangle(mx, my, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
    
    global.selected_button = id; 
    is_selected = true;
} else {
   
    if (global.selected_button == id) {
        global.selected_button = noone;  
    }
    is_selected = false;
}