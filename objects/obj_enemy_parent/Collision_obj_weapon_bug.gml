enemyHp -= global.bug_damage
obj_weapon_bug.image_index = 0

if (enemyHp <= 0) {
    instance_destroy();
}

