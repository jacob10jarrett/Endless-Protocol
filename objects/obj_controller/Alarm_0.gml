alarm[0] = alarmTime;

with(obj_enemy1)
{
    if (instance_exists(obj_upgrade))
    {
        speed = 0;
    }
    else
    {
        direction = point_direction(x, y, obj_player.x, obj_player.y);
        speed = walkSpeed;

        if (obj_player.x > x)
        { 
            image_xscale = 1;
        }
        else 
        {
            image_xscale = -1;
        }
    }
}


