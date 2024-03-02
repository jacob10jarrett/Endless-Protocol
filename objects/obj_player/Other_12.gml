if (instance_exists(obj_upgrade))
{
	exit;
}

var shootSecondary = instance_create_layer(x,y-15,"Instances",obj_weapon_secondaryFire)