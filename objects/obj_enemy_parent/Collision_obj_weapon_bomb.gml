//Set the position the bomb lands
var explosion_x = x
var explosion_y = y
var explosion_radius = 100 //Set value for blast radius

with (obj_enemy_parent) 
{
    //Find distance between where bomb lands and where the enemy is 
    var distance = point_distance(x, y, explosion_x, explosion_y);

	if (distance <= explosion_radius) //If distance is within explosion radius, subtract enemyHp and destroy bomb
	{
		enemyHp -= obj_weapon_bomb.damage

		if (enemyHp <= 0) //If enemyHp is <= 0, destroy enemy 
		{
			instance_destroy()
		}
	}
}
instance_destroy(other)