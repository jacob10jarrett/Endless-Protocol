var scaleX = 2.5; // Example scaling factor
var scaleY = 2.5;

// Draw the slider track
draw_sprite_ext(spr_slider_track, 0, x, y, scaleX, scaleY, 0, c_white, 1);

// Draw the slider handle - ensure handleX accounts for scaling
draw_sprite_ext(spr_slider_handle, 0, handleX, y, scaleX, scaleY, 0, c_white, 1);

// Calculate the handle position based on the scaled track
var handleWidthScaled = sprite_get_width(spr_slider_handle) * scaleX;
var trackWidthScaled = sprite_get_width(spr_slider_track) * scaleX;
var trackWidth = sprite_get_width(spr_slider_track) * image_xscale; // Scaled track width
var handleWidth = sprite_get_width(spr_slider_handle) * image_xscale; // Scaled handle width

// Adjust handleX to start from the beginning of the track and scale according to currentValue
handleX = x + (currentValue * (trackWidth - handleWidth));

// Draw the slider handle scaled
draw_sprite_ext(spr_slider_handle, 0, handleX, y, scaleX, scaleY, 0, c_white, 1);