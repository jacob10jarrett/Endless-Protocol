draw = true;
if(position_meeting(x,y,obj_bounds)){
	draw = false;
	node_weight = 2000;
	instance_destroy();
}