audio_play_sound(snd_exp,0,false)
playerExp += other.expValue;
instance_destroy(other);
if (playerExp >= expMax)
{
	playerExp = 0
	expMax = (30 + (playerLevel * 100) - 20)
	playerLevel++
	audio_play_sound(snd_level,1,false)
	
	var _vx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2)
	var _vy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2)
	
	
	// Generate random indices
	var random_index_one = irandom(ds_list_size(cardArray) - 1);
	var random_index_two = irandom(ds_list_size(cardArray) - 1);
	var random_index_three = irandom(ds_list_size(cardArray) - 1);

	while (random_index_two == random_index_one) 
	{
		random_index_two = irandom(ds_list_size(cardArray) - 1);
	}

	// Ensure that random_index_three is different from random_index_one and random_index_two
	while (random_index_three == random_index_one || random_index_three == random_index_two) 
	{
		random_index_three = irandom(ds_list_size(cardArray) - 1);
	}

	// Retrieve objects from the cardArray using the random indices
	var cardOneObject = ds_list_find_value(cardArray, random_index_one);
	var cardTwoObject = ds_list_find_value(cardArray, random_index_two);
	var cardThreeObject = ds_list_find_value(cardArray, random_index_three);

	// Create instances using the retrieved objects
	instance_create_layer(obj_player.x, obj_player.y, "UpgradeCards", obj_upgrade);
	var cardOne = instance_create_layer(obj_player.x, obj_player.y, "UpgradeCards", cardOneObject);
	var cardTwo = instance_create_layer(obj_player.x - 400, obj_player.y, "UpgradeCards", cardTwoObject);
	var cardThree = instance_create_layer(obj_player.x + 400, obj_player.y, "UpgradeCards", cardThreeObject);
	
	obj_enemy_parent.enemyHp += 5;
	obj_enemy_parent.movementSpeed += .1;
}
