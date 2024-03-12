// Camera controls
var halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
var halfViewHeight = camera_get_view_height(view_camera[0]) / 2;

var targetCameraX = x - halfViewWidth;
var targetCameraY = y - halfViewHeight;

var cameraSpeed = 0.05;

camera_set_view_pos(view_camera[0], lerp(camera_get_view_x(view_camera[0]), targetCameraX, cameraSpeed), lerp(camera_get_view_y(view_camera[0]), targetCameraY, cameraSpeed));

	//Player death
	if (obj_player.currentHealth <= 0) {
    instance_destroy(obj_player)
    room_goto(rm_death); 
	}
