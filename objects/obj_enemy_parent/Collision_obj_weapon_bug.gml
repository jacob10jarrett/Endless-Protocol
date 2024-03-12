enemyHp -= global.bug_damage


if (enemyHp <= 0) {
    instance_destroy();
}
