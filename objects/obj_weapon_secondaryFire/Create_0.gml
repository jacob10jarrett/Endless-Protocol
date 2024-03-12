x = obj_weapon_secondary.x
y = obj_weapon_secondary.y + 5

bounced = false
audio_play_sound(snd_bullet,1,false)

image_yscale = image_xscale;

image_angle = obj_weapon_secondary.image_angle
if (obj_player.image_xscale < 0)
{
	hspeed = -lengthdir_x(bullet_speed,image_angle)
	vspeed = -lengthdir_y(bullet_speed,image_angle)

}
else if (obj_player.image_xscale > 0)
{
	hspeed = lengthdir_x(bullet_speed,image_angle)
	vspeed = lengthdir_y(bullet_speed,image_angle)
}
