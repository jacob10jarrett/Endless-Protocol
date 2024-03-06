if (instance_exists(obj_upgrade))
{
	exit;
}

playerExp += other.expValue;
instance_destroy(other);
if (playerExp >= expMax)
{
	playerExp = 0
	expMax = (30 + (playerLevel * 100) - 20)
	playerLevel++
	
	var _vx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2)
	var _vy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2)
	
	
	var upgrade = instance_create_layer(obj_player.x, obj_player.y, "UpgradeCards", obj_upgrade)
	
	var cardOne = instance_create_layer(obj_player.x, obj_player.y, "UpgradeCards", obj_card1)
		
	var cardTwo = instance_create_layer(obj_player.x - 400, obj_player.y, "UpgradeCards", obj_card2)
	
	var cardThree = instance_create_layer(obj_player.x + 400, obj_player.y, "UpgradeCards", obj_card3)
}

