if (variable_global_exists("playerIsMoving") && instance_exists(obj_player) && global.playerIsMoving && !instance_exists(obj_upgrade))

{
    x = obj_player.x;
    y = obj_player.y + 50;
    part_emitter_region(particle_system, particle_system_emitter, x, x, y, y, 0, 0);
    part_emitter_burst(particle_system, particle_system_emitter, particle1, 5);
}