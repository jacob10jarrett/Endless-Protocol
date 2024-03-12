timesSelected++
obj_cardParent.gravity = 5
gravity = -5
global.bouncing_bullet = true


if(obj_player.alarmtime_2 <= 5)
{
	global.bouncing_bullet = true
}



if(obj_player.alarmtime_2 <= 5)
{
	global.secondary_damage += 1
}
else
{
	obj_player.alarmtime_2 -= 2
}



