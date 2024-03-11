//Player randomly spawns in predetermined locations
var spawnPoints[4];
spawnPoints[0] = [4384, 2400]; 
spawnPoints[1] = [4832, 6048];
spawnPoints[2] = [18912, 4896];
spawnPoints[3] = [15776, 480];

var index = irandom(3);

x = spawnPoints[index][0];
y = spawnPoints[index][1];


maxHealth = 100;  
currentHealth = 100;  

_hsp = 0;
_vsp = 0;

global.playerIsMoving = false; 

mySpeed = 4;
hsp = 0;
vsp = 0;
playerDirection = 1

//Set brief delay before player can move
moveDelay = 1.2 * room_speed;
alarm[3] = moveDelay;
canMove = false;

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
canDash = false

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


cardArray = ds_list_create()
ds_list_add(cardArray, obj_arrowCard)
ds_list_add(cardArray, obj_bladeCard)
ds_list_add(cardArray, obj_bombCard)
ds_list_add(cardArray, obj_dashCard)
ds_list_add(cardArray, obj_movespeedCard)
ds_list_add(cardArray, obj_primaryCard)
ds_list_add(cardArray, obj_secondaryCard)

canBomb = false


