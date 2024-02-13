
//Movement
if keyboard_check(ord("A")) x -= 4
if keyboard_check(ord("D")) x += 4
if keyboard_check(ord("W")) y -= 4
if keyboard_check(ord("S")) y += 4

//Map bounds
x = clamp(x, sprite_width/2, room_width - sprite_width/2)
y = clamp(y, sprite_width/2, room_height - sprite_height/2)





