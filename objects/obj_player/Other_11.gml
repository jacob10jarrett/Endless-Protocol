if (instance_exists(obj_upgrade))
{
	exit;
}


if (canBomb == true)
{
	var bomb = instance_create_layer(x,y,"Instances",obj_weapon_bomb)
	
		bomb.direction = irandom_range(45,135)
		bomb.speed = 4;
		bomb.gravity = 0.1;
		bomb.friction = 0.01;
}

	