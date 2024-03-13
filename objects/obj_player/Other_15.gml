
if (instance_exists(obj_upgrade))
{
	exit;
}

if (canBug == true && instance_number(obj_weapon_bug) < global.bugCount) 
{
    for (var i = 0; i < global.bugCount; i++) {
		if(instance_number(obj_weapon_bug) < global.bugCount)
		{
			instance_create_layer(x, y, "Instances", obj_weapon_bug);
		}
    }
}