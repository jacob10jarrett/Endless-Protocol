draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(fnt_titlescreen);

var minutes = string_format((currentTime div 60000) mod 60, 2, 0);
var seconds = string_format((currentTime div 1000) mod 60, 2, 0);
var milliseconds = string_format(currentTime mod 1000, 3, 0);

var x_pos = display_get_gui_width() - 20; 
var y_pos = 20; 

draw_set_color(c_red);
draw_text(x_pos, y_pos, minutes + ":" + seconds + ":" + milliseconds);

