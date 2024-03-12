
enemyHp -= obj_weapon_arrow.damage;
instance_create_layer(x, y, "Instances", obj_explosion2);
var damageInstance = instance_create_layer(x, y - 16, "Instances", obj_damageDisplay); // Create the damage display slightly above the enemy
damageInstance.damageAmount = obj_weapon_arrow.damage; // Set the damage amount






if (enemyHp <= 0) {
    instance_destroy();
}

