#macro TILE_SIZE 16

// Calculate the number of tiles in the room
var grid_width = ceil(room_width / TILE_SIZE);
var grid_height = ceil(room_height / TILE_SIZE);

// Initialize or update the motion planning grid
if (is_undefined(global.mp_grid) || global.mp_grid == 0) {
    global.mp_grid = mp_grid_create(0, 0, grid_width, grid_height, TILE_SIZE, TILE_SIZE);
} else {
    mp_grid_clear_all(global.mp_grid);
}

mp_grid_add_instances(global.mp_grid, obj_bounds, false);
mp_grid_add_instances(global.mp_grid, obj_boundsCorner, true);