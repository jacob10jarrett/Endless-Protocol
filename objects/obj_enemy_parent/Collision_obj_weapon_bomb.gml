//Set the position the bomb lands
var explosion_x = x
var explosion_y = y
var explosion_radius = 100 //Set value for blast radius

//Create explosion instance and change the size of explosion based on blast radius value
var explosion_instance = instance_create_layer(x, y, "Instances_1", obj_explosion1)
explosion_instance.image_xscale = explosion_radius / 25;
explosion_instance.image_yscale = explosion_radius / 25;

with (obj_enemy_parent) 
{
    //Find distance between where bomb lands and where the enemy is 

    var distance = point_distance(x, y, explosion_x, explosion_y);

	if (distance <= explosion_radius) //If distance is within explosion radius, subtract enemyHp and destroy bomb
	{
		var damageInstance = instance_create_layer(x, y - 16, "Instances", obj_damageDisplay); // Create the damage display slightly above the enemy
		damageInstance.damageAmount = obj_weapon_bomb.damage; // Set the damage amount
		enemyHp -= obj_weapon_bomb.damage

		if (enemyHp <= 0) //If enemyHp is <= 0, destroy enemy 
		{
			instance_destroy()
		}
	}
}
instance_destroy(other)