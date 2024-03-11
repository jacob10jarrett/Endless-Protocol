instance_create_layer(x, y, "Instances", obj_explosion2);
var damageInstance = instance_create_layer(x, y - 16, "Instances", obj_damageDisplay); // Create the damage display slightly above the enemy
damageInstance.damageAmount = obj_weapon_blade.damage; // Set the damage amount
enemyHp -= obj_weapon_blade.damage;
obj_weapon_blade.bladeHp -= 5

if (obj_weapon_blade.bladeHp <= 0)
{
	obj_player.alarm[3] = obj_player.alarmtime_3
	instance_destroy(other)
}
if (enemyHp <= 0) {
    instance_destroy();
}
