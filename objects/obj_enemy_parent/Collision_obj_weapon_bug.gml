enemyHp -= obj_weapon_bug.damage;


if (enemyHp <= 0) {
    instance_destroy();
}
