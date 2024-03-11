global.fading = true;
global.fadeAlpha = 0;

audio_stop_all();
alarm[0] = 60; 

if (instance_exists(obj_spaceship1))
{
    instance_destroy(obj_spaceship1);
}