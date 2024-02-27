if(instance_exists(obj_upgrade))
{
	image_speed = 0
	speed = 0
	exit;
}
image_speed = 1
direction = point_direction(x, y, obj_player.x, obj_player.y);
other.speed = other.movementSpeed;

//sprite flip
if (obj_player.x > x)
{ 
	image_xscale = 1;
	
}
	else 
	{
	image_xscale = -1;
	}

