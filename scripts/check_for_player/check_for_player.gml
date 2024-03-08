// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_for_player(){
	var _dis = distance_to_object(obj_player);
	//move_towards_point(obj_player.x, obj_player.y, 1);
	var _found_player = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, choose(0, 1));
	
	//start path
	if _found_player{
		path_start(path, 2, path_action_stop, false)
	}
}