instance_create_layer(x, y, "Instances", obj_explosion2)
enemyHp -= obj_weapon_secondaryFire.damage;
instance_destroy(other)

if (enemyHp <= 0) {
    instance_destroy();
}


