if (bouncing_bullet and bounced = false)
{
	hspeed = -hspeed
	bounced = true
}
else
{
	instance_destroy()
}