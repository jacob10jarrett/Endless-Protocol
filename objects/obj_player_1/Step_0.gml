var bbox_side;
//Movement
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

hsp = (key_right - key_left) * my_speed;
vsp = (key_down - key_up) * my_speed;

// Collision detection
move_and_collide(hsp * my_speed, vsp * my_speed, obj_Collision)







