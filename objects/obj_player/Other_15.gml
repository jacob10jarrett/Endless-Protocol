if (instance_exists(obj_upgrade))
{
	exit;
}

if (canBug = true && !instance_exists(obj_weapon_bug))
var bug = instance_create_layer(x,y,"Instances",obj_weapon_bug)
