timesSelected++
obj_cardParent.gravity = 3
gravity = -3

obj_player.canDash = true

var playerInstance = instance_find(obj_player, 0);
if (instance_exists(playerInstance)) {
    playerInstance.dashUnlocked = true; // Unlock dash ability
    playerInstance.canDash = true; // Enable dashing immediately if needed
}