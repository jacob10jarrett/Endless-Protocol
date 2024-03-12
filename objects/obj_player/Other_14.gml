if (instance_exists(obj_upgrade))
{
	exit;
}

if (canArrow = true && !instance_exists(obj_weapon_arrow))
var arrow = instance_create_layer(x,y,"Instances",obj_weapon_arrow)
