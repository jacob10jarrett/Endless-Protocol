instance_create_layer(x, y, "Bodies_Effects", obj_deadEnemy1);
if (dropXP && hasMoved) { // Check the hasMoved flag before dropping XP
    var xp = instance_create_layer(x, y, "Instances", obj_exp1);
}