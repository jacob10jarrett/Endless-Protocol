
if (instance_exists(obj_upgrade))
{
	exit;
}

if (instance_number(obj_weapon_blade) < global.bladeCount) {
    for (var i = 0; i < global.bladeCount; i++) {
        instance_create_layer(x, y, "Instances", obj_weapon_blade);
    }
}