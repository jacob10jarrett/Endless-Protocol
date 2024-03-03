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
alarmtime_1 = 360;
alarmtime_2 = 20;

alarm[0] = alarmtime_0;
alarm[1] = alarmtime_1;
alarm[2] = alarmtime_2 +1; //Secondary fire delayed with primary

//Dash
dashSpeed = mySpeed * 5;
dashCooldown = 360;
dashTimer = 0; 
isDashing = false;

globalvar playerExp;
globalvar playerLevel;
globalvar expMax;

playerExp = 0
playerLevel = 1
expMax = 100


globalvar selectedCard;
selectedCard = noone


acceleration = 0.5; 
deceleration = 0.5;
maxSpeed = 5; 

