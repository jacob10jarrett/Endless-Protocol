audio_play_sound(snd_cardSelect,2,false)
obj_cardParent.gravity = 3
gravity = -3

obj_player.canBomb = true

if(obj_player.alarmtime_1 <= 100)
{
	global.bomb_explosion_radius += 15
}
else
obj_player.alarmtime_1 -= 50
global.bomb_explosion_radius += 15




