instance_create_layer(x, y, "Instances", obj_explosion2);

enemyHp -= obj_weapon_blade.damage;
obj_weapon_blade.bladeHp -= 5

if (obj_weapon_blade.bladeHp <= 0)
{
	instance_destroy(other)
}
if (enemyHp <= 0) {
    instance_destroy();
}
