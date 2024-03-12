timesSelected++
obj_cardParent.gravity = 3
gravity = -3



if(obj_player.alarmtime_0 <= 5)
{
	global.primary_damage += 1
}
else
{
	obj_player.alarmtime_0 -= 3
}

