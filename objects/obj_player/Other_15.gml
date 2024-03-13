
if (instance_exists(obj_upgrade))
{
	exit;
}

if (instance_number(obj_weapon_bug) < global.bugCount) 
{
    for (var i = 0; i < global.bugCount; i++) {
		if(instance_number(obj_weapon_bug) < global.bugCount)
		{
			instance_create_layer(x, y, "Instances_2", obj_weapon_bug);
		}
    }
}