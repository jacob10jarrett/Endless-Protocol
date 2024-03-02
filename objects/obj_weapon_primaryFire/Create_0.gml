x = obj_weapon_primary.x
y = obj_weapon_primary.y + 5




bounced = false
audio_play_sound(snd_bullet,1,false)

image_angle = obj_weapon_primary.image_angle
if (obj_player.image_xscale < 0)
{
	image_xscale = -abs(image_xscale)
	hspeed = -lengthdir_x(bullet_speed,image_angle)
	vspeed = -lengthdir_y(bullet_speed,image_angle)

}
else if (obj_player.image_xscale > 0)
{
	image_xscale = abs(image_xscale)
	hspeed = lengthdir_x(bullet_speed,image_angle)
	vspeed = lengthdir_y(bullet_speed,image_angle)
	
}
