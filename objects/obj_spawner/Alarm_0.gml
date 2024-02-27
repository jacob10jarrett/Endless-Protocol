/// @description Spawn enemy

var _vx = camera_get_view_x(view_camera[0]);
var _vy = camera_get_view_y(view_camera[0]);
var _vw = camera_get_view_width(view_camera[0]);
var _vh = camera_get_view_height(view_camera[0]);
instance_activate_region(_vx - 10, _vy - 10, _vw + 10, _vh + 20, 1);


instance_activate_object(obj_stopwatch);
instance_activate_object(obj_dashUI);
instance_activate_object(obj_game);


var dir = irandom_range(0, 360);
var XX = obj_player.x + lengthdir_x(1000, dir );
var YY = obj_player.y + lengthdir_y(1000, dir );

//check if spawn coordinates are OUT OF BOUNDS
if ( !position_meeting(XX,YY, [obj_bounds, obj_boundsCorner]) )
{
instance_create_layer(XX, YY, "Instances", enemyType);
}

//set direction and walkspeed
with(obj_enemy1)
{

direction = point_direction(x, y, obj_player.x, obj_player.y);
speed = obj_enemy1.movementSpeed;

//sprite flip
if (obj_player.x > x)
{ 
	image_xscale = 1;
	
}
	else 
	{
	image_xscale = -1;
	}

}

	


alarm[0] = spawnTick;