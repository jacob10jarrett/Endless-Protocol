my_speed = 2
player_direction = 0
hsp = 0;
vsp = 0;

tilemap = layer_tilemap_get_id("Collision");

alarmtime_0 = 80
alarmtime_1 = 120

alarm[0] = alarmtime_0
alarm[1] = alarmtime_1

//Dash
dashSpeed = 40 * my_speed;  
dashLength = room_speed; 
dashCooldown = 360;  
dashTimer = 360; 
isDashing = false;
