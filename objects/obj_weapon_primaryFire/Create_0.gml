x = obj_weapon_secondary.x
y = obj_weapon_secondary.y + 5
damage = global.primary_damage

bounced = false
audio_play_sound(snd_bullet,1,false)

image_angle = obj_weapon_secondary.image_angle
if (obj_player.image_xscale < 0)
{
	image_xscale = -abs(image_xscale)
	hspeed = -lengthdir_x(global.bullet_speed,image_angle)
	vspeed = -lengthdir_y(global.bullet_speed,image_angle)

}
else if (obj_player.image_xscale > 0)
{
	image_xscale = abs(image_xscale)
	hspeed = lengthdir_x(global.bullet_speed,image_angle)
	vspeed = lengthdir_y(global.bullet_speed,image_angle)
	
}
if (global.paused) return;
