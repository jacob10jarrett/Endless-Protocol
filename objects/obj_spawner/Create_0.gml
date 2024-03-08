alarm[0] = 30;
depth = 550;

var spawnRange = 3000; 
var minDistanceFromPlayer = 1950; // Prevent spawning too close to the player

// Generate a potential spawn position
var dir = irandom_range(0, 360);
var XX = obj_player.x + lengthdir_x(spawnRange, dir);
var YY = obj_player.y + lengthdir_y(spawnRange, dir);

// In the obj_spawner Create event, define the initial and minimum spawn ticks
spawnTickInitial = 120; // Initial spawn tick
spawnTickMin = 30; // Minimum spawn tick after scaling
gameDuration = 20 * 60 * room_speed; // 20 minutes * 60 seconds * room speed
timeElapsed = 0; // Keep track of time elapsed

// In the Step event of obj_spawner, scale the spawnTick based on time elapsed
timeElapsed += 1;
var progress = min(1, timeElapsed / gameDuration);
spawnTick = lerp(spawnTickInitial, spawnTickMin, progress);

// Reset the alarm based on the scaled spawnTick
alarm[0] = spawnTick;