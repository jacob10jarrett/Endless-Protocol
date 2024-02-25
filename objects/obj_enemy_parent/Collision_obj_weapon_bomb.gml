enemyHp -= obj_weapon_bomb.damage;
instance_destroy(other)

if (enemyHp <= 0) {
    instance_destroy();
}

