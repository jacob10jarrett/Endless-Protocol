hp -= obj_weapon_primaryFire.damage;
instance_destroy(other)



if (hp <= 0) {
    instance_destroy();
}


