health -= obj_weapon_bomb.damage;

// Set hit flag
hit = true;

with(other) {
    health -= obj_weapon_bomb.damage;
    hit = true; // Set the hit flag to true
	
		
}
if (health <= 0) {
    instance_destroy();
}

