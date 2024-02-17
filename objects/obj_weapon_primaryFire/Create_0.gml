bounced = false

image_angle = obj_weapon_primary.image_angle
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


