
if (instance_exists(obj_upgrade))
{
	exit;
}

if (canArrow == true && instance_number(obj_weapon_arrow) < global.arrowCount) {
    for (var i = 0; i < global.arrowCount; i++) {
        instance_create_layer(x, y, "Instances", obj_weapon_arrow);
    }
}