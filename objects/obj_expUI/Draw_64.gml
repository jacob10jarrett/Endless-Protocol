draw_set_color(c_black); 
draw_rectangle(0, 0, 0, 0, false)

draw_set_color(c_teal); 
draw_rectangle(0, 0, playerExp / expMax * 300, 0, false)

draw_gui = function() {
    var window_width = display_get_width();
    var window_height = display_get_height();
    
    // Define the size of the rectangle
    var rectangle_width = 100;
    var rectangle_height = 50;

    // Calculate the coordinates of the bottom-right corner of the screen
    var bottom_right_x = window_width - rectangle_width;
    var bottom_right_y = window_height - rectangle_height;

    // Draw the rectangle at the bottom-right corner
    draw_rectangle(bottom_right_x, bottom_right_y, bottom_right_x + rectangle_width, bottom_right_y + rectangle_height, false);
}

draw_gui()