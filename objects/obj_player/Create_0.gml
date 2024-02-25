maxHealth = 100;  
currentHealth = 100;  

_hsp = 0;
_vsp = 0;

global.playerIsMoving = false; 

mySpeed = 4;
hsp = 0;
vsp = 0;
playerDirection = 1

//Weapon fire rate
alarmtime_0 = 20;
alarmtime_1 = 70;

alarm[0] = alarmtime_0;
alarm[1] = alarmtime_1;

//Dash
dashSpeed = mySpeed * 5;
dashCooldown = 360;
dashTimer = 0; 
isDashing = false;
