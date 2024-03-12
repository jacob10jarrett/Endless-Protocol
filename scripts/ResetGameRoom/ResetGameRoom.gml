function ResetGameRoom(){

// Reset the Player
with (obj_player) {
    // Reposition to a random spawn point
    var spawnPoints = [[4384, 2400], [4832, 6048], [18912, 4896], [15776, 480]];
    var index = irandom(array_length_1d(spawnPoints) - 1);
    x = spawnPoints[index][0];
    y = spawnPoints[index][1];

    // Reset stats and states
    maxHealth = 100;
    currentHealth = 100;
    _hsp = 0;
    _vsp = 0;
    global.playerIsMoving = false;
    mySpeed = 4;
    hsp = 0;
    vsp = 0;
    playerDirection = 1;
    canMove = false;
    alarm[10] = 1.2 * room_speed; // Reset move delay

    // Reset abilities and cooldowns
    dashSpeed = mySpeed * 5;
    dashCooldown = 360;
    dashTimer = 0;
    isDashing = false;
    canDash = false;

    // Reset experience and level
    playerExp = 0;
    playerLevel = 1;
    expMax = 100;

    // Reset selected card
    selectedCard = noone;

    // Reset acceleration, deceleration, and max speed
    acceleration = 0.5;
    deceleration = 0.5;
    maxSpeed = 5;
}

// Destroy all enemies and reset related enemy states
with (obj_enemy1) {
    instance_destroy();
}
// Add similar blocks for other enemy types if necessary

// Reset Spawners
with (obj_spawner) {
    // Reset spawner variables as needed
    alarm[0] = 30; // Reset initial spawn delay
}
}