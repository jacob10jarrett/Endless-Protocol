hp -= obj_weapon_bomb.damage;
instance_destroy(other)

if (hp <= 0) {
    instance_destroy();
}

