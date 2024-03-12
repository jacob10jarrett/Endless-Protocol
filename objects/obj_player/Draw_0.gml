draw_self();

if (global.paused) return;

draw_set_color(c_red);

// Calculate the angle from the reticle (mouse cursor) to the player
var angle = point_direction(mouse_x, mouse_y, x, y);

// Calculate the total distance from the reticle to the player
var totalDistance = point_distance(mouse_x, mouse_y, x, y);

// Calculate the new endpoint, which is 1/8 of the distance from the reticle towards the player
var newEndPointX = mouse_x + lengthdir_x(totalDistance / 8, angle);
var newEndPointY = mouse_y + lengthdir_y(totalDistance / 8, angle);

// Draw a line from the reticle to the new endpoint
draw_line(mouse_x, mouse_y, newEndPointX, newEndPointY);