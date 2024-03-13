audio_play_sound(snd_cardSelect,2,false)
obj_cardParent.gravity = 5
gravity = -5


if(obj_player.alarmtime_2 <= 5)
{
	global.secondary_damage += 1
	global.bullet_speed += 5
}
else
{
	obj_player.alarmtime_2 -= 2
}



