audio_play_sound(snd_cardSelect,2,false)
obj_cardParent.gravity = 3
gravity = -3

obj_player.canDash = true
obj_player.dashCooldown -= 50
obj_player.dashSpeed += 10

var playerInstance = instance_find(obj_player, 0);
if (instance_exists(playerInstance)) {
    playerInstance.dashUnlocked = true; // Unlock dash ability
    playerInstance.canDash = true; // Enable dashing immediately if needed
}