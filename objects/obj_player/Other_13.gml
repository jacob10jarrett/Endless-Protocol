if (instance_exists(obj_upgrade))
{
	exit;
}

if (canBlade = true && !instance_exists(obj_weapon_blade))
{
	var blade = instance_create_layer(x,y,"Instances",obj_weapon_blade)
}


