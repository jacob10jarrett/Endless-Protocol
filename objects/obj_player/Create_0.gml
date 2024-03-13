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

dashUnlocked = false;

_hsp = 0;
_vsp = 0;

global.playerIsMoving = false; 

mySpeed = 4;
hsp = 0;
vsp = 0;
playerDirection = 1

//Set brief delay before player can move
moveDelay = 1.2 * room_speed;
alarm[10] = moveDelay;
canMove = false;

//Weapon fire rate
alarmtime_0 = 21;
alarmtime_1 = 360;
alarmtime_2 = 21;
alarmtime_3 = 300;
alarmtime_4 = 200;
alarmtime_5 = 20;

alarm[0] = alarmtime_0;
alarm[1] = alarmtime_1;
alarm[2] = alarmtime_2 +1; //Secondary fire delayed with primary
alarm[3] = alarmtime_3;
alarm[4] = alarmtime_4;
alarm[5] = alarmtime_5

//Dash
dashSpeed = mySpeed * 5;
dashCooldown = 500;
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
ds_list_add(cardArray, obj_bugCard)
ds_list_add(cardArray, obj_healthCard)

canBomb = false

global.bomb_explosion_radius = 100;
global.primary_damage = 10
global.secondary_damage = 10
global.bullet_speed = 25
global.bug_damage = 0.2
global.bug_speed = 3
global.bugCount = 0
global.arrowCount = 0
global.bladeCount = 0
global.bladeRadius = 20