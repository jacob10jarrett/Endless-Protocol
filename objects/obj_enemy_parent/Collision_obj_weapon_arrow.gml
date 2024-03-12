
enemyHp -= obj_weapon_arrow.damage;
instance_create_layer(x, y, "Instances", obj_explosion3);



if (enemyHp <= 0) {
    instance_destroy();
}

