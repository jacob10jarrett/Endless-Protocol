if (instance_exists(obj_upgrade))
{
	exit;
}

var shoot = instance_create_layer(x,y-10,"Instances",obj_weapon_primaryFire)