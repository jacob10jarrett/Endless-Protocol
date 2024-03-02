// Only execute if the instance wasn't destroyed
if (instance_exists(id)) {
    // Move the spaceship
    x -= distant_speed;

    // Check if the spaceship is off-screen, then destroy it
    if (x + sprite_width < -1000) {
        instance_destroy(); 
    } else {
        // Emit smoke particles to the right of the spaceship
        if (part_system_exists(global.particleSystem)) {
            var smoke_x = x + sprite_get_width(sprite_index)-1250; 
            var smoke_y = y + sprite_get_height(sprite_index)-630;
            part_particles_create(global.particleSystem, smoke_x, smoke_y, global.smokeParticle, 1);
        }
    }
}

