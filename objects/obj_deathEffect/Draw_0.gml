var textToDraw = currentText + dots;
var textWidth = string_width(textToDraw);
var textHeight = string_height(textToDraw);

// Center coordinates
var centerX = (room_width - textWidth) * 0.5;
var centerY = (room_height - textHeight) * 0.5;

draw_set_font(fnt_titlescreen3);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(centerX, centerY, textToDraw);